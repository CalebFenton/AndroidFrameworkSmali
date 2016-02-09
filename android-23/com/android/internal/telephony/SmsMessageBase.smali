.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    }
.end annotation


# instance fields
.field protected mEmailBody:Ljava/lang/String;

.field protected mEmailFrom:Ljava/lang/String;

.field protected mIndexOnIcc:I

.field protected mIsEmail:Z

.field protected mIsMwi:Z

.field protected mMessageBody:Ljava/lang/String;

.field public mMessageRef:I

.field protected mMwiDontStore:Z

.field protected mMwiSense:Z

.field protected mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mPdu:[B

.field protected mPseudoSubject:Ljava/lang/String;

.field protected mScAddress:Ljava/lang/String;

.field protected mScTimeMillis:J

.field protected mStatusOnIcc:I

.field protected mUserData:[B

.field protected mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 80
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    #@6
    .line 85
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    #@8
    .line 32
    return-void
.end method

.method public static calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 380
    new-instance v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@2
    invoke-direct {v5}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    #@5
    .line 381
    .local v5, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v6

    #@9
    mul-int/lit8 v3, v6, 0x2

    #@b
    .line 382
    .local v3, "octets":I
    const/4 v6, 0x3

    #@c
    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@e
    .line 383
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@11
    move-result v6

    #@12
    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    #@14
    .line 384
    const/16 v6, 0x8c

    #@16
    if-le v3, v6, :cond_3

    #@18
    .line 390
    const/16 v0, 0x86

    #@1a
    .line 391
    .local v0, "maxUserDataBytesWithHeader":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    #@1d
    move-result v6

    #@1e
    if-nez v6, :cond_0

    #@20
    .line 393
    const/16 v6, 0x4a4

    #@22
    if-gt v3, v6, :cond_0

    #@24
    .line 394
    const/16 v0, 0x84

    #@26
    .line 398
    :cond_0
    const/4 v4, 0x0

    #@27
    .line 399
    .local v4, "pos":I
    const/4 v1, 0x0

    #@28
    .line 400
    .local v1, "msgCount":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@2b
    move-result v6

    #@2c
    if-ge v4, v6, :cond_2

    #@2e
    .line 401
    invoke-static {v4, v0, p0}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    #@31
    move-result v2

    #@32
    .line 403
    .local v2, "nextPos":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@35
    move-result v6

    #@36
    if-ne v2, v6, :cond_1

    #@38
    .line 404
    div-int/lit8 v6, v0, 0x2

    #@3a
    add-int/2addr v6, v4

    #@3b
    .line 405
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3e
    move-result v7

    #@3f
    .line 404
    sub-int/2addr v6, v7

    #@40
    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@42
    .line 407
    :cond_1
    move v4, v2

    #@43
    .line 408
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .line 410
    .end local v2    # "nextPos":I
    :cond_2
    iput v1, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@48
    .line 416
    .end local v0    # "maxUserDataBytesWithHeader":I
    .end local v1    # "msgCount":I
    .end local v4    # "pos":I
    :goto_1
    return-object v5

    #@49
    .line 412
    :cond_3
    const/4 v6, 0x1

    #@4a
    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@4c
    .line 413
    rsub-int v6, v3, 0x8c

    #@4e
    div-int/lit8 v6, v6, 0x2

    #@50
    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@52
    goto :goto_1
.end method

.method public static findNextUnicodePosition(IILjava/lang/CharSequence;)I
    .locals 4
    .param p0, "currentPosition"    # I
    .param p1, "byteLimit"    # I
    .param p2, "msgBody"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 362
    div-int/lit8 v2, p1, 0x2

    #@2
    add-int/2addr v2, p0

    #@3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v3

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v1

    #@b
    .line 366
    .local v1, "nextPos":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v2

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 367
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    #@14
    move-result-object v0

    #@15
    .line 368
    .local v0, "breakIterator":Ljava/text/BreakIterator;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    #@1c
    .line 369
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_0

    #@22
    .line 370
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->preceding(I)I

    #@25
    move-result v1

    #@26
    .line 373
    .end local v0    # "breakIterator":Ljava/text/BreakIterator;
    :cond_0
    return v1
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    #@3
    const-string/jumbo v2, "( /)|( )"

    #@6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 346
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    #@b
    if-ge v1, v3, :cond_0

    #@d
    return-void

    #@e
    .line 347
    :cond_0
    const/4 v1, 0x0

    #@f
    aget-object v1, v0, v1

    #@11
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    #@13
    .line 348
    const/4 v1, 0x1

    #@14
    aget-object v1, v0, v1

    #@16
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    #@18
    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    #@1a
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    #@20
    .line 337
    return-void
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    #@0
    .prologue
    .line 314
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    #@2
    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 118
    return-object v1

    #@6
    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    #@2
    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    #@0
    .prologue
    .line 305
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    #@2
    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    #@0
    .prologue
    .line 174
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    #@2
    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    #@2
    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@2
    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    #@0
    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    #@2
    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    #@f
    .line 317
    :cond_0
    return-void
.end method
