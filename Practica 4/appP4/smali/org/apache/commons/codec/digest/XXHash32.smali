.class public Lorg/apache/commons/codec/digest/XXHash32;
.super Ljava/lang/Object;
.source "XXHash32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final BUF_SIZE:I = 0x10

.field private static final PRIME1:I = -0x61c8864f

.field private static final PRIME2:I = -0x7a143589

.field private static final PRIME3:I = -0x3d4d51c3

.field private static final PRIME4:I = 0x27d4eb2f

.field private static final PRIME5:I = 0x165667b1

.field private static final ROTATE_BITS:I = 0xd


# instance fields
.field private final buffer:[B

.field private final oneByte:[B

.field private pos:I

.field private final seed:I

.field private final state:[I

.field private totalLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/XXHash32;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "seed"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->oneByte:[B

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    .line 67
    iput p1, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/XXHash32;->initializeState()V

    .line 69
    return-void
.end method

.method private static fromLittleEndian([BII)J
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .prologue
    .line 189
    const/16 v1, 0x8

    if-le p2, v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "can\'t read more than eight bytes into a long value"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    const-wide/16 v2, 0x0

    .line 193
    .local v2, "l":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 194
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    return-wide v2
.end method

.method private static getInt([BI)I
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "idx"    # I

    .prologue
    .line 150
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/XXHash32;->fromLittleEndian([BII)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private initializeState()V
    .locals 5

    .prologue
    const v4, -0x61c8864f

    const v3, -0x7a143589

    .line 154
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 155
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 156
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    aput v2, v0, v1

    .line 157
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    sub-int/2addr v2, v4

    aput v2, v0, v1

    .line 158
    return-void
.end method

.method private process([BI)V
    .locals 11
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xd

    const v7, -0x61c8864f

    const v6, -0x7a143589

    .line 162
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v0, v4, v9

    .line 163
    .local v0, "s0":I
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v1, v4, v10

    .line 164
    .local v1, "s1":I
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 165
    .local v2, "s2":I
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v5, 0x3

    aget v3, v4, v5

    .line 167
    .local v3, "s3":I
    invoke-static {p1, p2}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v4

    mul-int/2addr v4, v6

    add-int/2addr v4, v0

    invoke-static {v4, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    mul-int v0, v4, v7

    .line 168
    add-int/lit8 v4, p2, 0x4

    invoke-static {p1, v4}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v4

    mul-int/2addr v4, v6

    add-int/2addr v4, v1

    invoke-static {v4, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    mul-int v1, v4, v7

    .line 169
    add-int/lit8 v4, p2, 0x8

    invoke-static {p1, v4}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v4

    mul-int/2addr v4, v6

    add-int/2addr v4, v2

    invoke-static {v4, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    mul-int v2, v4, v7

    .line 170
    add-int/lit8 v4, p2, 0xc

    invoke-static {p1, v4}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v4

    mul-int/2addr v4, v6

    add-int/2addr v4, v3

    invoke-static {v4, v8}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    mul-int v3, v4, v7

    .line 172
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aput v0, v4, v9

    .line 173
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aput v1, v4, v10

    .line 174
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v5, 0x2

    aput v2, v4, v5

    .line 175
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v5, 0x3

    aput v3, v4, v5

    .line 177
    iput v9, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    .line 178
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 10

    .prologue
    const v9, 0x165667b1

    const/4 v8, 0x2

    const/4 v6, 0x1

    const v7, -0x3d4d51c3

    .line 121
    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_0

    .line 122
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 123
    invoke-static {v4, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v5, v5, v6

    const/4 v6, 0x7

    .line 124
    invoke-static {v5, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v5, v5, v8

    const/16 v6, 0xc

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0x12

    .line 126
    invoke-static {v5, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    add-int v0, v4, v5

    .line 130
    .local v0, "hash":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    add-int/2addr v0, v4

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "idx":I
    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    add-int/lit8 v3, v4, -0x4

    .line 134
    .local v3, "limit":I
    :goto_1
    if-gt v1, v3, :cond_1

    .line 135
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    invoke-static {v4, v1}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v4

    mul-int/2addr v4, v7

    add-int/2addr v4, v0

    const/16 v5, 0x11

    invoke-static {v4, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    const v5, 0x27d4eb2f

    mul-int v0, v4, v5

    .line 134
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 128
    .end local v0    # "hash":I
    .end local v1    # "idx":I
    .end local v3    # "limit":I
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v4, v4, v8

    add-int v0, v4, v9

    .restart local v0    # "hash":I
    goto :goto_0

    .line 137
    .restart local v1    # "idx":I
    .restart local v3    # "limit":I
    :cond_1
    :goto_2
    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    if-ge v1, v4, :cond_2

    .line 138
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v9

    add-int/2addr v4, v0

    const/16 v5, 0xb

    invoke-static {v4, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    const v5, -0x61c8864f

    mul-int v0, v4, v5

    move v1, v2

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    goto :goto_2

    .line 141
    :cond_2
    ushr-int/lit8 v4, v0, 0xf

    xor-int/2addr v0, v4

    .line 142
    const v4, -0x7a143589

    mul-int/2addr v0, v4

    .line 143
    ushr-int/lit8 v4, v0, 0xd

    xor-int/2addr v0, v4

    .line 144
    mul-int/2addr v0, v7

    .line 145
    ushr-int/lit8 v4, v0, 0x10

    xor-int/2addr v0, v4

    .line 146
    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    return-wide v4
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/XXHash32;->initializeState()V

    .line 74
    iput v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    .line 75
    iput v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    .line 76
    return-void
.end method

.method public update(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 81
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/codec/digest/XXHash32;->update([BII)V

    .line 82
    return-void
.end method

.method public update([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 86
    if-gtz p3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    .line 91
    add-int v0, p2, p3

    .line 93
    .local v0, "end":I
    iget v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    add-int/2addr v3, p3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    .line 94
    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    goto :goto_0

    .line 99
    :cond_2
    iget v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    if-lez v3, :cond_3

    .line 100
    iget v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    rsub-int/lit8 v2, v3, 0x10

    .line 101
    .local v2, "size":I
    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    invoke-direct {p0, v3, v5}, Lorg/apache/commons/codec/digest/XXHash32;->process([BI)V

    .line 103
    add-int/2addr p2, v2

    .line 106
    .end local v2    # "size":I
    :cond_3
    add-int/lit8 v1, v0, -0x10

    .line 107
    .local v1, "limit":I
    :goto_1
    if-gt p2, v1, :cond_4

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codec/digest/XXHash32;->process([BI)V

    .line 109
    add-int/lit8 p2, p2, 0x10

    goto :goto_1

    .line 112
    :cond_4
    if-ge p2, v0, :cond_0

    .line 113
    sub-int v3, v0, p2

    iput v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    .line 114
    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
