.class public Landroid/telephony/gsm/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gsm/SmsMessage$MessageClass;,
        Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENCODING_7BIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENCODING_8BIT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENCODING_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_USER_DATA_BYTES:I = 0x8c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-static {}, Landroid/telephony/gsm/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/telephony/gsm/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    #@7
    .line 138
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    iput-object p1, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@5
    .line 142
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 4
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@3
    move-result-object v1

    #@4
    .line 201
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v2, 0x4

    #@5
    new-array v0, v2, [I

    #@7
    .line 202
    .local v0, "ret":[I
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    #@9
    const/4 v3, 0x0

    #@a
    aput v2, v0, v3

    #@c
    .line 203
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    #@e
    const/4 v3, 0x1

    #@f
    aput v2, v0, v3

    #@11
    .line 204
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    #@13
    const/4 v3, 0x2

    #@14
    aput v2, v0, v3

    #@16
    .line 205
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@18
    const/4 v3, 0x3

    #@19
    aput v2, v0, v3

    #@1b
    .line 206
    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-static {p0, p1}, Landroid/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static createFromPdu([B)Landroid/telephony/gsm/SmsMessage;
    .locals 3
    .param p0, "pdu"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 155
    .local v0, "activePhone":I
    const/4 v2, 0x2

    #@9
    if-ne v2, v0, :cond_0

    #@b
    .line 156
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    #@e
    move-result-object v1

    #@f
    .line 161
    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage;

    #@11
    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    #@14
    return-object v2

    #@15
    .line 158
    .end local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    #@18
    move-result-object v1

    #@19
    .restart local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 618
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 619
    .local v0, "activePhone":I
    const/4 v1, 0x2

    #@9
    if-ne v1, v0, :cond_0

    #@b
    .line 620
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@d
    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    #@10
    return-object v1

    #@11
    .line 622
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@13
    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    #@16
    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 274
    .local v0, "activePhone":I
    const/4 v2, 0x2

    #@9
    if-ne v2, v0, :cond_0

    #@b
    .line 276
    const/4 v2, 0x0

    #@c
    .line 275
    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@f
    move-result-object v1

    #@10
    .line 282
    .local v1, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$SubmitPdu;

    #@12
    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    #@15
    return-object v2

    #@16
    .line 278
    .end local v1    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@19
    move-result-object v1

    #@1a
    .restart local v1    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 247
    .local v0, "activePhone":I
    const/4 v2, 0x2

    #@9
    if-ne v2, v0, :cond_0

    #@b
    .line 250
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    #@e
    move-result-object v2

    #@f
    .line 248
    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@12
    move-result-object v1

    #@13
    .line 256
    .local v1, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$SubmitPdu;

    #@15
    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    #@18
    return-object v2

    #@19
    .line 252
    .end local v1    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@1c
    move-result-object v1

    #@1d
    .restart local v1    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 303
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 305
    .local v0, "activePhone":I
    const/4 v2, 0x2

    #@9
    if-ne v2, v0, :cond_0

    #@b
    .line 306
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@e
    move-result-object v1

    #@f
    .line 313
    .local v1, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/gsm/SmsMessage$SubmitPdu;

    #@11
    invoke-direct {v2, v1}, Landroid/telephony/gsm/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    #@14
    return-object v2

    #@15
    .line 309
    .end local v1    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@18
    move-result-object v1

    #@19
    .restart local v1    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .param p0, "pdu"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 173
    .local v0, "activePhone":I
    const/4 v1, 0x2

    #@9
    if-ne v1, v0, :cond_0

    #@b
    .line 174
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 176
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    return v1
.end method


# virtual methods
.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/gsm/SmsMessage$MessageClass;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 363
    iget-object v1, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    #@9
    move-result v0

    #@a
    .line 365
    .local v0, "index":I
    invoke-static {}, Landroid/telephony/gsm/SmsMessage$MessageClass;->values()[Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@d
    move-result-object v1

    #@e
    aget-object v1, v1, v0

    #@10
    return-object v1
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPdu()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 435
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStatus()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 589
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTimestampMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getUserData()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmail()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReplace()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Landroid/telephony/gsm/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
