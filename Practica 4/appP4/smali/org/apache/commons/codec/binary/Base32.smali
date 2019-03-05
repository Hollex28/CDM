.class public Lorg/apache/commons/codec/binary/Base32;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "Base32.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final HEX_DECODE_TABLE:[B

.field private static final HEX_ENCODE_TABLE:[B

.field private static final MASK_5BITS:I = 0x1f


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    .line 67
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    .line 84
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    .line 95
    const/16 v0, 0x77

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    .line 112
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    return-void

    .line 60
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 67
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data

    .line 84
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 95
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
    .end array-data

    .line 112
    :array_4
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .param p1, "pad"    # B

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/codec/binary/Base32;-><init>(ZB)V

    .line 177
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 214
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[B)V

    .line 215
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 236
    const/4 v0, 0x0

    const/16 v1, 0x3d

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 237
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "useHex"    # Z

    .prologue
    .line 261
    const/16 v0, 0x3d

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 262
    return-void
.end method

.method public constructor <init>(I[BZB)V
    .locals 8
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "useHex"    # Z
    .param p4, "pad"    # B

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 287
    const/4 v1, 0x5

    if-nez p2, :cond_0

    move v4, v7

    :goto_0
    move-object v0, p0

    move v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    .line 289
    if-eqz p3, :cond_1

    .line 290
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 291
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    .line 296
    :goto_1
    if-lez p1, :cond_5

    .line 297
    if-nez p2, :cond_2

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lineLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > 0, but lineSeparator is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    array-length v4, p2

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 294
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/binary/Base32;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "sep":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lineSeparator must not contain Base32 characters: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    .end local v6    # "sep":Ljava/lang/String;
    :cond_3
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 306
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    .line 307
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v1, p2

    invoke-static {p2, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    :goto_2
    iget v0, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    .line 314
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/Base32;->isInAlphabet(B)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p4}, Lorg/apache/commons/codec/binary/Base32;->isWhiteSpace(B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pad must not be in alphabet or whitespace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_5
    iput v2, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    goto :goto_2

    .line 317
    :cond_6
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "useHex"    # Z

    .prologue
    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3d

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 188
    return-void
.end method

.method public constructor <init>(ZB)V
    .locals 2
    .param p1, "useHex"    # Z
    .param p2, "pad"    # B

    .prologue
    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZB)V

    .line 200
    return-void
.end method


# virtual methods
.method decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 345
    iget-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    if-gez p3, :cond_2

    .line 349
    const/4 v5, 0x1

    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 351
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_1
    if-ge v2, p3, :cond_5

    .line 352
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 353
    .local v0, "b":B
    iget-byte v5, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    if-ne v0, v5, :cond_3

    .line 355
    const/4 v5, 0x1

    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 379
    .end local v0    # "b":B
    :goto_2
    iget-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_0

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 380
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 383
    .local v1, "buffer":[B
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 416
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 358
    .end local v1    # "buffer":[B
    .restart local v0    # "b":B
    :cond_3
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 359
    .restart local v1    # "buffer":[B
    if-ltz v0, :cond_4

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 360
    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    aget-byte v4, v5, v0

    .line 361
    .local v4, "result":I
    if-ltz v4, :cond_4

    .line 362
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x8

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 364
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x5

    shl-long/2addr v6, v5

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 365
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_4

    .line 366
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 367
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 368
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 369
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 370
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 351
    .end local v4    # "result":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_1

    .line 385
    .end local v0    # "b":B
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_0
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x2

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 388
    :pswitch_1
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x7

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 391
    :pswitch_2
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x4

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 392
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 393
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 396
    :pswitch_3
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x1

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 397
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 398
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 399
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 402
    :pswitch_4
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x6

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 403
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 404
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 405
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 408
    :pswitch_5
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x3

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 409
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 410
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 411
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 412
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .end local v1    # "buffer":[B
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_5
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_2

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 440
    iget-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    if-gez p3, :cond_3

    .line 446
    const/4 v5, 0x1

    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 447
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_2

    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-eqz v5, :cond_0

    .line 450
    :cond_2
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 451
    .local v1, "buffer":[B
    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 452
    .local v4, "savedPos":I
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 496
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 456
    :pswitch_0
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x3

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 457
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x2

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 458
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 459
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 460
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 461
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 462
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 463
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 498
    :goto_1
    :pswitch_1
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 500
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v5, :cond_0

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v5, :cond_0

    .line 501
    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    const/4 v6, 0x0

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v8, v8

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    .line 466
    :pswitch_2
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xb

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 467
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x6

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 468
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x1

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 469
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x4

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 470
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 471
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 472
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 473
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    goto/16 :goto_1

    .line 476
    :pswitch_3
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x13

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 477
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xe

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 478
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x9

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 479
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x4

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 480
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x1

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 481
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 482
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    .line 483
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    goto/16 :goto_1

    .line 486
    :pswitch_4
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x1b

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 487
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x16

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 488
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x11

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 489
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xc

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 490
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x7

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 491
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x2

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 492
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x3

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 493
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v6, p0, Lorg/apache/commons/codec/binary/Base32;->pad:B

    aput-byte v6, v1, v5

    goto/16 :goto_1

    .line 505
    .end local v1    # "buffer":[B
    .end local v4    # "savedPos":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_2
    if-ge v2, p3, :cond_6

    .line 506
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 507
    .restart local v1    # "buffer":[B
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x5

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 508
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 509
    .local v0, "b":I
    if-gez v0, :cond_4

    .line 510
    add-int/lit16 v0, v0, 0x100

    .line 512
    :cond_4
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v5, 0x8

    shl-long/2addr v6, v5

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 513
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_5

    .line 514
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x23

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 515
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x1e

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 516
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x19

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 517
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x14

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 518
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xf

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 519
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xa

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 520
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x5

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 521
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 522
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v5, v5, 0x8

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 523
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v5, :cond_5

    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v5, v6, :cond_5

    .line 524
    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    const/4 v6, 0x0

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v8, v8

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 526
    const/4 v5, 0x0

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 505
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    :cond_6
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 542
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
