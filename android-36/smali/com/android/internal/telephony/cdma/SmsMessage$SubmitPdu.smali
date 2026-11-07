.class public Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitPdu"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;-><init>()V

    .line 126
    return-void
.end method
