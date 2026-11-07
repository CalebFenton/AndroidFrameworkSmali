.class public Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private blacklist format_:Ljava/lang/String;

.field private blacklist hasDomesticCarrierCodeFormattingRule:Z

.field private blacklist hasFormat:Z

.field private blacklist hasNationalPrefixFormattingRule:Z

.field private blacklist hasNationalPrefixOptionalWhenFormatting:Z

.field private blacklist hasPattern:Z

.field private blacklist leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist nationalPrefixFormattingRule_:Ljava/lang/String;

.field private blacklist nationalPrefixOptionalWhenFormatting_:Z

.field private blacklist pattern_:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    .line 121
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 150
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .registers 1

    .line 75
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist clearNationalPrefixFormattingRule()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 2

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDomesticCarrierCodeFormattingRule()Ljava/lang/String;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFormat()Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLeadingDigitsPattern(I)Ljava/lang/String;
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLeadingDigitsPatternCount()I
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getNationalPrefixFormattingRule()Ljava/lang/String;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNationalPrefixOptionalWhenFormatting()Z
    .registers 1

    .line 141
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    return p0
.end method

.method public blacklist getPattern()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist hasDomesticCarrierCodeFormattingRule()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    return p0
.end method

.method public blacklist hasFormat()Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    return p0
.end method

.method public blacklist hasNationalPrefixFormattingRule()Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    return p0
.end method

.method public blacklist hasNationalPrefixOptionalWhenFormatting()Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    return p0
.end method

.method public blacklist hasPattern()Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    return p0
.end method

.method public blacklist leadingDigitPatterns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    return-object p0
.end method

.method public blacklist leadingDigitsPatternSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result p0

    return p0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 183
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 184
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 188
    :cond_21
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 189
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 191
    :cond_2e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 192
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 194
    :cond_3b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    return-void
.end method

.method public blacklist setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setFormat(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    .line 144
    iput-boolean p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    return-object p0
.end method

.method public blacklist setPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v0

    .line 165
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_22

    .line 167
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 170
    :cond_22
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 171
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    if-eqz v0, :cond_30

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 174
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 175
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    if-eqz v0, :cond_3e

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 178
    :cond_3e
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method
