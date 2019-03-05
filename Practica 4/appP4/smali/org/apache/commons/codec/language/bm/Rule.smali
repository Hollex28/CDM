.class public Lorg/apache/commons/codec/language/bm/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Rule$RPattern;,
        Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;,
        Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;,
        Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final HASH_INCLUDE:Ljava/lang/String; = "#include"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

.field private final pattern:Ljava/lang/String;

.field private final phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

.field private final rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 196
    new-instance v8, Lorg/apache/commons/codec/language/bm/Rule$1;

    invoke-direct {v8}, Lorg/apache/commons/codec/language/bm/Rule$1;-><init>()V

    sput-object v8, Lorg/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 209
    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v8, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    .line 213
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v10

    array-length v11, v10

    const/4 v8, 0x0

    move v9, v8

    .local v5, "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .local v6, "s":Lorg/apache/commons/codec/language/bm/NameType;
    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v6, v10, v9

    .line 214
    new-instance v5, Ljava/util/EnumMap;

    .end local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    const-class v8, Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-direct {v5, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 217
    .restart local v5    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    invoke-static {}, Lorg/apache/commons/codec/language/bm/RuleType;->values()[Lorg/apache/commons/codec/language/bm/RuleType;

    move-result-object v12

    array-length v13, v12

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v13, :cond_2

    aget-object v4, v12, v8

    .line 218
    .local v4, "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v3, "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    invoke-static {v6}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v2

    .line 221
    .local v2, "ls":Lorg/apache/commons/codec/language/bm/Languages;
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "l":Ljava/lang/String;
    invoke-static {v6, v4, v1}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    .line 224
    .local v7, "scanner":Ljava/util/Scanner;
    :try_start_0
    invoke-static {v6, v4, v1}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v3, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    goto :goto_2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Problem processing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v4, v1}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v8

    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    throw v8

    .line 231
    .end local v1    # "l":Ljava/lang/String;
    .end local v7    # "scanner":Ljava/util/Scanner;
    :cond_0
    sget-object v14, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v4, v14}, Lorg/apache/commons/codec/language/bm/RuleType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 232
    const-string/jumbo v14, "common"

    invoke-static {v6, v4, v14}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    .line 234
    .restart local v7    # "scanner":Ljava/util/Scanner;
    :try_start_2
    const-string/jumbo v14, "common"

    const-string/jumbo v15, "common"

    invoke-static {v6, v4, v15}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    .line 240
    .end local v7    # "scanner":Ljava/util/Scanner;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v5, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 236
    .restart local v7    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v8

    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    throw v8

    .line 243
    .end local v2    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .end local v3    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .end local v4    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    .end local v7    # "scanner":Ljava/util/Scanner;
    :cond_2
    sget-object v8, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto/16 :goto_0

    .line 245
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "lContext"    # Ljava/lang/String;
    .param p3, "rContext"    # Ljava/lang/String;
    .param p4, "phoneme"    # Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 656
    iput-object p4, p0, Lorg/apache/commons/codec/language/bm/Rule;->phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .line 657
    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;C)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # C

    .prologue
    .line 82
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/CharSequence;C)Z
    .locals 2
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "input"    # C

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 250
    const/4 v1, 0x1

    .line 253
    :goto_1
    return v1

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string/jumbo v0, "org/apache/commons/codec/language/bm/%s_%s_%s.txt"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 257
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createScanner(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 5
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string/jumbo v2, "org/apache/commons/codec/language/bm/%s.txt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 276
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 277
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;
    .locals 5
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 265
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 266
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v2

    .line 287
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 288
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 287
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 292
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;
    .locals 5
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "langs"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;

    move-result-object v1

    .line 309
    .local v1, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "allRules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 311
    .local v2, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 313
    .end local v2    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    :cond_0
    return-object v0
.end method

.method public static getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 363
    sget-object v1, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 365
    .local v0, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    if-nez v0, :cond_0

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No rules found for %s, %s, %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 367
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 366
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_0
    return-object v0
.end method

.method public static getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;
    .locals 1
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "langs"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "any"

    .line 346
    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 6
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string/jumbo v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 375
    .local v3, "open":I
    if-ltz v3, :cond_1

    .line 376
    const-string/jumbo v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 377
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Phoneme expression contains a \'[\' but does not end in \']\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "before":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "in":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    const-string/jumbo v4, "[+]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 383
    .local v2, "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-static {v2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 385
    .end local v0    # "before":Ljava/lang/String;
    .end local v1    # "in":Ljava/lang/String;
    .end local v2    # "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    sget-object v5, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v4, p0, v5}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    goto :goto_0
.end method

.method private static parsePhonemeExpr(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .locals 7
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string/jumbo v3, "("

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Phoneme starts with \'(\' so must end with \')\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "phs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "body":Ljava/lang/String;
    const-string/jumbo v3, "[|]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 397
    .local v1, "part":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    .end local v1    # "part":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    :cond_2
    new-instance v3, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string/jumbo v4, ""

    sget-object v5, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_3
    new-instance v3, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;

    invoke-direct {v3, v2}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;-><init>(Ljava/util/List;)V

    .line 405
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "phs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    :goto_1
    return-object v3

    :cond_4
    invoke-static {p0}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v3

    goto :goto_1
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;
    .locals 25
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v20, "lines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    const/4 v14, 0x0

    .line 412
    .local v14, "currentLine":I
    const/16 v17, 0x0

    .line 413
    .local v17, "inMultilineComment":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 414
    add-int/lit8 v14, v14, 0x1

    .line 415
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v23

    .line 416
    .local v23, "rawLine":Ljava/lang/String;
    move-object/from16 v19, v23

    .line 418
    .local v19, "line":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 419
    const-string/jumbo v9, "*/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 420
    const/16 v17, 0x0

    goto :goto_0

    .line 423
    :cond_1
    const-string/jumbo v9, "/*"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 424
    const/16 v17, 0x1

    goto :goto_0

    .line 427
    :cond_2
    const-string/jumbo v9, "//"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 428
    .local v13, "cmtI":I
    if-ltz v13, :cond_3

    .line 429
    const/4 v9, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 433
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 435
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 439
    const-string/jumbo v9, "#include"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 441
    const-string/jumbo v9, "#include"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 442
    .local v18, "incl":Ljava/lang/String;
    const-string/jumbo v9, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 443
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Malformed import statement \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 446
    :cond_4
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v16

    .line 448
    .local v16, "hashIncludeScanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    throw v9

    .line 454
    .end local v16    # "hashIncludeScanner":Ljava/util/Scanner;
    .end local v18    # "incl":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "\\s+"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 455
    .local v21, "parts":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v9, v0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_6

    .line 456
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Malformed rule statement split into "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " parts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 460
    :cond_6
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v21, v9

    invoke-static {v9}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "pat":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v21, v9

    invoke-static {v9}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "lCon":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v21, v9

    invoke-static {v9}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "rCon":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v21, v9

    invoke-static {v9}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhonemeExpr(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v7

    .line 464
    .local v7, "ph":Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    move v8, v14

    .line 465
    .local v8, "cLine":I
    new-instance v3, Lorg/apache/commons/codec/language/bm/Rule$2;

    move-object/from16 v9, p1

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v3 .. v12}, Lorg/apache/commons/codec/language/bm/Rule$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .local v3, "r":Lorg/apache/commons/codec/language/bm/Rule;
    iget-object v9, v3, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 483
    .local v22, "patternKey":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 484
    .local v24, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    if-nez v24, :cond_7

    .line 485
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .restart local v24    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_7
    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 489
    .end local v3    # "r":Lorg/apache/commons/codec/language/bm/Rule;
    .end local v4    # "pat":Ljava/lang/String;
    .end local v5    # "lCon":Ljava/lang/String;
    .end local v6    # "rCon":Ljava/lang/String;
    .end local v7    # "ph":Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .end local v8    # "cLine":I
    .end local v22    # "patternKey":Ljava/lang/String;
    .end local v24    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    :catch_0
    move-exception v15

    .line 490
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Problem parsing line \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 498
    .end local v13    # "cmtI":I
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "parts":[Ljava/lang/String;
    .end local v23    # "rawLine":Ljava/lang/String;
    :cond_8
    return-object v20
.end method

.method private static pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 13
    .param p0, "regex"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 509
    const-string/jumbo v10, "^"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 510
    .local v8, "startsWith":Z
    const-string/jumbo v10, "$"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 511
    .local v4, "endsWith":Z
    if-eqz v8, :cond_0

    move v12, v7

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_1
    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "content":Ljava/lang/String;
    const-string/jumbo v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 514
    .local v2, "boxes":Z
    if-nez v2, :cond_7

    .line 515
    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 517
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 519
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$3;

    invoke-direct {v10}, Lorg/apache/commons/codec/language/bm/Rule$3;-><init>()V

    .line 597
    :goto_2
    return-object v10

    .end local v2    # "boxes":Z
    .end local v3    # "content":Ljava/lang/String;
    :cond_0
    move v12, v11

    .line 511
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_1

    .line 526
    .restart local v2    # "boxes":Z
    .restart local v3    # "content":Ljava/lang/String;
    :cond_2
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$4;

    invoke-direct {v10, v3}, Lorg/apache/commons/codec/language/bm/Rule$4;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 532
    :cond_3
    if-nez v8, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 534
    sget-object v10, Lorg/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    goto :goto_2

    .line 535
    :cond_5
    if-eqz v8, :cond_6

    .line 537
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$5;

    invoke-direct {v10, v3}, Lorg/apache/commons/codec/language/bm/Rule$5;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 543
    :cond_6
    if-eqz v4, :cond_c

    .line 545
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$6;

    invoke-direct {v10, v3}, Lorg/apache/commons/codec/language/bm/Rule$6;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 553
    :cond_7
    const-string/jumbo v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 554
    .local v9, "startsWithBox":Z
    const-string/jumbo v10, "]"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 556
    .local v5, "endsWithBox":Z
    if-eqz v9, :cond_c

    if-eqz v5, :cond_c

    .line 557
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "boxContent":Ljava/lang/String;
    const-string/jumbo v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 560
    const-string/jumbo v10, "^"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 561
    .local v6, "negate":Z
    if-eqz v6, :cond_8

    .line 562
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    :cond_8
    move-object v0, v1

    .line 565
    .local v0, "bContent":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 567
    .local v7, "shouldMatch":Z
    :goto_3
    if-eqz v8, :cond_a

    if-eqz v4, :cond_a

    .line 569
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$7;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/codec/language/bm/Rule$7;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .end local v7    # "shouldMatch":Z
    :cond_9
    move v7, v11

    .line 565
    goto :goto_3

    .line 575
    .restart local v7    # "shouldMatch":Z
    :cond_a
    if-eqz v8, :cond_b

    .line 577
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$8;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/codec/language/bm/Rule$8;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 583
    :cond_b
    if-eqz v4, :cond_c

    .line 585
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$9;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/codec/language/bm/Rule$9;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 597
    .end local v0    # "bContent":Ljava/lang/String;
    .end local v1    # "boxContent":Ljava/lang/String;
    .end local v5    # "endsWithBox":Z
    .end local v6    # "negate":Z
    .end local v7    # "shouldMatch":Z
    .end local v9    # "startsWithBox":Z
    :cond_c
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$10;

    invoke-direct {v10, p0}, Lorg/apache/commons/codec/language/bm/Rule$10;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 609
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v1

    .line 612
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 613
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 621
    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 625
    :cond_0
    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 629
    :cond_1
    return-object p0
.end method


# virtual methods
.method public getLContext()Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneme()Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    return-object v0
.end method

.method public getRContext()Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public patternAndContextMatches(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 707
    if-gez p2, :cond_0

    .line 708
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v3, "Can not match pattern at negative indexes"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 712
    .local v1, "patternLength":I
    add-int v0, p2, v1

    .line 714
    .local v0, "ipl":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 726
    :cond_1
    :goto_0
    return v2

    .line 721
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 723
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 726
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method
