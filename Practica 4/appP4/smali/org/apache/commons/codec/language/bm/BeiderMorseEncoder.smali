.class public Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;
.super Ljava/lang/Object;
.source "BeiderMorseEncoder.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# instance fields
.field private engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    sget-object v1, Lorg/apache/commons/codec/language/bm/NameType;->GENERIC:Lorg/apache/commons/codec/language/bm/NameType;

    sget-object v2, Lorg/apache/commons/codec/language/bm/RuleType;->APPROX:Lorg/apache/commons/codec/language/bm/RuleType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Z)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 88
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string/jumbo v1, "BeiderMorseEncoder encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameType()Lorg/apache/commons/codec/language/bm/NameType;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    return-object v0
.end method

.method public getRuleType()Lorg/apache/commons/codec/language/bm/RuleType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lorg/apache/commons/codec/language/bm/RuleType;

    move-result-object v0

    return-object v0
.end method

.method public isConcat()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v0

    return v0
.end method

.method public setConcat(Z)V
    .locals 4
    .param p1, "concat"    # Z

    .prologue
    .line 137
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 138
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lorg/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 140
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 141
    return-void
.end method

.method public setMaxPhonemes(I)V
    .locals 4
    .param p1, "maxPhonemes"    # I

    .prologue
    .line 178
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 179
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lorg/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 180
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 182
    return-void
.end method

.method public setNameType(Lorg/apache/commons/codec/language/bm/NameType;)V
    .locals 4
    .param p1, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;

    .prologue
    .line 151
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 152
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lorg/apache/commons/codec/language/bm/RuleType;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 153
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 154
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 155
    return-void
.end method

.method public setRuleType(Lorg/apache/commons/codec/language/bm/RuleType;)V
    .locals 4
    .param p1, "ruleType"    # Lorg/apache/commons/codec/language/bm/RuleType;

    .prologue
    .line 164
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 166
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 167
    invoke-virtual {v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lorg/apache/commons/codec/language/bm/PhoneticEngine;

    .line 168
    return-void
.end method
