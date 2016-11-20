.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field mCur:I

.field mPdu:[B

.field mUserData:[B

.field mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field mUserDataSeptetPadding:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "pdu"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 506
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@6
    .line 507
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@8
    .line 508
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    #@a
    .line 505
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 13
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "dataInSeptets"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 625
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@3
    .line 626
    .local v4, "offset":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@5
    add-int/lit8 v5, v4, 0x1

    #@7
    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v9, v9, v4

    #@9
    and-int/lit16 v8, v9, 0xff

    #@b
    .line 627
    .local v8, "userDataLength":I
    const/4 v3, 0x0

    #@c
    .line 628
    .local v3, "headerSeptets":I
    const/4 v7, 0x0

    #@d
    .line 630
    .local v7, "userDataHeaderLength":I
    if-eqz p1, :cond_6

    #@f
    .line 631
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@11
    add-int/lit8 v4, v5, 0x1

    #@13
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v9, v9, v5

    #@15
    and-int/lit16 v7, v9, 0xff

    #@17
    .line 633
    new-array v6, v7, [B

    #@19
    .line 634
    .local v6, "udh":[B
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@1b
    invoke-static {v9, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 635
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    #@21
    move-result-object v9

    #@22
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@24
    .line 636
    add-int/2addr v4, v7

    #@25
    .line 638
    add-int/lit8 v9, v7, 0x1

    #@27
    mul-int/lit8 v2, v9, 0x8

    #@29
    .line 639
    .local v2, "headerBits":I
    div-int/lit8 v3, v2, 0x7

    #@2b
    .line 640
    rem-int/lit8 v9, v2, 0x7

    #@2d
    if-lez v9, :cond_1

    #@2f
    const/4 v9, 0x1

    #@30
    :goto_0
    add-int/2addr v3, v9

    #@31
    .line 641
    mul-int/lit8 v9, v3, 0x7

    #@33
    sub-int/2addr v9, v2

    #@34
    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    #@36
    .line 645
    .end local v2    # "headerBits":I
    .end local v6    # "udh":[B
    :goto_1
    if-eqz p2, :cond_2

    #@38
    .line 651
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@3a
    array-length v9, v9

    #@3b
    sub-int v0, v9, v4

    #@3d
    .line 663
    .local v0, "bufferLen":I
    :cond_0
    :goto_2
    new-array v9, v0, [B

    #@3f
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    #@41
    .line 664
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@43
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    #@45
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    #@47
    array-length v12, v12

    #@48
    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4b
    .line 665
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4d
    .line 667
    if-eqz p2, :cond_5

    #@4f
    .line 669
    sub-int v1, v8, v3

    #@51
    .line 671
    .local v1, "count":I
    if-gez v1, :cond_4

    #@53
    :goto_3
    return v10

    #@54
    .end local v0    # "bufferLen":I
    .end local v1    # "count":I
    .restart local v2    # "headerBits":I
    .restart local v6    # "udh":[B
    :cond_1
    move v9, v10

    #@55
    .line 640
    goto :goto_0

    #@56
    .line 657
    .end local v2    # "headerBits":I
    .end local v6    # "udh":[B
    :cond_2
    if-eqz p1, :cond_3

    #@58
    add-int/lit8 v9, v7, 0x1

    #@5a
    :goto_4
    sub-int v0, v8, v9

    #@5c
    .line 658
    .restart local v0    # "bufferLen":I
    if-gez v0, :cond_0

    #@5e
    .line 659
    const/4 v0, 0x0

    #@5f
    goto :goto_2

    #@60
    .end local v0    # "bufferLen":I
    :cond_3
    move v9, v10

    #@61
    .line 657
    goto :goto_4

    #@62
    .restart local v0    # "bufferLen":I
    .restart local v1    # "count":I
    :cond_4
    move v10, v1

    #@63
    .line 671
    goto :goto_3

    #@64
    .line 674
    .end local v1    # "count":I
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    #@66
    array-length v9, v9

    #@67
    return v9

    #@68
    .end local v0    # "bufferLen":I
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_6
    move v4, v5

    #@69
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 6

    #@0
    .prologue
    .line 559
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@2
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4
    aget-byte v4, v4, v5

    #@6
    and-int/lit16 v0, v4, 0xff

    #@8
    .line 560
    .local v0, "addressLength":I
    add-int/lit8 v4, v0, 0x1

    #@a
    div-int/lit8 v4, v4, 0x2

    #@c
    add-int/lit8 v2, v4, 0x2

    #@e
    .line 563
    .local v2, "lengthBytes":I
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@10
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@12
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@14
    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 570
    .local v3, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@19
    add-int/2addr v4, v2

    #@1a
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@1c
    .line 572
    return-object v3

    #@1d
    .line 564
    .end local v3    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_0
    move-exception v1

    #@1e
    .line 565
    .local v1, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    #@1f
    .line 567
    .local v3, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    new-instance v4, Ljava/lang/RuntimeException;

    #@21
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4
.end method

.method getByte()I
    .locals 3

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@2
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@8
    aget-byte v0, v0, v1

    #@a
    and-int/lit16 v0, v0, 0xff

    #@c
    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@3
    move-result v0

    #@4
    .line 522
    .local v0, "len":I
    if-nez v0, :cond_0

    #@6
    .line 524
    const/4 v1, 0x0

    #@7
    .line 536
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@9
    add-int/2addr v3, v0

    #@a
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@c
    .line 538
    return-object v1

    #@d
    .line 529
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@f
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@11
    .line 528
    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    #@16
    .line 530
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@17
    .line 531
    .local v2, "tr":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SmsMessage"

    #@1a
    const-string/jumbo v4, "invalid SC address: "

    #@1d
    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 532
    const/4 v1, 0x0

    #@21
    .local v1, "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 14

    #@0
    .prologue
    .line 582
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@2
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4
    add-int/lit8 v11, v10, 0x1

    #@6
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@8
    aget-byte v9, v9, v10

    #@a
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@d
    move-result v8

    #@e
    .line 583
    .local v8, "year":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@10
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@12
    add-int/lit8 v11, v10, 0x1

    #@14
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@16
    aget-byte v9, v9, v10

    #@18
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@1b
    move-result v3

    #@1c
    .line 584
    .local v3, "month":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@1e
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@20
    add-int/lit8 v11, v10, 0x1

    #@22
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@24
    aget-byte v9, v9, v10

    #@26
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@29
    move-result v0

    #@2a
    .line 585
    .local v0, "day":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@2c
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@2e
    add-int/lit8 v11, v10, 0x1

    #@30
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@32
    aget-byte v9, v9, v10

    #@34
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@37
    move-result v1

    #@38
    .line 586
    .local v1, "hour":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@3a
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@3c
    add-int/lit8 v11, v10, 0x1

    #@3e
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@40
    aget-byte v9, v9, v10

    #@42
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@45
    move-result v2

    #@46
    .line 587
    .local v2, "minute":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@48
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4a
    add-int/lit8 v11, v10, 0x1

    #@4c
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4e
    aget-byte v9, v9, v10

    #@50
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@53
    move-result v4

    #@54
    .line 594
    .local v4, "second":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@56
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@58
    add-int/lit8 v11, v10, 0x1

    #@5a
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@5c
    aget-byte v7, v9, v10

    #@5e
    .line 597
    .local v7, "tzByte":B
    and-int/lit8 v9, v7, -0x9

    #@60
    int-to-byte v9, v9

    #@61
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@64
    move-result v6

    #@65
    .line 599
    .local v6, "timezoneOffset":I
    and-int/lit8 v9, v7, 0x8

    #@67
    if-nez v9, :cond_0

    #@69
    .line 601
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    #@6b
    const-string/jumbo v9, "UTC"

    #@6e
    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@71
    .line 604
    .local v5, "time":Landroid/text/format/Time;
    const/16 v9, 0x5a

    #@73
    if-lt v8, v9, :cond_1

    #@75
    add-int/lit16 v9, v8, 0x76c

    #@77
    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    #@79
    .line 605
    add-int/lit8 v9, v3, -0x1

    #@7b
    iput v9, v5, Landroid/text/format/Time;->month:I

    #@7d
    .line 606
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    #@7f
    .line 607
    iput v1, v5, Landroid/text/format/Time;->hour:I

    #@81
    .line 608
    iput v2, v5, Landroid/text/format/Time;->minute:I

    #@83
    .line 609
    iput v4, v5, Landroid/text/format/Time;->second:I

    #@85
    .line 612
    const/4 v9, 0x1

    #@86
    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    #@89
    move-result-wide v10

    #@8a
    mul-int/lit8 v9, v6, 0xf

    #@8c
    mul-int/lit8 v9, v9, 0x3c

    #@8e
    mul-int/lit16 v9, v9, 0x3e8

    #@90
    int-to-long v12, v9

    #@91
    sub-long/2addr v10, v12

    #@92
    return-wide v10

    #@93
    .line 599
    .end local v5    # "time":Landroid/text/format/Time;
    :cond_0
    neg-int v6, v6

    #@94
    goto :goto_0

    #@95
    .line 604
    .restart local v5    # "time":Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    #@97
    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    #@2
    return-object v0
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 7
    .param p1, "septetCount"    # I
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@2
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4
    .line 708
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    #@6
    move v2, p1

    #@7
    move v4, p2

    #@8
    move v5, p3

    #@9
    .line 707
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    .line 710
    .local v6, "ret":Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@f
    mul-int/lit8 v1, p1, 0x7

    #@11
    div-int/lit8 v1, v1, 0x8

    #@13
    add-int/2addr v0, v1

    #@14
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@16
    .line 712
    return-object v6
.end method

.method getUserDataGSM8bit(I)Ljava/lang/String;
    .locals 3
    .param p1, "byteCount"    # I

    #@0
    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@2
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 727
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@a
    add-int/2addr v1, p1

    #@b
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@d
    .line 729
    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    #@0
    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@2
    return-object v0
.end method

.method getUserDataKSC5601(I)Ljava/lang/String;
    .locals 5
    .param p1, "byteCount"    # I

    #@0
    .prologue
    .line 764
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@4
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@6
    const-string/jumbo v4, "KSC5601"

    #@9
    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 770
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@e
    add-int/2addr v2, p1

    #@f
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@11
    .line 771
    return-object v1

    #@12
    .line 765
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@13
    .line 766
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, ""

    #@16
    .line 767
    .restart local v1    # "ret":Ljava/lang/String;
    const-string/jumbo v2, "SmsMessage"

    #@19
    const-string/jumbo v3, "implausible UnsupportedEncodingException"

    #@1c
    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 5
    .param p1, "byteCount"    # I

    #@0
    .prologue
    .line 743
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@4
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@6
    const-string/jumbo v4, "utf-16"

    #@9
    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 749
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@e
    add-int/2addr v2, p1

    #@f
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@11
    .line 750
    return-object v1

    #@12
    .line 744
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@13
    .line 745
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, ""

    #@16
    .line 746
    .restart local v1    # "ret":Ljava/lang/String;
    const-string/jumbo v2, "SmsMessage"

    #@19
    const-string/jumbo v3, "implausible UnsupportedEncodingException"

    #@1c
    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method moreDataPresent()Z
    .locals 2

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    #@2
    array-length v0, v0

    #@3
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    #@5
    if-le v0, v1, :cond_0

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
