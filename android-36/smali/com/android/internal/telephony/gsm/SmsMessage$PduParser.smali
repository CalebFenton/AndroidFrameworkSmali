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
.field greylist-max-r mCur:I

.field greylist-max-r mPdu:[B

.field blacklist mUserData:[B

.field blacklist mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field greylist mUserDataSeptetPadding:I


# direct methods
.method constructor greylist <init>([B)V
    .registers 3
    .param p1, "pdu"    # [B

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 855
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 856
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 857
    return-void
.end method


# virtual methods
.method blacklist constructUserData(ZZ)I
    .registers 12
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "dataInSeptets"    # Z

    .line 981
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 982
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 983
    .local v0, "userDataLength":I
    const/4 v1, 0x0

    .line 984
    .local v1, "headerSeptets":I
    const/4 v3, 0x0

    .line 986
    .local v3, "userDataHeaderLength":I
    const/4 v4, 0x0

    if-eqz p1, :cond_3a

    .line 987
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    aget-byte v2, v5, v2

    and-int/lit16 v3, v2, 0xff

    .line 989
    new-array v2, v3, [B

    .line 990
    .local v2, "udh":[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    invoke-static {v5, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 992
    add-int v5, v6, v3

    .line 994
    .end local v6    # "offset":I
    .local v5, "offset":I
    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v6, v6, 0x8

    .line 995
    .local v6, "headerBits":I
    div-int/lit8 v1, v6, 0x7

    .line 996
    rem-int/lit8 v7, v6, 0x7

    if-lez v7, :cond_32

    const/4 v7, 0x1

    goto :goto_33

    :cond_32
    move v7, v4

    :goto_33
    add-int/2addr v1, v7

    .line 997
    mul-int/lit8 v7, v1, 0x7

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, v5

    .line 1001
    .end local v5    # "offset":I
    .end local v6    # "headerBits":I
    .local v2, "offset":I
    :cond_3a
    if-eqz p2, :cond_41

    .line 1007
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v5, v5

    sub-int/2addr v5, v2

    .local v5, "bufferLen":I
    goto :goto_4c

    .line 1013
    .end local v5    # "bufferLen":I
    :cond_41
    if-eqz p1, :cond_46

    add-int/lit8 v5, v3, 0x1

    goto :goto_47

    :cond_46
    move v5, v4

    :goto_47
    sub-int v5, v0, v5

    .line 1014
    .restart local v5    # "bufferLen":I
    if-gez v5, :cond_4c

    .line 1015
    const/4 v5, 0x0

    .line 1019
    :cond_4c
    :goto_4c
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 1020
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v8, v8

    invoke-static {v6, v2, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1021
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1023
    if-eqz p2, :cond_65

    .line 1025
    sub-int v6, v0, v1

    .line 1027
    .local v6, "count":I
    if-gez v6, :cond_63

    goto :goto_64

    :cond_63
    move v4, v6

    :goto_64
    return v4

    .line 1030
    .end local v6    # "count":I
    :cond_65
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v4, v4

    return v4
.end method

.method blacklist getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 7

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 909
    .local v0, "addressLength":I
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 912
    .local v1, "lengthBytes":I
    :try_start_e
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_17} :catch_1e

    .line 917
    .local v2, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    nop

    .line 919
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 921
    return-object v2

    .line 913
    .end local v2    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_1e
    move-exception v2

    .line 914
    .local v2, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    .line 916
    .local v3, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method greylist getByte()I
    .registers 4

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method blacklist getSCAddress()Ljava/lang/String;
    .registers 5

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 870
    .local v0, "len":I
    if-nez v0, :cond_8

    .line 872
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    goto :goto_1c

    .line 876
    .end local v1    # "ret":Ljava/lang/String;
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_11} :catch_12

    .line 881
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_1c

    .line 878
    .end local v1    # "ret":Ljava/lang/String;
    :catch_12
    move-exception v1

    .line 879
    .local v1, "tr":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "invalid SC address: "

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    const/4 v2, 0x0

    move-object v1, v2

    .line 884
    .local v1, "ret":Ljava/lang/String;
    :goto_1c
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 886
    return-object v1
.end method

.method blacklist getSCTimestampMillis()J
    .registers 16

    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 931
    .local v1, "year":I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 932
    .local v3, "month":I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 933
    .local v4, "day":I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v5

    .line 934
    .local v5, "hour":I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 935
    .local v6, "minute":I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v7

    .line 942
    .local v7, "second":I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v8, v0, v2

    .line 945
    .local v8, "tzByte":B
    and-int/lit8 v0, v8, -0x9

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 947
    .local v0, "timezoneOffset":I
    and-int/lit8 v2, v8, 0x8

    if-nez v2, :cond_6b

    move v2, v0

    goto :goto_6c

    :cond_6b
    neg-int v2, v0

    :goto_6c
    move v9, v2

    .line 949
    .end local v0    # "timezoneOffset":I
    .local v9, "timezoneOffset":I
    mul-int/lit8 v0, v9, 0xf

    mul-int/lit8 v10, v0, 0x3c

    .line 952
    .local v10, "timeZoneOffsetSeconds":I
    const/16 v0, 0x5a

    if-lt v1, v0, :cond_78

    add-int/lit16 v0, v1, 0x76c

    goto :goto_7a

    :cond_78
    add-int/lit16 v0, v1, 0x7d0

    :goto_7a
    move v2, v0

    .line 954
    .local v2, "fullYear":I
    :try_start_7b
    invoke-static/range {v2 .. v7}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 961
    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    sget-object v11, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 962
    invoke-virtual {v0, v11}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v11
    :try_end_85
    .catch Ljava/time/DateTimeException; {:try_start_7b .. :try_end_85} :catch_8b

    int-to-long v13, v10

    sub-long/2addr v11, v13

    .line 964
    .local v11, "epochSeconds":J
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v11

    return-wide v13

    .line 965
    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v11    # "epochSeconds":J
    :catch_8b
    move-exception v0

    .line 966
    .local v0, "ex":Ljava/time/DateTimeException;
    const-string v11, "SmsMessage"

    const-string v12, "Invalid timestamp"

    invoke-static {v11, v12, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    .end local v0    # "ex":Ljava/time/DateTimeException;
    const-wide/16 v11, 0x0

    return-wide v11
.end method

.method greylist getUserData()[B
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method blacklist getUserDataGSM7Bit(III)Ljava/lang/String;
    .registers 10
    .param p1, "septetCount"    # I
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    .end local p1    # "septetCount":I
    .end local p2    # "languageTable":I
    .end local p3    # "languageShiftTable":I
    .local v2, "septetCount":I
    .local v4, "languageTable":I
    .local v5, "languageShiftTable":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object p1

    .line 1067
    .local p1, "ret":Ljava/lang/String;
    iget p2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    mul-int/lit8 p3, v2, 0x7

    div-int/lit8 p3, p3, 0x8

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1069
    return-object p1
.end method

.method blacklist getUserDataGSM8bit(I)Ljava/lang/String;
    .registers 4
    .param p1, "byteCount"    # I

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1086
    return-object v0
.end method

.method blacklist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method blacklist getUserDataKSC5601(I)Ljava/lang/String;
    .registers 6
    .param p1, "byteCount"    # I

    .line 1122
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v3, "KSC5601"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1126
    .local v0, "ret":Ljava/lang/String;
    goto :goto_17

    .line 1123
    .end local v0    # "ret":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 1124
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1125
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1128
    .end local v1    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_17
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1129
    return-object v0
.end method

.method greylist getUserDataUCS2(I)Ljava/lang/String;
    .registers 6
    .param p1, "byteCount"    # I

    .line 1101
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string/jumbo v3, "utf-16"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1105
    .local v0, "ret":Ljava/lang/String;
    goto :goto_18

    .line 1102
    .end local v0    # "ret":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 1103
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1104
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1107
    .end local v1    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_18
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1108
    return-object v0
.end method

.method blacklist moreDataPresent()Z
    .registers 3

    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
