.class public Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;,
        Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_PHONEMES:I = 0x14

.field private static final NAME_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final concat:Z

.field private final lang:Lorg/apache/commons/codec/language/bm/Lang;

.field private final maxPhonemes:I

.field private final nameType:Lorg/apache/commons/codec/language/bm/NameType;

.field private final ruleType:Lorg/apache/commons/codec/language/bm/RuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 235
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    .line 238
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lorg/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "bar"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ben"

    aput-object v4, v3, v7

    const-string/jumbo v4, "da"

    aput-object v4, v3, v8

    const-string/jumbo v4, "de"

    aput-object v4, v3, v9

    const-string/jumbo v4, "van"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "von"

    aput-object v5, v3, v4

    .line 240
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 239
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/codec/language/bm/NameType;->SEPHARDIC:Lorg/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "al"

    aput-object v4, v3, v6

    const-string/jumbo v4, "el"

    aput-object v4, v3, v7

    const-string/jumbo v4, "da"

    aput-object v4, v3, v8

    const-string/jumbo v4, "dal"

    aput-object v4, v3, v9

    const-string/jumbo v4, "de"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "del"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "dela"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "de la"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "della"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "des"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "di"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "do"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "dos"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "du"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "van"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "von"

    aput-object v5, v3, v4

    .line 243
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 242
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/codec/language/bm/NameType;->GENERIC:Lorg/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "da"

    aput-object v4, v3, v6

    const-string/jumbo v4, "dal"

    aput-object v4, v3, v7

    const-string/jumbo v4, "de"

    aput-object v4, v3, v8

    const-string/jumbo v4, "del"

    aput-object v4, v3, v9

    const-string/jumbo v4, "dela"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "de la"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "della"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "des"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "di"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "do"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "dos"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "du"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "van"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "von"

    aput-object v5, v3, v4

    .line 247
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 246
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 245
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Z)V
    .locals 1
    .param p1, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p2, "ruleType"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p3, "concat"    # Z

    .prologue
    .line 293
    const/16 v0, 0x14

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;ZI)V

    .line 294
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;ZI)V
    .locals 3
    .param p1, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p2, "ruleType"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p3, "concat"    # Z
    .param p4, "maxPhonemes"    # I

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    sget-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    if-ne p2, v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ruleType must not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    .line 315
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    .line 316
    iput-boolean p3, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    .line 317
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Lang;->instance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Lang;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/apache/commons/codec/language/bm/Lang;

    .line 318
    iput p4, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    .line 319
    return-void
.end method

