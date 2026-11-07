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
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private greylist-max-o format_:Ljava/lang/String;

.field private greylist-max-o hasDomesticCarrierCodeFormattingRule:Z

.field private greylist-max-o hasFormat:Z

.field private greylist-max-o hasNationalPrefixFormattingRule:Z

.field private greylist-max-o hasNationalPrefixOptionalWhenFormatting:Z

.field private greylist-max-o hasPattern:Z

.field private greylist-max-o leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o nationalPrefixFormattingRule_:Ljava/lang/String;

.field private greylist-max-o nationalPrefixOptionalWhenFormatting_:Z

.field private greylist-max-o pattern_:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    .line 133
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 163
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .registers 1

    .line 83
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addLeadingDigitsPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 124
    if-eqz p1, :cond_8

    .line 127
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object p0

    .line 125
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 2

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public greylist-max-r getDomesticCarrierCodeFormattingRule()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getFormat()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getLeadingDigitsPattern(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 121
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLeadingDigitsPatternCount()I
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-r getNationalPrefixFormattingRule()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNationalPrefixOptionalWhenFormatting()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    return v0
.end method

.method public greylist-max-r getPattern()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasDomesticCarrierCodeFormattingRule()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    return v0
.end method

.method public blacklist hasFormat()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    return v0
.end method

.method public blacklist hasNationalPrefixFormattingRule()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    return v0
.end method

.method public blacklist hasNationalPrefixOptionalWhenFormatting()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    return v0
.end method

.method public blacklist hasPattern()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    return v0
.end method

.method public blacklist leadingDigitPatterns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-r leadingDigitsPatternSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 197
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 198
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 199
    .local v0, "leadingDigitsPatternSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_21

    .line 200
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 202
    .end local v1    # "i":I
    :cond_21
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 203
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 205
    :cond_2e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 206
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 208
    :cond_3b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 209
    return-void
.end method

.method public blacklist setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    .line 171
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public blacklist setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    .line 106
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public blacklist setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 139
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public blacklist setNationalPrefixOptionalWhenFormatting(Z)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    .line 157
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 158
    return-object p0
.end method

.method public blacklist setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    .line 94
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v0

    .line 179
    .local v0, "leadingDigitsPatternSize":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_22

    .line 181
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 184
    .end local v1    # "i":I
    :cond_22
    iget-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 185
    iget-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    if-eqz v1, :cond_30

    .line 186
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 188
    :cond_30
    iget-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 189
    iget-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    if-eqz v1, :cond_3e

    .line 190
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 192
    :cond_3e
    iget-boolean v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 193
    return-void
.end method
