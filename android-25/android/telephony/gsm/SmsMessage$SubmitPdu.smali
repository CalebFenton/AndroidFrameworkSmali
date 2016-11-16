.class public Landroid/telephony/gsm/SmsMessage$SubmitPdu;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitPdu"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public encodedMessage:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public encodedScAddress:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V
    .locals 1
    .param p1, "spb"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    #@5
    iput-object v0, p0, Landroid/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    #@7
    .line 121
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    #@9
    iput-object v0, p0, Landroid/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    #@b
    .line 119
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SubmitPdu: encodedScAddress = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 129
    iget-object v1, p0, Landroid/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 130
    const-string/jumbo v1, ", encodedMessage = "

    #@19
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 131
    iget-object v1, p0, Landroid/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    #@1f
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
