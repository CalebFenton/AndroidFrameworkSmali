.class final Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v1, "serviceDied"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    .line 454
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method
