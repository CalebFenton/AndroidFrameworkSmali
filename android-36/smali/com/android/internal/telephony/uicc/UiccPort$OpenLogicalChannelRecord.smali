.class public Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;
.super Ljava/lang/Object;
.source "UiccPort.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenLogicalChannelRecord"
.end annotation


# instance fields
.field blacklist mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccPort;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccPort;Lcom/android/internal/telephony/IccLogicalChannelRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 475
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->this$0:Lcom/android/internal/telephony/uicc/UiccPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->this$0:Lcom/android/internal/telephony/uicc/UiccPort;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccOpenLogicalChannelRecord: client died, close channel in record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccPort;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccPort;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->this$0:Lcom/android/internal/telephony/uicc/UiccPort;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    iget v1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccPort;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->this$0:Lcom/android/internal/telephony/uicc/UiccPort;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    iget p0, p0, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccPort;->onLogicalChannelClosed(I)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenLogicalChannelRecord {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPort$OpenLogicalChannelRecord;->mRequest:Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
