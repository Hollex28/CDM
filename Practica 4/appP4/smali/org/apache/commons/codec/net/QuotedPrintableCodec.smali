.class public Lorg/apache/commons/codec/net/QuotedPrintableCodec;
.super Ljava/lang/Object;
.source "QuotedPrintableCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/StringEncoder;
.implements Lorg/apache/commons/codec/StringDecoder;


# static fields
.field private static final CR:B = 0xdt

.field private static final ESCAPE_CHAR:B = 0x3dt

.field private static final LF:B = 0xat

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static final SAFE_LENGTH:I = 0x49

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 100
    const/16 v0, 0x21

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 101
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const/16 v0, 0x3e

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 104
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 107
    sget-object v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/nio/charset/Charset;Z)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/IllegalCharsetNameException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/nio/charset/Charset;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/nio/charset/Charset;Z)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Z)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "strict"    # Z

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/nio/charset/Charset;

    .line 150
    iput-boolean p2, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->strict:Z

    .line 151
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "strict"    # Z

    .prologue
    .line 125
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/nio/charset/Charset;Z)V

    .line 126
    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    .line 352
    if-nez p0, :cond_0

    .line 353
    const/4 v6, 0x0

    .line 375
    :goto_0
    return-object v6

    .line 355
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 356
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 357
    aget-byte v0, p0, v3

    .line 358
    .local v0, "b":I
    const/16 v6, 0x3d

    if-ne v0, v6, :cond_3

    .line 361
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    aget-byte v6, p0, v3

    if-ne v6, v7, :cond_2

    .line 356
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 364
    :cond_2
    aget-byte v6, p0, v3

    invoke-static {v6}, Lorg/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v5

    .line 365
    .local v5, "u":I
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    invoke-static {v6}, Lorg/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v4

    .line 366
    .local v4, "l":I
    shl-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v4

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 367
    .end local v4    # "l":I
    .end local v5    # "u":I
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string/jumbo v7, "Invalid quoted-printable encoding"

    invoke-direct {v6, v7, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 370
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    if-eq v0, v7, :cond_1

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    .line 372
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 375
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0
.end method

.method private static encodeByte(IZLjava/io/ByteArrayOutputStream;)I
    .locals 1
    .param p0, "b"    # I
    .param p1, "encode"    # Z
    .param p2, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-static {p0, p2}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)I

    move-result v0

    .line 226
    :goto_0
    return v0

    .line 225
    :cond_0
    invoke-virtual {p2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)I
    .locals 3
    .param p0, "b"    # I
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 183
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    shr-int/lit8 v2, p0, 0x4

    invoke-static {v2}, Lorg/apache/commons/codec/net/Utils;->hexDigit(I)C

    move-result v0

    .line 185
    .local v0, "hex1":C
    invoke-static {p0}, Lorg/apache/commons/codec/net/Utils;->hexDigit(I)C

    move-result v1

    .line 186
    .local v1, "hex2":C
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    const/4 v2, 0x3

    return v2
.end method

