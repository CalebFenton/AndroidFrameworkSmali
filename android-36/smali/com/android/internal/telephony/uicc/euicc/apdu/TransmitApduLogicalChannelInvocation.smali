.class public Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "TransmitApduLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
        "Lcom/android/internal/telephony/uicc/IccIoResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method


# virtual methods
.method protected blacklist parseResult(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/uicc/IccIoResult;
    .registers 5

    .line 58
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "TransApdu"

    if-nez p0, :cond_d

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 59
    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    goto :goto_2d

    .line 61
    :cond_d
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_17

    .line 62
    const-string p0, "Empty response"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 63
    :cond_17
    instance-of p1, p0, Lcom/android/internal/telephony/CommandException;

    const-string v1, "CommandException"

    if-eqz p1, :cond_21

    .line 64
    invoke-static {v0, v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 66
    :cond_21
    invoke-static {v0, v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_24
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v2, 0x6f

    invoke-direct {v1, v2, p0, p1}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 71
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Response: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected bridge synthetic blacklist parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/uicc/IccIoResult;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist sendRequestMessage(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;Landroid/os/Message;)V
    .registers 15

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransApdu"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    iget p0, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cla:I

    or-int v4, p0, v3

    iget v5, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->ins:I

    iget v6, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p1:I

    iget v7, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p2:I

    iget v8, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->p3:I

    iget-object v9, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->cmdHex:Ljava/lang/String;

    iget-boolean v10, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->isEs10:Z

    move-object v11, p2

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V

    return-void
.end method

.method protected bridge synthetic blacklist sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->sendRequestMessage(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;Landroid/os/Message;)V

    return-void
.end method
