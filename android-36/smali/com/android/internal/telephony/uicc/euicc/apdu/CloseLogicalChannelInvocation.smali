.class Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.source "CloseLogicalChannelInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method


# virtual methods
.method protected blacklist parseResult(Landroid/os/AsyncResult;)Ljava/lang/Boolean;
    .registers 3

    .line 54
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_7

    .line 55
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 57
    :cond_7
    instance-of p1, p0, Lcom/android/internal/telephony/CommandException;

    const-string v0, "CloseChan"

    if-eqz p1, :cond_13

    .line 58
    const-string p1, "CommandException"

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 60
    :cond_13
    const-string p1, "Unknown exception"

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_18
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

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

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->parseResult(Landroid/os/AsyncResult;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist sendRequestMessage(Ljava/lang/Integer;Landroid/os/Message;)V
    .registers 5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloseChan"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(IZLandroid/os/Message;)V

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

    .line 34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->sendRequestMessage(Ljava/lang/Integer;Landroid/os/Message;)V

    return-void
.end method
