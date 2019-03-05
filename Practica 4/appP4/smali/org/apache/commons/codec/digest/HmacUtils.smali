.class public final Lorg/apache/commons/codec/digest/HmacUtils;
.super Ljava/lang/Object;
.source "HmacUtils.java"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# instance fields
.field private final mac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 889
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljavax/crypto/Mac;)V

    .line 890
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 921
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    .line 922
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    .line 908
    invoke-static {p1, p2}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljavax/crypto/Mac;)V

    .line 909
    return-void
.end method

.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput-object p1, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    .line 896
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-virtual {p1}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    .line 935
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V
    .locals 1
    .param p1, "algorithm"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .param p2, "key"    # [B

    .prologue
    .line 947
    invoke-virtual {p1}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    .line 948
    return-void
.end method

.method public static getHmacMd5([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha1([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha256([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha384([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha512([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Null key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 237
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 238
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    return-object v2

    .line 240
    .end local v1    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 242
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 243
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "algorithm"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .param p1, "key"    # [B

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 644
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 700
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 683
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 758
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 719
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 814
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 797
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 775
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAvailable(Lorg/apache/commons/codec/digest/HmacAlgorithms;)Z
    .locals 2
    .param p0, "name"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;
    .locals 5
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 853
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 854
    new-array v0, v4, [B

    .line 855
    .local v0, "buffer":[B
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 857
    .local v1, "read":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 858
    invoke-virtual {p0, v0, v3, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 859
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 862
    :cond_0
    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "valueToDigest"    # Ljava/lang/String;

    .prologue
    .line 877
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 878
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 879
    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;[B)Ljavax/crypto/Mac;
    .locals 0
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "valueToDigest"    # [B

    .prologue
    .line 831
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 832
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 833
    return-object p0
.end method


# virtual methods
.method public hmac(Ljava/io/File;)[B
    .locals 2
    .param p1, "valueToDigest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1067
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1069
    .local v0, "stream":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1071
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1069
    return-object v1

    .line 1071
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw v1
.end method

.method public hmac(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 1031
    new-array v0, v4, [B

    .line 1034
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1035
    iget-object v2, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v0, v3, v1}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    return-object v2
.end method

.method public hmac(Ljava/lang/String;)[B
    .locals 2
    .param p1, "valueToDigest"    # Ljava/lang/String;

    .prologue
    .line 980
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hmac(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p1, "valueToDigest"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 1003
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public hmac([B)[B
    .locals 1
    .param p1, "valueToDigest"    # [B

    .prologue
    .line 958
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1054
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/lang/String;

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1014
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex([B)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # [B

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
