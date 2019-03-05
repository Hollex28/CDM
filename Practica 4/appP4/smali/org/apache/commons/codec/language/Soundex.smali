.class public Lorg/apache/commons/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field public static final SILENT_MARKER:C = '-'

.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

.field public static final US_ENGLISH_GENEALOGY:Lorg/apache/commons/codec/language/Soundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"

.field public static final US_ENGLISH_SIMPLIFIED:Lorg/apache/commons/codec/language/Soundex;


# instance fields
.field private maxLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final soundexMapping:[C

.field private final specialCaseHW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const-string/jumbo v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    .line 79
    new-instance v0, Lorg/apache/commons/codec/language/Soundex;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/Soundex;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

    .line 92
    new-instance v0, Lorg/apache/commons/codec/language/Soundex;

    const-string/jumbo v1, "01230120022455012623010202"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/codec/language/Soundex;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_SIMPLIFIED:Lorg/apache/commons/codec/language/Soundex;

    .line 107
    new-instance v0, Lorg/apache/commons/codec/language/Soundex;

    const-string/jumbo v1, "-123-12--22455-12623-1-2-2"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/Soundex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_GENEALOGY:Lorg/apache/commons/codec/language/Soundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 140
    sget-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mapping"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 183
    iget-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Soundex;->hasMarker([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 184
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "mapping"    # Ljava/lang/String;
    .param p2, "specialCaseHW"    # Z

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 197
    iput-boolean p2, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 198
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .param p1, "mapping"    # [C

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 157
    array-length v1, p1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 158
    iget-object v1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/Soundex;->hasMarker([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    .line 160
    return-void
.end method

.method private hasMarker([C)Z
    .locals 5
    .param p1, "mapping"    # [C

    .prologue
    const/4 v1, 0x0

    .line 163
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, p1, v2

    .line 164
    .local v0, "ch":C
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    .line 165
    const/4 v1, 0x1

    .line 168
    .end local v0    # "ch":C
    :cond_0
    return v1

    .line 163
    .restart local v0    # "ch":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private map(C)C
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 279
    add-int/lit8 v0, p1, -0x41

    .line 280
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The character is not mapped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    aget-char v1, v1, v0

    return v1
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/SoundexUtils;->difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 238
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string/jumbo v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    iget v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    iput p1, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    .line 296
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    const/4 v8, 0x0

    .line 334
    :goto_0
    return-object v8

    .line 311
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    move-object v8, p1

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    const/4 v8, 0x4

    new-array v7, v8, [C

    fill-array-data v7, :array_0

    .line 316
    .local v7, "out":[C
    const/4 v1, 0x0

    .line 317
    .local v1, "count":I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 318
    .local v4, "first":C
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-char v4, v7, v1

    .line 319
    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    move-result v6

    .line 320
    .local v6, "lastDigit":C
    const/4 v5, 0x1

    .local v5, "i":I
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_5

    array-length v8, v7

    if-ge v1, v8, :cond_5

    .line 321
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 322
    .local v0, "ch":C
    iget-boolean v8, p0, Lorg/apache/commons/codec/language/Soundex;->specialCaseHW:Z

    if-eqz v8, :cond_3

    const/16 v8, 0x48

    if-eq v0, v8, :cond_2

    const/16 v8, 0x57

    if-ne v0, v8, :cond_3

    .line 320
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 325
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    move-result v3

    .line 326
    .local v3, "digit":C
    const/16 v8, 0x2d

    if-eq v3, v8, :cond_2

    .line 329
    const/16 v8, 0x30

    if-eq v3, v8, :cond_4

    if-eq v3, v6, :cond_4

    .line 330
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    aput-char v3, v7, v1

    move v1, v2

    .line 332
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_4
    move v6, v3

    goto :goto_2

    .line 334
    .end local v0    # "ch":C
    .end local v3    # "digit":C
    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 315
    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
