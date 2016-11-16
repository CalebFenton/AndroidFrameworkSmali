.class public Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private format_:Ljava/lang/String;

.field private hasDomesticCarrierCodeFormattingRule:Z

.field private hasFormat:Z

.field private hasNationalPrefixFormattingRule:Z

.field private hasNationalPrefixOptionalWhenFormatting:Z

.field private hasPattern:Z

.field private leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nationalPrefixFormattingRule_:Ljava/lang/String;

.field private nationalPrefixOptionalWhenFormatting_:Z

.field private pattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    #@8
    .line 64
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    #@d
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    #@14
    .line 92
    const-string/jumbo v0, ""

    #@17
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    #@19
    .line 108
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    #@1c
    .line 121
    const-string/jumbo v0, ""

    #@1f
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    #@21
    .line 34
    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    if-nez p1, :cond_0

    #@2
    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 87
    return-object p0
.end method

.method public clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    #@3
    .line 102
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    #@8
    .line 103
    return-object p0
.end method

.method public getDomesticCarrierCodeFormattingRule()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLeadingDigitsPattern(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getNationalPrefixFormattingRule()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasDomesticCarrierCodeFormattingRule()Z
    .locals 1

    #@0
    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    #@2
    return v0
.end method

.method public hasFormat()Z
    .locals 1

    #@0
    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    #@2
    return v0
.end method

.method public hasNationalPrefixFormattingRule()Z
    .locals 1

    #@0
    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    #@2
    return v0
.end method

.method public hasNationalPrefixOptionalWhenFormatting()Z
    .locals 1

    #@0
    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    #@2
    return v0
.end method

.method public hasPattern()Z
    .locals 1

    #@0
    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    #@2
    return v0
.end method

.method public isNationalPrefixOptionalWhenFormatting()Z
    .locals 1

    #@0
    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    #@2
    return v0
.end method

.method public leadingDigitPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public leadingDigitsPatternSize()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 3
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@0
    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 134
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@d
    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 137
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@1a
    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    #@1d
    move-result v1

    #@1e
    .line 140
    .local v1, "leadingDigitsPatternSize":I
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@21
    .line 141
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@28
    .line 140
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 143
    :cond_2
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 144
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@38
    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_4

    #@3e
    .line 147
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@45
    .line 149
    :cond_4
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    #@48
    move-result v2

    #@49
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@4c
    .line 150
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@7
    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@e
    .line 176
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@11
    move-result v1

    #@12
    .line 177
    .local v1, "leadingDigitsPatternSize":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@15
    .line 178
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    #@17
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 177
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 180
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 181
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@2e
    .line 183
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 184
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@3b
    .line 186
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@3e
    move-result v2

    #@3f
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@42
    .line 173
    return-void
.end method

.method public setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    #@3
    .line 128
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    #@5
    .line 129
    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    #@3
    .line 69
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    #@5
    .line 70
    return-object p0
.end method

.method public setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    #@3
    .line 97
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    #@5
    .line 98
    return-object p0
.end method

.method public setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 114
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    #@3
    .line 115
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    #@5
    .line 116
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    #@3
    .line 58
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    #@5
    .line 59
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    #@2
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@5
    .line 155
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    #@7
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@a
    .line 156
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    #@d
    move-result v1

    #@e
    .line 157
    .local v1, "leadingDigitsPatternSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@11
    .line 158
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@14
    .line 159
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    #@16
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/lang/String;

    #@1c
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@1f
    .line 158
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 162
    :cond_0
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    #@24
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@27
    .line 163
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 164
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    #@2d
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@30
    .line 166
    :cond_1
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    #@32
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@35
    .line 167
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 168
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    #@3b
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@3e
    .line 170
    :cond_2
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    #@40
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@43
    .line 153
    return-void
.end method
