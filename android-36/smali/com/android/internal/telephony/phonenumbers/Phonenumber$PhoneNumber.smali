.class public Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
.super Ljava/lang/Object;
.source "Phonenumber.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field private blacklist countryCode_:I

.field private blacklist extension_:Ljava/lang/String;

.field private blacklist hasCountryCode:Z

.field private blacklist hasCountryCodeSource:Z

.field private blacklist hasExtension:Z

.field private blacklist hasItalianLeadingZero:Z

.field private blacklist hasNationalNumber:Z

.field private blacklist hasNumberOfLeadingZeros:Z

.field private blacklist hasPreferredDomesticCarrierCode:Z

.field private blacklist hasRawInput:Z

.field private blacklist italianLeadingZero_:Z

.field private blacklist nationalNumber_:J

.field private blacklist numberOfLeadingZeros_:I

.field private blacklist preferredDomesticCarrierCode_:Ljava/lang/String;

.field private blacklist rawInput_:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    .line 77
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 96
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-void
.end method


# virtual methods
.method public final blacklist clear()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 1

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCode()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearNationalNumber()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearItalianLeadingZero()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearNumberOfLeadingZeros()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return-object p0
.end method

.method public blacklist clearCountryCode()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    return-object p0
.end method

.method public blacklist clearCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    .line 160
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public blacklist clearExtension()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearItalianLeadingZero()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    return-object p0
.end method

.method public blacklist clearNationalNumber()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    return-object p0
.end method

.method public blacklist clearNumberOfLeadingZeros()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    return-object p0
.end method

.method public blacklist clearPreferredDomesticCarrierCode()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist clearRawInput()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 240
    instance-of v0, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist exactlySameAs(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 230
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    iget v3, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    if-ne v2, v3, :cond_51

    iget-wide v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    iget-wide v4, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    if-ne v2, v3, :cond_51

    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    iget v3, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iget-object v3, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result p1

    if-ne p0, p1, :cond_51

    return v1

    :cond_51
    return v0
.end method

.method public blacklist getCountryCode()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    return p0
.end method

.method public blacklist getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public blacklist getExtension()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNationalNumber()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    return-wide v0
.end method

.method public blacklist getNumberOfLeadingZeros()I
    .registers 1

    .line 114
    iget p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    return p0
.end method

.method public blacklist getPreferredDomesticCarrierCode()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRawInput()Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist hasCountryCode()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    return p0
.end method

.method public blacklist hasCountryCodeSource()Z
    .registers 1

    .line 148
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    return p0
.end method

.method public blacklist hasExtension()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    return p0
.end method

.method public blacklist hasItalianLeadingZero()Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    return p0
.end method

.method public blacklist hasNationalNumber()Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    return p0
.end method

.method public blacklist hasNumberOfLeadingZeros()Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    return p0
.end method

.method public blacklist hasPreferredDomesticCarrierCode()Z
    .registers 1

    .line 167
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    return p0
.end method

.method public blacklist hasRawInput()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    const/16 v0, 0x87d

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    if-eqz v1, :cond_2f

    move v1, v3

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result p0

    if-eqz p0, :cond_62

    move v2, v3

    :cond_62
    add-int/2addr v0, v2

    return v0
.end method

.method public blacklist isItalianLeadingZero()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    return p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 199
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 202
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 205
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 208
    :cond_34
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 211
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 214
    :cond_4e
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 215
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 217
    :cond_5b
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 218
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    :cond_68
    return-object p0
.end method

.method public blacklist setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    return-object p0
.end method

.method public blacklist setCountryCodeSource(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public blacklist setExtension(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setItalianLeadingZero(Z)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    .line 101
    iput-boolean p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    return-object p0
.end method

.method public blacklist setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    .line 66
    iput-wide p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    return-object p0
.end method

.method public blacklist setNumberOfLeadingZeros(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    .line 117
    iput p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    return-object p0
.end method

.method public blacklist setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setRawInput(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    const-string v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 268
    const-string v1, " Leading Zero(s): true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 271
    const-string v1, " Number of leading zeros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_3a
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 274
    const-string v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_4a
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 277
    const-string v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_5a
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 280
    const-string v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
