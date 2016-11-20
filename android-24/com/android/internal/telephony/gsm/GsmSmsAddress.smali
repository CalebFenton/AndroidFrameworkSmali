.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# direct methods
.method public constructor <init>([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    #@5
    .line 42
    new-array v4, p3, [B

    #@7
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@9
    .line 43
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@b
    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 46
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@10
    aget-byte v4, v4, v5

    #@12
    and-int/lit16 v0, v4, 0xff

    #@14
    .line 48
    .local v0, "addressLength":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@16
    aget-byte v4, v4, v7

    #@18
    and-int/lit16 v3, v4, 0xff

    #@1a
    .line 49
    .local v3, "toa":I
    shr-int/lit8 v4, v3, 0x4

    #@1c
    and-int/lit8 v4, v4, 0x7

    #@1e
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    #@20
    .line 52
    and-int/lit16 v4, v3, 0x80

    #@22
    const/16 v5, 0x80

    #@24
    if-eq v4, v5, :cond_0

    #@26
    .line 53
    new-instance v4, Ljava/text/ParseException;

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "Invalid TOA - high bit must be set. toa = "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    .line 54
    add-int/lit8 v6, p2, 0x1

    #@3e
    .line 53
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@41
    throw v4

    #@42
    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_1

    #@48
    .line 59
    mul-int/lit8 v4, v0, 0x4

    #@4a
    div-int/lit8 v1, v4, 0x7

    #@4c
    .line 61
    .local v1, "countSeptets":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@4e
    .line 62
    const/4 v5, 0x2

    #@4f
    .line 61
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    #@55
    .line 41
    .end local v1    # "countSeptets":I
    :goto_0
    return-void

    #@56
    .line 68
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@58
    add-int/lit8 v5, p3, -0x1

    #@5a
    aget-byte v2, v4, v5

    #@5c
    .line 70
    .local v2, "lastByte":B
    and-int/lit8 v4, v0, 0x1

    #@5e
    if-ne v4, v7, :cond_2

    #@60
    .line 72
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@62
    add-int/lit8 v5, p3, -0x1

    #@64
    aget-byte v6, v4, v5

    #@66
    or-int/lit16 v6, v6, 0xf0

    #@68
    int-to-byte v6, v6

    #@69
    aput-byte v6, v4, v5

    #@6b
    .line 74
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@6d
    .line 75
    add-int/lit8 v5, p3, -0x1

    #@6f
    .line 74
    invoke-static {v4, v7, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    #@75
    .line 78
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@77
    add-int/lit8 v5, p3, -0x1

    #@79
    aput-byte v2, v4, v5

    #@7b
    goto :goto_0
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    #@0
    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    #@2
    const/4 v1, 0x5

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@9
    const/4 v2, 0x2

    #@a
    aget-byte v1, v1, v2

    #@c
    and-int/lit16 v1, v1, 0xff

    #@e
    const/16 v2, 0x10

    #@10
    if-ne v1, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 149
    :cond_0
    return v0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/4 v3, 0x4

    #@9
    if-ne v2, v3, :cond_1

    #@b
    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    #@e
    move-result v2

    #@f
    .line 126
    if-eqz v2, :cond_1

    #@11
    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@13
    aget-byte v2, v2, v0

    #@15
    and-int/lit8 v2, v2, 0xf

    #@17
    if-nez v2, :cond_0

    #@19
    .line 126
    :goto_0
    return v0

    #@1a
    :cond_0
    move v0, v1

    #@1b
    .line 127
    goto :goto_0

    #@1c
    :cond_1
    move v0, v1

    #@1d
    .line 126
    goto :goto_0
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    #@9
    const/4 v2, 0x2

    #@a
    aget-byte v1, v1, v2

    #@c
    and-int/lit16 v1, v1, 0xff

    #@e
    const/16 v2, 0x11

    #@10
    if-ne v1, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 137
    :cond_0
    return v0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    #@0
    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method
