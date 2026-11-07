.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsBroadcastUndelivered"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 115
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$mgetMainUser(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq p2, v0, :cond_40

    goto :goto_4b

    .line 120
    :cond_40
    new-instance p2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered-IA;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_4b
    :goto_4b
    return-void
.end method
