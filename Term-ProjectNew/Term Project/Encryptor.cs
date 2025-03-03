using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Term_Project
{
        public class Encryptor
        {
            private static Byte[] key = { 250, 101, 18, 76, 45, 135, 207, 118, 4, 171, 3, 168, 202, 241, 37, 199 };
            private static Byte[] vector = { 146, 64, 191, 111, 23, 3, 113, 119, 231, 121, 252, 112, 79, 32, 114, 156 };

            public Encryptor()
            {
                //TODO
            }

            public static string Encrypt(string input)
            {
                UTF8Encoding encoder = new UTF8Encoding();      // used to convert bytes to characters, and back

                Byte[] textBytes;
                textBytes = encoder.GetBytes(input);

                RijndaelManaged rmEncryption = new RijndaelManaged();
                MemoryStream myMemoryStream = new MemoryStream();
                CryptoStream myEncryptionStream = new CryptoStream(myMemoryStream, rmEncryption.CreateEncryptor(key, vector), CryptoStreamMode.Write);

                myEncryptionStream.Write(textBytes, 0, textBytes.Length);
                myEncryptionStream.FlushFinalBlock();

                myMemoryStream.Position = 0;
                Byte[] encryptedBytes = new Byte[myMemoryStream.Length];
                myMemoryStream.Read(encryptedBytes, 0, encryptedBytes.Length);

                myEncryptionStream.Close();
                myMemoryStream.Close();

                return Convert.ToBase64String(encryptedBytes);
            }

            public static string Decrypt(string input)
            {
                Byte[] encryptedBytes = Convert.FromBase64String(input);
                Byte[] textBytes;
                UTF8Encoding encoder = new UTF8Encoding();

                RijndaelManaged rmEncryption = new RijndaelManaged();
                MemoryStream myMemoryStream = new MemoryStream();
                CryptoStream myDecryptionStream = new CryptoStream(myMemoryStream, rmEncryption.CreateDecryptor(key, vector), CryptoStreamMode.Write);

                myDecryptionStream.Write(encryptedBytes, 0, encryptedBytes.Length);
                myDecryptionStream.FlushFinalBlock();

                myMemoryStream.Position = 0;
                textBytes = new Byte[myMemoryStream.Length];
                myMemoryStream.Read(textBytes, 0, textBytes.Length);

                myDecryptionStream.Close();
                myMemoryStream.Close();

                return encoder.GetString(textBytes);
            }
        }
    }
