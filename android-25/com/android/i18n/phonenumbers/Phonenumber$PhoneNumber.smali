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
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field private countryCode_:I

.field private extension_:Ljava/lang/String;

.field private hasCountryCode:Z

.field private hasCountryCodeSource:Z

.field private hasExtension:Z

.field private hasItalianLeadingZero:Z

.field private hasNationalNumber:Z

.field private hasNumberOfLeadingZeros:Z

.field private hasPreferredDomesticCarrierCode:Z

.field private hasRawInput:Z

.field private italianLeadingZero_:Z

.field private nationalNumber_:J

.field private numberOfLeadingZeros_:I

.field private preferredDomesticCarrierCode_:Ljava/lang/String;

.field private rawInput_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    iput v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    #@6
    .line 60
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    #@a
    .line 76
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    #@f
    .line 95
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    #@11
    .line 111
    const/4 v0, 0x1

    #@12
    iput v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    #@14
    .line 127
    const-string/jumbo v0, ""

    #@17
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    #@19
    .line 165
    const-string/jumbo v0, ""

    #@1c
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    #@1e
    .line 39
    sget-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@20
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@22
    .line 38
    return-void
.end method


# virtual methods
.method public final clear()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 0

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@3
    .line 184
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearNationalNumber()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@6
    .line 185
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@9
    .line 186
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearItalianLeadingZero()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@c
    .line 187
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearNumberOfLeadingZeros()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@f
    .line 188
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@12
    .line 189
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@15
    .line 190
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@18
    .line 191
    return-object p0
.end method

.method public clearCountryCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 53
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    #@3
    .line 54
    iput v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    #@5
    .line 55
    return-object p0
.end method

.method public clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    .line 158
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    #@3
    .line 159
    sget-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@5
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@7
    .line 160
    return-object p0
.end method

.method public clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    #@3
    .line 89
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    #@8
    .line 90
    return-object p0
.end method

.method public clearItalianLeadingZero()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 104
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    #@3
    .line 105
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    #@5
    .line 106
    return-object p0
.end method

.method public clearNationalNumber()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 2

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    #@3
    .line 70
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    #@7
    .line 71
    return-object p0
.end method

.method public clearNumberOfLeadingZeros()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    #@3
    .line 121
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    #@6
    .line 122
    return-object p0
.end method

.method public clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    .line 177
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    #@3
    .line 178
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    #@8
    .line 179
    return-object p0
.end method

.method public clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    #@3
    .line 140
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    #@8
    .line 141
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 239
    instance-of v0, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@6
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 223
    if-nez p1, :cond_0

    #@4
    .line 224
    return v1

    #@5
    .line 226
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 227
    return v0

    #@8
    .line 229
    :cond_1
    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    #@a
    iget v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    #@c
    if-ne v2, v3, :cond_3

    #@e
    iget-wide v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    #@10
    iget-wide v4, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    #@12
    cmp-long v2, v2, v4

    #@14
    if-nez v2, :cond_3

    #@16
    .line 230
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    #@18
    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    .line 229
    if-eqz v2, :cond_3

    #@20
    .line 230
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    #@22
    iget-boolean v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    #@24
    if-ne v2, v3, :cond_3

    #@26
    .line 231
    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    #@28
    iget v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    #@2a
    if-ne v2, v3, :cond_3

    #@2c
    .line 232
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    #@2e
    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    .line 229
    if-eqz v2, :cond_3

    #@36
    .line 232
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@38
    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@3a
    if-ne v2, v3, :cond_3

    #@3c
    .line 233
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    #@3e
    iget-object v3, p1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    .line 229
    if-eqz v2, :cond_3

    #@46
    .line 234
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    #@49
    move-result v2

    #@4a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    #@4d
    move-result v3

    #@4e
    if-ne v2, v3, :cond_2

    #@50
    .line 229
    :goto_0
    return v0

    #@51
    :cond_2
    move v0, v1

    #@52
    .line 234
    goto :goto_0

    #@53
    :cond_3
    move v0, v1

    #@54
    .line 229
    goto :goto_0
.end method

.method public getCountryCode()I
    .locals 1

    #@0
    .prologue
    .line 46
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    #@2
    return v0
.end method

.method public getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@2
    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNationalNumber()J
    .locals 2

    #@0
    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    #@2
    return-wide v0
.end method

.method public getNumberOfLeadingZeros()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    #@2
    return v0
.end method

.method public getPreferredDomesticCarrierCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawInput()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    #@0
    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    #@2
    return v0
.end method

.method public hasCountryCodeSource()Z
    .locals 1

    #@0
    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    #@2
    return v0
.end method

.method public hasExtension()Z
    .locals 1

    #@0
    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    #@2
    return v0
.end method

.method public hasItalianLeadingZero()Z
    .locals 1

    #@0
    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    #@2
    return v0
.end method

