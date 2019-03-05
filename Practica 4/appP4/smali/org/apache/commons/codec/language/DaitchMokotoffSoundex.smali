.class public Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;,
        Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    }
.end annotation


# static fields
.field private static final COMMENT:Ljava/lang/String; = "//"

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final FOLDINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_LENGTH:I = 0x6

.field private static final MULTILINE_COMMENT_END:Ljava/lang/String; = "*/"

.field private static final MULTILINE_COMMENT_START:Ljava/lang/String; = "/*"

.field private static final RESOURCE_FILE:Ljava/lang/String; = "org/apache/commons/codec/language/dmrules.txt"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final folding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 223
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    .line 226
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    .line 229
    const-class v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string/jumbo v5, "org/apache/commons/codec/language/dmrules.txt"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 230
    .local v2, "rulesIS":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 231
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unable to load resource: org/apache/commons/codec/language/dmrules.txt"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_0
    new-instance v3, Ljava/util/Scanner;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 236
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_0
    const-string/jumbo v4, "org/apache/commons/codec/language/dmrules.txt"

    sget-object v5, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    sget-object v6, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 242
    sget-object v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 244
    .local v1, "ruleList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    new-instance v5, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;

    invoke-direct {v5}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;-><init>()V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 238
    .end local v0    # "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    .end local v1    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    throw v4

    .line 251
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;-><init>(Z)V

    .line 352
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "folding"    # Z

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-boolean p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->folding:Z

    .line 366
    return-void
.end method