.method public static final encodeQuotedPrintable(Ljava/util/BitSet;[B)[B
    .locals 1
    .param p0, "printable"    # Ljava/util/BitSet;
    .param p1, "bytes"    # [B

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeQuotedPrintable(Ljava/util/BitSet;[BZ)[B
    .locals 12
    .param p0, "printable"    # Ljava/util/BitSet;
    .param p1, "bytes"    # [B
    .param p2, "strict"    # Z

    .prologue
    const/16 v11, 0x3d

    const/16 v10, 0xd

    const/16 v9, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 273
    if-nez p1, :cond_0

    .line 274
    const/4 v6, 0x0

    .line 335
    :goto_0
    return-object v6

    .line 276
    :cond_0
    if-nez p0, :cond_1

    .line 277
    sget-object p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 279
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_c

    .line 282
    const/4 v5, 0x1

    .line 285
    .local v5, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, p1

    add-int/lit8 v6, v6, -0x3

    if-ge v4, v6, :cond_6

    .line 286
    invoke-static {v4, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->getUnsignedOctet(I[B)I

    move-result v0

    .line 287
    .local v0, "b":I
    const/16 v6, 0x49

    if-ge v5, v6, :cond_3

    .line 289
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    :goto_2
    invoke-static {v0, v6, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeByte(IZLjava/io/ByteArrayOutputStream;)I

    move-result v6

    add-int/2addr v5, v6

    .line 285
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v6, v8

    .line 289
    goto :goto_2

    .line 292
    :cond_3
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v6, v7

    :goto_4
    invoke-static {v0, v6, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeByte(IZLjava/io/ByteArrayOutputStream;)I

    .line 295
    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 297
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v6, v8

    .line 292
    goto :goto_4

    .line 304
    .end local v0    # "b":I
    :cond_6
    array-length v6, p1

    add-int/lit8 v6, v6, -0x3

    invoke-static {v6, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->getUnsignedOctet(I[B)I

    move-result v0

    .line 305
    .restart local v0    # "b":I
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x44

    if-le v5, v6, :cond_a

    :cond_7
    move v3, v7

    .line 306
    .local v3, "encode":Z
    :goto_5
    invoke-static {v0, v3, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeByte(IZLjava/io/ByteArrayOutputStream;)I

    move-result v6

    add-int/2addr v5, v6

    .line 311
    const/16 v6, 0x47

    if-le v5, v6, :cond_8

    .line 312
    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    :cond_8
    array-length v6, p1

    add-int/lit8 v4, v6, -0x2

    :goto_6
    array-length v6, p1

    if-ge v4, v6, :cond_f

    .line 317
    invoke-static {v4, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->getUnsignedOctet(I[B)I

    move-result v0

    .line 319
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_9

    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    if-le v4, v6, :cond_b

    invoke-static {v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    move v3, v7

    .line 320
    :goto_7
    invoke-static {v0, v3, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeByte(IZLjava/io/ByteArrayOutputStream;)I

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .end local v3    # "encode":Z
    :cond_a
    move v3, v8

    .line 305
    goto :goto_5

    .restart local v3    # "encode":Z
    :cond_b
    move v3, v8

    .line 319
    goto :goto_7

    .line 323
    .end local v0    # "b":I
    .end local v3    # "encode":Z
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_c
    array-length v6, p1

    :goto_8
    if-ge v8, v6, :cond_f

    aget-byte v2, p1, v8

    .line 324
    .local v2, "c":B
    move v0, v2

    .line 325
    .restart local v0    # "b":I
    if-gez v0, :cond_d

    .line 326
    add-int/lit16 v0, v0, 0x100

    .line 328
    :cond_d
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 329
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 331
    :cond_e
    invoke-static {v0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)I

    goto :goto_9

    .line 335
    .end local v0    # "b":I
    .end local v2    # "c":B
    :cond_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto/16 :goto_0
.end method

.method private static getUnsignedOctet(I[B)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "bytes"    # [B

    .prologue
    .line 202
    aget-byte v0, p1, p0

    .line 203
    .local v0, "b":I
    if-gez v0, :cond_0

    .line 204
    add-int/lit16 v0, v0, 0x100

    .line 206
    :cond_0
    return v0
.end method

.method private static isWhitespace(I)Z
    .locals 1
    .param p0, "b"    # I

    .prologue
    .line 237
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 v0, 0x0

    .line 532
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 529
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 530
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode([B)[B

    move-result-object v0

    goto :goto_0

    .line 531
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 532
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be quoted-printable decoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 506
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 503
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 504
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    goto :goto_0

    .line 505
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 506
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be quoted-printable encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 599
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 391
    sget-object v0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    iget-boolean v1, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->strict:Z

    invoke-static {v0, p1, v1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