.method public hasNationalNumber()Z
    .locals 1

    #@0
    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    #@2
    return v0
.end method

.method public hasNumberOfLeadingZeros()Z
    .locals 1

    #@0
    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    #@2
    return v0
.end method

.method public hasPreferredDomesticCarrierCode()Z
    .locals 1

    #@0
    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    #@2
    return v0
.end method

.method public hasRawInput()Z
    .locals 1

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    const/16 v3, 0x4d5

    #@2
    const/16 v2, 0x4cf

    #@4
    .line 249
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@7
    move-result v1

    #@8
    add-int/lit16 v0, v1, 0x87d

    #@a
    .line 250
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x35

    #@c
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@f
    move-result-wide v4

    #@10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    #@17
    move-result v4

    #@18
    add-int v0, v1, v4

    #@1a
    .line 251
    mul-int/lit8 v1, v0, 0x35

    #@1c
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@23
    move-result v4

    #@24
    add-int v0, v1, v4

    #@26
    .line 252
    mul-int/lit8 v4, v0, 0x35

    #@28
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    move v1, v2

    #@2f
    :goto_0
    add-int v0, v4, v1

    #@31
    .line 253
    mul-int/lit8 v1, v0, 0x35

    #@33
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    #@36
    move-result v4

    #@37
    add-int v0, v1, v4

    #@39
    .line 254
    mul-int/lit8 v1, v0, 0x35

    #@3b
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@42
    move-result v4

    #@43
    add-int v0, v1, v4

    #@45
    .line 255
    mul-int/lit8 v1, v0, 0x35

    #@47
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->hashCode()I

    #@4e
    move-result v4

    #@4f
    add-int v0, v1, v4

    #@51
    .line 256
    mul-int/lit8 v1, v0, 0x35

    #@53
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@5a
    move-result v4

    #@5b
    add-int v0, v1, v4

    #@5d
    .line 257
    mul-int/lit8 v1, v0, 0x35

    #@5f
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    #@62
    move-result v4

    #@63
    if-eqz v4, :cond_1

    #@65
    :goto_1
    add-int v0, v1, v2

    #@67
    .line 258
    return v0

    #@68
    :cond_0
    move v1, v3

    #@69
    .line 252
    goto :goto_0

    #@6a
    :cond_1
    move v2, v3

    #@6b
    .line 257
    goto :goto_1
.end method

.method public isItalianLeadingZero()Z
    .locals 1

    #@0
    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    #@2
    return v0
.end method

.method public mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 2
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 196
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@d
    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 199
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@16
    move-result-wide v0

    #@17
    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1a
    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 202
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@27
    .line 204
    :cond_2
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 205
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    #@30
    move-result v0

    #@31
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@34
    .line 207
    :cond_3
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_4

    #@3a
    .line 208
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    #@3d
    move-result v0

    #@3e
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@41
    .line 210
    :cond_4
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 211
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@4e
    .line 213
    :cond_5
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_6

    #@54
    .line 214
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@5b
    .line 216
    :cond_6
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_7

    #@61
    .line 217
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@68
    .line 219
    :cond_7
    return-object p0
.end method

.method public setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 48
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    #@3
    .line 49
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    #@5
    .line 50
    return-object p0
.end method

.method public setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@0
    .prologue
    .line 150
    if-nez p1, :cond_0

    #@2
    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 153
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    #@b
    .line 154
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@d
    .line 155
    return-object p0
.end method

.method public setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    if-nez p1, :cond_0

    #@2
    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 83
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    #@b
    .line 84
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    #@d
    .line 85
    return-object p0
.end method

.method public setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 99
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    #@3
    .line 100
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    #@5
    .line 101
    return-object p0
.end method

.method public setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 64
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    #@3
    .line 65
    iput-wide p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    #@5
    .line 66
    return-object p0
.end method

.method public setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 115
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    #@3
    .line 116
    iput p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    #@5
    .line 117
    return-object p0
.end method

.method public setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    if-nez p1, :cond_0

    #@2
    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 172
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    #@b
    .line 173
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    #@d
    .line 174
    return-object p0
.end method

.method public setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    if-nez p1, :cond_0

    #@2
    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 134
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    #@b
    .line 135
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    #@d
    .line 136
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 264
    .local v0, "outputString":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Country Code: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 265
    const-string/jumbo v1, " National Number: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-wide v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    #@1a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d
    .line 266
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_0

    #@23
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 267
    const-string/jumbo v1, " Leading Zero(s): true"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 270
    const-string/jumbo v1, " Number of leading zeros: "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_2

    #@47
    .line 273
    const-string/jumbo v1, " Extension: "

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_3

    #@59
    .line 276
    const-string/jumbo v1, " Country Code Source: "

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_4

    #@6b
    .line 279
    const-string/jumbo v1, " Preferred Domestic Carrier Code: "

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 280
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    #@74
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 282
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    return-object v1
.end method
