.class Lcom/android/internal/telephony/cat/SendSMSParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "SendSMSParams.java"


# instance fields
.field blacklist mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

.field blacklist mDisplayText:Lcom/android/internal/telephony/cat/DisplayTextParams;

.field blacklist mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/DisplayTextParams;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 28
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 29
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

    .line 30
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->mDisplayText:Lcom/android/internal/telephony/cat/DisplayTextParams;

    return-void
.end method
