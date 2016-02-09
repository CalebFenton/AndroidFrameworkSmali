.class public Lcom/android/internal/telephony/TelephonyCapabilities;
.super Ljava/lang/Object;
.source "TelephonyCapabilities.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyCapabilities"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canDistinguishDialingAndConnected(I)Z
    .locals 1
    .param p0, "phoneType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 193
    if-ne p0, v0, :cond_0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public static getDeviceIdLabel(Lcom/android/internal/telephony/Phone;)I
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 105
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 106
    const v0, 0x104008b

    #@a
    return v0

    #@b
    .line 107
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x2

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 108
    const v0, 0x104008c

    #@15
    return v0

    #@16
    .line 110
    :cond_1
    const-string/jumbo v0, "TelephonyCapabilities"

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "getDeviceIdLabel: no known label for phone "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 111
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 112
    const/4 v0, 0x0

    #@35
    return v0
.end method

.method public static supportsAdn(I)Z
    .locals 1
    .param p0, "phoneType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 182
    if-ne p0, v0, :cond_0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public static supportsAnswerAndHold(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 161
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@4
    move-result v1

    #@5
    if-eq v1, v0, :cond_0

    #@7
    .line 162
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x3

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 161
    :cond_0
    :goto_0
    return v0

    #@f
    .line 162
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public static supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 127
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@4
    move-result v1

    #@5
    if-eq v1, v0, :cond_0

    #@7
    .line 128
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x3

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 127
    :cond_0
    :goto_0
    return v0

    #@f
    .line 128
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public static supportsEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 48
    const-string/jumbo v1, "TelephonyCapabilities"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "supportsEcm: Phone type = "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@13
    move-result v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 49
    const-string/jumbo v3, " Ims Phone = "

    #@1b
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 49
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@22
    move-result-object v3

    #@23
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 50
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x2

    #@33
    if-eq v1, v2, :cond_0

    #@35
    .line 51
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@38
    move-result-object v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 50
    :cond_0
    :goto_0
    return v0

    #@3c
    .line 51
    :cond_1
    const/4 v0, 0x0

    #@3d
    goto :goto_0
.end method

.method public static supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 141
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@4
    move-result v1

    #@5
    if-eq v1, v0, :cond_0

    #@7
    .line 142
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x3

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 141
    :cond_0
    :goto_0
    return v0

    #@f
    .line 143
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x5

    #@14
    if-eq v1, v2, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public static supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 93
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static supportsOtasp(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 72
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 81
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
