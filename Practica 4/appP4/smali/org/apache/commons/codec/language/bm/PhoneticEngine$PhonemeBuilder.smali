.class final Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhonemeBuilder"
.end annotation


# instance fields
.field private final phonemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "phonemes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V
    .locals 1
    .param p1, "phoneme"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    .line 79
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public static empty(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 3
    .param p0, "languages"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .prologue
    .line 72
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    new-instance v1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 93
    .local v0, "ph":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    goto :goto_0

    .line 95
    .end local v0    # "ph":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_0
    return-void
.end method

.method public apply(Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;I)V
    .locals 9
    .param p1, "phonemeExpr"    # Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .param p2, "maxPhonemes"    # I

    .prologue
    .line 107
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, p2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 109
    .local v3, "newPhonemes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 110
    .local v2, "left":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-interface {p1}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;->getPhonemes()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 111
    .local v4, "right":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->restrictTo(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v1

    .line 112
    .local v1, "languages":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 113
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-direct {v0, v2, v4, v1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 114
    .local v0, "join":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v7, p2, :cond_1

    .line 115
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-lt v7, p2, :cond_1

    .line 124
    .end local v0    # "join":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .end local v1    # "languages":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .end local v2    # "left":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .end local v4    # "right":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 125
    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-void
.end method

.method public getPhonemes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    return-object v0
.end method

.method public makeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 148
    .local v0, "ph":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 149
    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getPhonemeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 154
    .end local v0    # "ph":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
