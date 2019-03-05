.class public Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;
.super Ljava/lang/Object;
.source "MatchRatingApproachEncoder.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final DOUBLE_CONSONANT:[Ljava/lang/String;

.field private static final ELEVEN:I = 0xb

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final FIVE:I = 0x5

.field private static final FOUR:I = 0x4

.field private static final ONE:I = 0x1

.field private static final PLAIN_ASCII:Ljava/lang/String; = "AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu"

.field private static final SEVEN:I = 0x7

.field private static final SIX:I = 0x6

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final THREE:I = 0x3

.field private static final TWELVE:I = 0xc

.field private static final TWO:I = 0x2

.field private static final UNICODE:Ljava/lang/String; = "\u00c0\u00e0\u00c8\u00e8\u00cc\u00ec\u00d2\u00f2\u00d9\u00f9\u00c1\u00e1\u00c9\u00e9\u00cd\u00ed\u00d3\u00f3\u00da\u00fa\u00dd\u00fd\u00c2\u00e2\u00ca\u00ea\u00ce\u00ee\u00d4\u00f4\u00db\u00fb\u0176\u0177\u00c3\u00e3\u00d5\u00f5\u00d1\u00f1\u00c4\u00e4\u00cb\u00eb\u00cf\u00ef\u00d6\u00f6\u00dc\u00fc\u0178\u00ff\u00c5\u00e5\u00c7\u00e7\u0150\u0151\u0170\u0171"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "CC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "DD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "FF"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "GG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "HH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "JJ"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "KK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "LL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "MM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "NN"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "PP"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "QQ"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "RR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "VV"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "WW"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "XX"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "YY"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "ZZ"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->DOUBLE_CONSONANT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 84
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "upperName":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v4, "\\-"

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string/jumbo v5, "[&]"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "\\\'"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "\\."

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "[\\,]"

    aput-object v5, v0, v4

    .line 87
    .local v0, "charsToTrim":[Ljava/lang/String;
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 88
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeAccents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "\\s+"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    return-object v2
.end method

.method public final encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 110
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string/jumbo v1, "Parameter supplied to Match Rating Approach encoder is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, " "

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 128
    :cond_0
    const-string/jumbo v0, ""

    .line 144
    :goto_0
    return-object v0

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeVowels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 144
    goto :goto_0
.end method

.method getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 162
    .local v2, "nameLength":I
    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 163
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "firstThree":Ljava/lang/String;
    add-int/lit8 v3, v2, -0x3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "lastThree":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    .end local v0    # "firstThree":Ljava/lang/String;
    .end local v1    # "lastThree":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method getMinRating(I)I
    .locals 2
    .param p1, "sumLength"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "minRating":I
    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    .line 187
    const/4 v0, 0x5

    .line 198
    :goto_0
    return v0

    .line 188
    :cond_0
    const/4 v1, 0x7

    if-gt p1, v1, :cond_1

    .line 189
    const/4 v0, 0x4

    goto :goto_0

    .line 190
    :cond_1
    const/16 v1, 0xb

    if-gt p1, v1, :cond_2

    .line 191
    const/4 v0, 0x3

    goto :goto_0

    .line 192
    :cond_2
    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 193
    const/4 v0, 0x2

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEncodeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, " "

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v4

    .line 215
    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, " "

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v3

    .line 220
    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeVowels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeVowels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getFirst3Last3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 250
    .local v2, "sumLength":I
    const/4 v1, 0x0

    .line 251
    .local v1, "minRating":I
    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->getMinRating(I)I

    move-result v1

    .line 255
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->leftToRightThenRightToLeftProcessing(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "count":I
    if-lt v0, v1, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method isVowel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string/jumbo v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "O"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "I"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "U"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method leftToRightThenRightToLeftProcessing(Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 295
    .local v2, "name1Char":[C
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 297
    .local v6, "name2Char":[C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 298
    .local v5, "name1Size":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    .line 300
    .local v9, "name2Size":I
    const-string/jumbo v4, ""

    .line 301
    .local v4, "name1LtRStart":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 303
    .local v3, "name1LtREnd":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 304
    .local v8, "name2RtLStart":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 306
    .local v7, "name2RtLEnd":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v12, v2

    if-ge v1, v12, :cond_0

    .line 307
    if-le v1, v9, :cond_1

    .line 331
    :cond_0
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v13, "\\s+"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, "strA":Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v13, "\\s+"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 335
    .local v11, "strB":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_4

    .line 336
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    rsub-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 338
    :goto_1
    return v12

    .line 311
    .end local v10    # "strA":Ljava/lang/String;
    .end local v11    # "strB":Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 312
    sub-int v12, v5, v1

    sub-int v13, v5, v1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 314
    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 315
    sub-int v12, v9, v1

    sub-int v13, v9, v1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 319
    const/16 v12, 0x20

    aput-char v12, v2, v1

    .line 320
    const/16 v12, 0x20

    aput-char v12, v6, v1

    .line 324
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 325
    sub-int v12, v5, v1

    const/16 v13, 0x20

    aput-char v13, v2, v12

    .line 326
    sub-int v12, v9, v1

    const/16 v13, 0x20

    aput-char v13, v6, v12

    .line 306
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 338
    .restart local v10    # "strA":Ljava/lang/String;
    .restart local v11    # "strB":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    rsub-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    goto :goto_1
.end method

.method removeAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "accentedWord"    # Ljava/lang/String;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v5, 0x0

    .line 367
    :goto_0
    return-object v5

    .line 354
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 357
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 358
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 359
    .local v0, "c":C
    const-string/jumbo v5, "\u00c0\u00e0\u00c8\u00e8\u00cc\u00ec\u00d2\u00f2\u00d9\u00f9\u00c1\u00e1\u00c9\u00e9\u00cd\u00ed\u00d3\u00f3\u00da\u00fa\u00dd\u00fd\u00c2\u00e2\u00ca\u00ea\u00ce\u00ee\u00d4\u00f4\u00db\u00fb\u0176\u0177\u00c3\u00e3\u00d5\u00f5\u00d1\u00f1\u00c4\u00e4\u00cb\u00eb\u00cf\u00ef\u00d6\u00f6\u00dc\u00fc\u0178\u00ff\u00c5\u00e5\u00c7\u00e7\u0150\u0151\u0170\u0171"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 360
    .local v3, "pos":I
    const/4 v5, -0x1

    if-le v3, v5, :cond_1

    .line 361
    const-string/jumbo v5, "AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 367
    .end local v0    # "c":C
    .end local v3    # "pos":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method removeDoubleConsonants(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 383
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "replacedName":Ljava/lang/String;
    sget-object v5, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->DOUBLE_CONSONANT:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 385
    .local v0, "dc":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 386
    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "singleLetter":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .end local v2    # "singleLetter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v0    # "dc":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method removeVowels(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 407
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "firstLetter":Ljava/lang/String;
    const-string/jumbo v1, "A"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    const-string/jumbo v1, "E"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    const-string/jumbo v1, "I"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    const-string/jumbo v1, "O"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    const-string/jumbo v1, "U"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 415
    const-string/jumbo v1, "\\s{2,}\\b"

    const-string/jumbo v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/MatchRatingApproachEncoder;->isVowel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 421
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
