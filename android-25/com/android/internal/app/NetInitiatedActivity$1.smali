.class Lcom/android/internal/app/NetInitiatedActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/NetInitiatedActivity;

    #@0
    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

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
    .line 60
    const-string/jumbo v0, "NetInitiatedActivity"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "NetInitiatedReceiver onReceive: "

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
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v1, "android.intent.action.NETWORK_INITIATED_VERIFY"

    #@25
    if-ne v0, v1, :cond_0

    #@27
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    #@29
    invoke-static {v0, p2}, Lcom/android/internal/app/NetInitiatedActivity;->-wrap0(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V

    #@2c
    .line 59
    :cond_0
    return-void
.end method
