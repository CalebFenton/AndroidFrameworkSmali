.class Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "OpenLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Ljava/lang/String;",
        "Landroid/telephony/IccOpenLogicalChannelResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method


# virtual methods
.method protected blacklist parseResult(Landroid/os/AsyncResult;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 8

    .line 56
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v0, 0x0

    const-string v1, "OpenChan"

    if-nez p0, :cond_2c

    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_2c

    .line 57
    check-cast p0, [I

    const/4 p1, 0x0

    .line 58
    aget p1, p0, p1

    .line 60
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_26

    .line 61
    array-length v0, p0

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    move v2, v3

    .line 62
    :goto_19
    array-length v4, p0

    if-ge v2, v4, :cond_26

    add-int/lit8 v4, v2, -0x1

    .line 63
    aget v5, p0, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 66
    :cond_26
    new-instance p0, Landroid/telephony/IccOpenLogicalChannelResponse;

    invoke-direct {p0, p1, v3, v0}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    goto :goto_5e

    .line 69
    :cond_2c
    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p0, :cond_35

    .line 70
    const-string p0, "Empty response"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_35
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_3e

    .line 73
    const-string v2, "Exception"

    invoke-static {v1, v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_3e
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of p1, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz p1, :cond_56

    .line 78
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p0

    .line 80
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p0, p1, :cond_50

    const/4 p0, 0x2

    goto :goto_57

    .line 82
    :cond_50
    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p0, p1, :cond_56

    const/4 p0, 0x3

    goto :goto_57

    :cond_56
    const/4 p0, 0x4

    .line 86
    :goto_57
    new-instance p1, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v2, -0x1

    invoke-direct {p1, v2, p0, v0}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    move-object p0, p1

    .line 90
    :goto_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object p0

    return-object p0
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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->sendRequestMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist sendRequestMessage(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 48
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method
