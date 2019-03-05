.class public final Lcom/htbridge/pivaa/handlers/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptAES_ECB_PKCS5Padding(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "encryptedBase64"    # Ljava/lang/String;

    .prologue
    .line 82
    const/16 v9, 0x10

    :try_start_0
    new-array v0, v9, [B

    fill-array-data v0, :array_0

    .line 83
    .local v0, "IV":[B
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 85
    .local v5, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v9, 0x10

    new-array v6, v9, [B

    fill-array-data v6, :array_1

    .line 88
    .local v6, "key":[B
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v9, "AES"

    invoke-direct {v8, v6, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    .local v8, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v9, "AES/ECB/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 91
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v2, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 93
    new-instance v1, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v1}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    .line 94
    .local v1, "b64":Lorg/apache/commons/codec/binary/Base64;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 95
    .local v3, "encryptedBase64Bytes":[B
    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 97
    .local v7, "original":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "IV":[B
    .end local v1    # "b64":Lorg/apache/commons/codec/binary/Base64;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "encryptedBase64Bytes":[B
    .end local v5    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v6    # "key":[B
    .end local v7    # "original":[B
    .end local v8    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v9

    .line 98
    :catch_0
    move-exception v4

    .line 99
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v9, 0x0

    goto :goto_0

    .line 82
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 85
    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method public static encryptAES_CBC_PKCS5Padding(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    const/16 v8, 0x10

    :try_start_0
    new-array v0, v8, [B

    fill-array-data v0, :array_0

    .line 117
    .local v0, "IV":[B
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 119
    .local v5, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v8, 0x10

    new-array v6, v8, [B

    fill-array-data v6, :array_1

    .line 122
    .local v6, "key":[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v8, "AES"

    invoke-direct {v7, v6, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 124
    .local v7, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 125
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 129
    .local v3, "encrypted":[B
    new-instance v1, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v1}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    .line 130
    .local v1, "b64":Lorg/apache/commons/codec/binary/Base64;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "encrypted string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    new-instance v8, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "IV":[B
    .end local v1    # "b64":Lorg/apache/commons/codec/binary/Base64;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "encrypted":[B
    .end local v5    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v6    # "key":[B
    .end local v7    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v8

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const-string/jumbo v8, ""

    goto :goto_0

    .line 114
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 119
    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method public static encryptAES_ECB_PKCS5Padding(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    const/16 v6, 0x10

    :try_start_0
    new-array v4, v6, [B

    fill-array-data v4, :array_0

    .line 57
    .local v4, "key":[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "AES"

    invoke-direct {v5, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    .local v5, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v6, "AES/ECB/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 60
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 64
    .local v2, "encrypted":[B
    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    .line 65
    .local v0, "b64":Lorg/apache/commons/codec/binary/Base64;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "encrypted string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    new-instance v6, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "b64":Lorg/apache/commons/codec/binary/Base64;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encrypted":[B
    .end local v4    # "key":[B
    .end local v5    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v6

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const-string/jumbo v6, ""

    goto :goto_0

    .line 54
    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string/jumbo v2, ""

    .line 21
    .local v2, "hashedOutput":Ljava/lang/String;
    const/4 v0, 0x0

    .line 24
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 28
    .local v3, "messageDigest":[B
    const-string/jumbo v4, "%032X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 33
    .end local v3    # "messageDigest":[B
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static rng()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 42
    .local v1, "rnd":Ljava/util/Random;
    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 44
    .local v0, "n":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
