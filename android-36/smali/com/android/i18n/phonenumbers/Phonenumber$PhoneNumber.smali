.class public Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
.super Ljava/lang/Object;
.source "Phonenumber.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonenumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field private greylist-max-o countryCode_:I

.field private greylist-max-o extension_:Ljava/lang/String;

.field private greylist-max-o hasCountryCode:Z

.field private greylist-max-o hasCountryCodeSource:Z

.field private greylist-max-o hasExtension:Z

.field private greylist-max-o hasItalianLeadingZero:Z

.field private greylist-max-o hasNationalNumber:Z

.field private greylist-max-o hasNumberOfLeadingZeros:Z

.field private greylist-max-o hasPreferredDomesticCarrierCode:Z

.field private greylist-max-o hasRawInput:Z

.field private greylist-max-o italianLeadingZero_:Z

.field private greylist-max-o nationalNumber_:J

.field private greylist-max-o numberOfLeadingZeros_:I

.field private greylist-max-o preferredDomesticCarrierCode_:Ljava/lang/String;

.field private greylist-max-o rawInput_:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    .line 79
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    .line 96
    const-string v1, ""

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 117
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    .line 149
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 56
    return-void
.end method


# virtual methods
.method public final blacklist clear()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 1

    .line 206
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 207
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearNationalNumber()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 208
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 209
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearItalianLeadingZero()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 210
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearNumberOfLeadingZeros()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 211
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 212
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 213
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 214
    return-object p0
.end method

.method public greylist-max-r clearCountryCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    .line 73
    iput v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    .line 74
    return-object p0
.end method

.method public blacklist clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    .line 182
    sget-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 183
    return-object p0
.end method

.method public blacklist clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public blacklist clearItalianLeadingZero()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    .line 128
    return-object p0
.end method

.method public blacklist clearNationalNumber()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    .line 91
    return-object p0
.end method

.method public blacklist clearNumberOfLeadingZeros()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    .line 144
    return-object p0
.end method

.method public blacklist clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public blacklist clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 262
    instance-of v0, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 246
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 247
    return v0

    .line 249
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 250
    return v1

    .line 252
    :cond_8
    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    iget v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    if-ne v2, v3, :cond_52

    iget-wide v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    iget-wide v4, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    iget-boolean v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    if-ne v2, v3, :cond_52

    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    iget v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    if-ne v2, v3, :cond_52

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v2, v3, :cond_52

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 257
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v3

    if-ne v2, v3, :cond_52

    move v0, v1

    goto :goto_53

    :cond_52
    nop

    .line 252
    :goto_53
    return v0
.end method

.method public greylist getCountryCode()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    return v0
.end method

.method public greylist getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v0
.end method

.method public greylist-max-r getExtension()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getNationalNumber()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    return-wide v0
.end method

.method public blacklist getNumberOfLeadingZeros()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    return v0
.end method

.method public blacklist getPreferredDomesticCarrierCode()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRawInput()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    return-object v0
.end method

.method public greylist hasCountryCode()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    return v0
.end method

.method public blacklist hasCountryCodeSource()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    return v0
.end method

.method public greylist-max-r hasExtension()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    return v0
.end method

.method public blacklist hasItalianLeadingZero()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    return v0
.end method

.method public blacklist hasNationalNumber()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    return v0
.end method

.method public blacklist hasNumberOfLeadingZeros()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    return v0
.end method

.method public blacklist hasPreferredDomesticCarrierCode()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    return v0
.end method

.method public blacklist hasRawInput()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 271
    const/16 v0, 0x29

    .line 272
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 273
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 274
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 275
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_31

    move v2, v3

    goto :goto_32

    :cond_31
    move v2, v4

    :goto_32
    add-int/2addr v0, v2

    .line 276
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v2

    add-int/2addr v1, v2

    .line 277
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 278
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 279
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 280
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_65

    :cond_64
    move v3, v4

    :goto_65
    add-int/2addr v1, v3

    .line 281
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public blacklist isItalianLeadingZero()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 218
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 219
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 221
    :cond_d
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 222
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 224
    :cond_1a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 225
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 227
    :cond_27
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 228
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 230
    :cond_34
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 231
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 233
    :cond_41
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 234
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 236
    :cond_4e
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 237
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 239
    :cond_5b
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 240
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 242
    :cond_68
    return-object p0
.end method

.method public blacklist setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "value"    # I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    .line 67
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    .line 68
    return-object p0
.end method

.method public blacklist setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 173
    if-eqz p1, :cond_8

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    .line 177
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 178
    return-object p0

    .line 174
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 102
    if-eqz p1, :cond_8

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    .line 106
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 107
    return-object p0

    .line 103
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "value"    # Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    .line 122
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    .line 123
    return-object p0
.end method

.method public blacklist setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "value"    # J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    .line 85
    iput-wide p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    .line 86
    return-object p0
.end method

.method public blacklist setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "value"    # I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    .line 138
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    .line 139
    return-object p0
.end method

.method public blacklist setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 192
    if-eqz p1, :cond_8

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    .line 196
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 197
    return-object p0

    .line 193
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 153
    if-eqz p1, :cond_8

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    .line 157
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 158
    return-object p0

    .line 154
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "outputString":Ljava/lang/StringBuilder;
    const-string v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 290
    const-string v1, " Leading Zero(s): true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_2c
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 293
    const-string v1, " Number of leading zeros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    :cond_3d
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 296
    const-string v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_4e
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 299
    const-string v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    :cond_5f
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 302
    const-string v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
