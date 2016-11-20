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
.field final synthetic this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 83
    const-string/jumbo v0, "SmsBroadcastUndelivered"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Received broadcast "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 84
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    #@21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 85
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    #@2d
    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    #@2f
    const/4 v2, 0x0

    #@30
    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;)V

    #@33
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->start()V

    #@36
    .line 82
    :cond_0
    return-void
.end method
