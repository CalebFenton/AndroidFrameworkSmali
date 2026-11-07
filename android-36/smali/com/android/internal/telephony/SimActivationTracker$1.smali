.class Lcom/android/internal/telephony/SimActivationTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SimActivationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SimActivationTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SimActivationTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {}, Lcom/android/internal/telephony/SimActivationTracker;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SimActivationTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    .line 81
    :cond_20
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 82
    const-string p1, "ss"

    .line 83
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string p2, "ABSENT"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 84
    iget-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    const-string p2, "onSimAbsent, reset activation state to UNKNOWN"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SimActivationTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SimActivationTracker;->setVoiceActivationState(I)V

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SimActivationTracker;->setDataActivationState(I)V

    :cond_48
    return-void
.end method