.method private applyFinalRules(Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/Map;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 14
    .param p1, "phonemeBuilder"    # Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;)",
            "Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, "finalRules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    if-nez p2, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "finalRules can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    .end local p1    # "phonemeBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    :goto_0
    return-object p1

    .line 338
    .restart local p1    # "phonemeBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    :cond_1
    new-instance v11, Ljava/util/TreeMap;

    sget-object v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v11, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 341
    .local v11, "phonemes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->getPhonemes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 342
    .local v10, "phoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v10}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->empty(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v3

    .line 343
    .local v3, "subBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    invoke-virtual {v10}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getPhonemeText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "phonemeText":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 346
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    iget v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;-><init>(Ljava/util/Map;Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;II)V

    .line 347
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->invoke()Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    move-result-object v12

    .line 348
    .local v12, "rulesApplication":Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
    invoke-virtual {v12}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->isFound()Z

    move-result v6

    .line 349
    .local v6, "found":Z
    invoke-virtual {v12}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getPhonemeBuilder()Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v3

    .line 351
    if-nez v6, :cond_3

    .line 353
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->append(Ljava/lang/CharSequence;)V

    .line 356
    :cond_3
    invoke-virtual {v12}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getI()I

    move-result v4

    .line 357
    goto :goto_1

    .line 362
    .end local v6    # "found":Z
    .end local v12    # "rulesApplication":Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->getPhonemes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 363
    .local v8, "newPhoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 364
    invoke-interface {v11, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 365
    .local v9, "oldPhoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v8}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->mergeWithLanguage(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v7

    .line 366
    .local v7, "mergedPhoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-interface {v11, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 368
    .end local v7    # "mergedPhoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .end local v9    # "oldPhoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_5
    invoke-interface {v11, v8, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 373
    .end local v2    # "phonemeText":Ljava/lang/String;
    .end local v3    # "subBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .end local v4    # "i":I
    .end local v8    # "newPhoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .end local v10    # "phoneme":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_6
    new-instance p1, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    .end local p1    # "phonemeBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;)V

    goto/16 :goto_0
.end method

.method private static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "strings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    .local v1, "si":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/apache/commons/codec/language/bm/Lang;

    invoke-virtual {v1, p1}, Lorg/apache/commons/codec/language/bm/Lang;->guessLanguages(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    .line 385
    .local v0, "languageSet":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/lang/String;
    .locals 21
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "languageSet"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    sget-object v4, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    move-object/from16 v0, p2

    invoke-static {v2, v4, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;

    move-result-object v3

    .line 401
    .local v3, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    const-string/jumbo v7, "common"

    invoke-static {v2, v4, v7}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 403
    .local v10, "finalRules1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    move-object/from16 v0, p2

    invoke-static {v2, v4, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;

    move-result-object v11

    .line 407
    .local v11, "finalRules2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2d

    const/16 v7, 0x20

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    sget-object v4, Lorg/apache/commons/codec/language/bm/NameType;->GENERIC:Lorg/apache/commons/codec/language/bm/NameType;

    if-ne v2, v4, :cond_2

    .line 410
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "d\'"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 412
    .local v15, "remainder":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "combined":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")-("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .end local v9    # "combined":Ljava/lang/String;
    .end local v15    # "remainder":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 415
    :cond_0
    sget-object v2, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 417
    .local v12, "l":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 420
    .restart local v15    # "remainder":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 421
    .restart local v9    # "combined":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")-("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 426
    .end local v9    # "combined":Ljava/lang/String;
    .end local v12    # "l":Ljava/lang/String;
    .end local v15    # "remainder":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "\\s+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    .line 427
    .local v19, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v20, "words2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->$SwitchMap$org$apache$commons$codec$language$bm$NameType:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v4}, Lorg/apache/commons/codec/language/bm/NameType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 447
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unreachable case: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :pswitch_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 433
    .local v8, "aWord":Ljava/lang/String;
    const-string/jumbo v4, "\'"

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 434
    .local v14, "parts":[Ljava/lang/String;
    array-length v4, v14

    add-int/lit8 v4, v4, -0x1

    aget-object v13, v14, v4

    .line 435
    .local v13, "lastPart":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 437
    .end local v8    # "aWord":Ljava/lang/String;
    .end local v13    # "lastPart":Ljava/lang/String;
    .end local v14    # "parts":[Ljava/lang/String;
    :cond_3
    sget-object v2, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 450
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    if-eqz v2, :cond_4

    .line 452
    const-string/jumbo v2, " "

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 466
    :goto_3
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->empty(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v5

    .line 469
    .local v5, "phonemeBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v6, v2, :cond_7

    .line 470
    new-instance v2, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;-><init>(Ljava/util/Map;Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;II)V

    .line 471
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->invoke()Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    move-result-object v17

    .line 472
    .local v17, "rulesApplication":Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getI()I

    move-result v6

    .line 473
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getPhonemeBuilder()Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v5

    .line 474
    goto :goto_4

    .line 440
    .end local v5    # "phonemeBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .end local v6    # "i":I
    .end local v17    # "rulesApplication":Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
    :pswitch_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 441
    sget-object v2, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 444
    :pswitch_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 453
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 455
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "input":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "input":Ljava/lang/String;
    goto :goto_3

    .line 458
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v16, "result":Ljava/lang/StringBuilder;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 460
    .local v18, "word":Ljava/lang/String;
    const-string/jumbo v4, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 463
    .end local v18    # "word":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 477
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v5    # "phonemeBuilder":Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .restart local v6    # "i":I
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->applyFinalRules(Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/Map;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v5

    .line 479
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->applyFinalRules(Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/Map;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v5

    .line 481
    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->makeString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLang()Lorg/apache/commons/codec/language/bm/Lang;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/apache/commons/codec/language/bm/Lang;

    return-object v0
.end method

.method public getMaxPhonemes()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->maxPhonemes:I

    return v0
.end method

.method public getNameType()Lorg/apache/commons/codec/language/bm/NameType;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    return-object v0
.end method

.method public getRuleType()Lorg/apache/commons/codec/language/bm/RuleType;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method

.method public isConcat()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    return v0
.end method
