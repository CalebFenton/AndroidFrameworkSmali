.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final blacklist OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final blacklist OFFSET_ADDRESS_VALUE:I = 0x2

.field static final blacklist OFFSET_TOA:I = 0x1


# direct methods
.method public constructor greylist <init>([BII)V
    .registers 12
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 45
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 51
    .local v0, "addressLength":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 52
    .local v1, "toa":I
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    .line 55
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_60

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3a

    .line 62
    mul-int/lit8 v2, v0, 0x4

    div-int/lit8 v2, v2, 0x7

    .line 64
    .local v2, "countSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 66
    .end local v2    # "countSeptets":I
    goto :goto_5f

    .line 71
    :cond_3a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aget-byte v3, v3, v5

    .line 73
    .local v3, "lastByte":B
    and-int/lit8 v5, v0, 0x1

    if-ne v5, v2, :cond_4f

    .line 75
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aget-byte v7, v5, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 77
    :cond_4f
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    invoke-static {v5, v2, v6, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v4, p3, -0x1

    aput-byte v3, v2, v4

    .line 86
    .end local v3    # "lastByte":B
    :goto_5f
    return-void

    .line 56
    :cond_60
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TOA - high bit must be set. toa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method


# virtual methods
.method public blacklist getAddressString()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isAlphanumeric()Z
    .registers 3

    .line 98
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist isCphsVoiceMessageClear()Z
    .registers 3

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public blacklist isCphsVoiceMessageIndicatorAddress()Z
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    nop

    .line 132
    :goto_1c
    return v1
.end method

.method public greylist isCphsVoiceMessageSet()Z
    .registers 3

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public blacklist isNetworkSpecific()Z
    .registers 3

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