.method private cleanup(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-char v0, v4, v3

    .line 381
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 385
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 386
    iget-boolean v2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->folding:Z

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    sget-object v2, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 389
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 391
    .end local v0    # "ch":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 22
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "ruleMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    .local p3, "asciiFoldings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/4 v4, 0x0

    .line 256
    .local v4, "currentLine":I
    const/4 v6, 0x0

    .line 258
    .local v6, "inMultilineComment":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 259
    add-int/lit8 v4, v4, 0x1

    .line 260
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, "rawLine":Ljava/lang/String;
    move-object v8, v13

    .line 263
    .local v8, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 264
    const-string/jumbo v19, "*/"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 265
    const/4 v6, 0x0

    goto :goto_0

    .line 270
    :cond_1
    const-string/jumbo v19, "/*"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 271
    const/4 v6, 0x1

    goto :goto_0

    .line 274
    :cond_2
    const-string/jumbo v19, "//"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 275
    .local v3, "cmtI":I
    if-ltz v3, :cond_3

    .line 276
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 280
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 282
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_0

    .line 286
    const-string/jumbo v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 288
    const-string/jumbo v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "parts":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 290
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Malformed folding statement split into "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v9

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " parts: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 293
    :cond_4
    const/16 v19, 0x0

    aget-object v7, v9, v19

    .line 294
    .local v7, "leftCharacter":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v17, v9, v19

    .line 296
    .local v17, "rightCharacter":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 297
    :cond_5
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Malformed folding statement - patterns are not single characters: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 301
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 304
    .end local v7    # "leftCharacter":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v17    # "rightCharacter":Ljava/lang/String;
    :cond_7
    const-string/jumbo v19, "\\s+"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 305
    .restart local v9    # "parts":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 306
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Malformed rule statement split into "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v9

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " parts: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 310
    :cond_8
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "pattern":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, "replacement1":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 313
    .local v15, "replacement2":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 315
    .local v16, "replacement3":Ljava/lang/String;
    new-instance v12, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;

    move-object/from16 v0, v16

    invoke-direct {v12, v10, v14, v15, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v12, "r":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    invoke-static {v12}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->access$000(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 317
    .local v11, "patternKey":C
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 318
    .local v18, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    if-nez v18, :cond_9

    .line 319
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .restart local v18    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_9
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 323
    .end local v10    # "pattern":Ljava/lang/String;
    .end local v11    # "patternKey":C
    .end local v12    # "r":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    .end local v14    # "replacement1":Ljava/lang/String;
    .end local v15    # "replacement2":Ljava/lang/String;
    .end local v16    # "replacement3":Ljava/lang/String;
    .end local v18    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :catch_0
    move-exception v5

    .line 324
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Problem parsing line \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 330
    .end local v3    # "cmtI":I
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v13    # "rawLine":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private soundex(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 23
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "branching"    # Z

    .prologue
    .line 487
    if-nez p1, :cond_1

    .line 488
    const/16 v16, 0x0

    .line 560
    :cond_0
    return-object v16

    .line 491
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->cleanup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 493
    .local v9, "input":Ljava/lang/String;
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 494
    .local v5, "currentBranches":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    new-instance v19, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;-><init>(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;)V

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    const/4 v11, 0x0

    .line 497
    .local v11, "lastChar":C
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_11

    .line 498
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 501
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 497
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 506
    .local v10, "inputContext":Ljava/lang/String;
    sget-object v19, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 507
    .local v18, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    if-eqz v18, :cond_2

    .line 513
    if-eqz p2, :cond_9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v13, "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;

    .line 516
    .local v17, "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 517
    if-eqz p2, :cond_5

    .line 518
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 520
    :cond_5
    if-nez v11, :cond_a

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getReplacements(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v15

    .line 521
    .local v15, "replacements":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    if-eqz p2, :cond_b

    const/4 v3, 0x1

    .line 523
    .local v3, "branchingRequired":Z
    :goto_4
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    .line 524
    .local v2, "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    array-length v0, v15

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v14, v15, v19

    .line 526
    .local v14, "nextReplacement":Ljava/lang/String;
    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->createBranch()Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    move-result-object v12

    .line 529
    .local v12, "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    :goto_6
    const/16 v22, 0x6d

    move/from16 v0, v22

    if-ne v11, v0, :cond_7

    const/16 v22, 0x6e

    move/from16 v0, v22

    if-eq v4, v0, :cond_8

    :cond_7
    const/16 v22, 0x6e

    move/from16 v0, v22

    if-ne v11, v0, :cond_d

    const/16 v22, 0x6d

    move/from16 v0, v22

    if-ne v4, v0, :cond_d

    :cond_8
    const/4 v6, 0x1

    .line 531
    .local v6, "force":Z
    :goto_7
    invoke-virtual {v12, v14, v6}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->processNextReplacement(Ljava/lang/String;Z)V

    .line 533
    if-eqz p2, :cond_6

    .line 534
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 513
    .end local v2    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v3    # "branchingRequired":Z
    .end local v6    # "force":Z
    .end local v12    # "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v13    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .end local v14    # "nextReplacement":Ljava/lang/String;
    .end local v15    # "replacements":[Ljava/lang/String;
    .end local v17    # "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    :cond_9
    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    .line 520
    .restart local v13    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .restart local v17    # "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    :cond_a
    const/16 v19, 0x0

    goto :goto_3

    .line 521
    .restart local v15    # "replacements":[Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    .restart local v2    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .restart local v3    # "branchingRequired":Z
    .restart local v14    # "nextReplacement":Ljava/lang/String;
    :cond_c
    move-object v12, v2

    .line 526
    goto :goto_6

    .line 529
    .restart local v12    # "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    :cond_d
    const/4 v6, 0x0

    goto :goto_7

    .line 541
    .end local v2    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v12    # "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v14    # "nextReplacement":Ljava/lang/String;
    :cond_e
    if-eqz p2, :cond_f

    .line 542
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 543
    invoke-interface {v5, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 545
    :cond_f
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    add-int v7, v7, v19

    .line 550
    .end local v3    # "branchingRequired":Z
    .end local v15    # "replacements":[Ljava/lang/String;
    .end local v17    # "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    :cond_10
    move v11, v4

    goto/16 :goto_1

    .line 553
    .end local v4    # "ch":C
    .end local v10    # "inputContext":Ljava/lang/String;
    .end local v13    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .end local v18    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :cond_11
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 554
    .local v16, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 555
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    .line 556
    .restart local v2    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->finish()V

    .line 557
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v16, v7

    move v7, v8

    .line 558
    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_8
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 337
    :cond_0
    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 341
    :cond_1
    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 414
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string/jumbo v1, "Parameter supplied to DaitchMokotoffSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 434
    if-nez p1, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "branches":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 467
    .local v2, "index":I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 468
    .local v0, "branch":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    add-int/lit8 v2, v2, 0x1

    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 470
    const/16 v6, 0x7c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "branch":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
