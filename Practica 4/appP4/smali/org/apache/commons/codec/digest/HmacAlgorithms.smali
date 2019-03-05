.class public final enum Lorg/apache/commons/codec/digest/HmacAlgorithms;
.super Ljava/lang/Enum;
.source "HmacAlgorithms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/codec/digest/HmacAlgorithms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_224:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string/jumbo v1, "HMAC_MD5"

    const-string/jumbo v2, "HmacMD5"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 56
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string/jumbo v1, "HMAC_SHA_1"

    const-string/jumbo v2, "HmacSHA1"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 65
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string/jumbo v1, "HMAC_SHA_224"

    const-string/jumbo v2, "HmacSHA224"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_224:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 73
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string/jumbo v1, "HMAC_SHA_256"

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 81
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string/jumbo v1, "HMAC_SHA_384"

    const-string/jumbo v2, "HmacSHA384"

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 89
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string/jumbo v1, "HMAC_SHA_512"

    const/4 v2, 0x5

    const-string/jumbo v3, "HmacSHA512"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/commons/codec/digest/HmacAlgorithms;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_224:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->name:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-virtual {v0}, [Lorg/apache/commons/codec/digest/HmacAlgorithms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->name:Ljava/lang/String;

    return-object v0
.end method
