.class Lcom/android/server/connectivity/Vpn$2;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/16 v3, -0x2710

    #@2
    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 155
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@9
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v1

    #@d
    .line 157
    .local v1, "userHandle":I
    if-ne v1, v3, :cond_0

    #@f
    return-void

    #@10
    .line 159
    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 160
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    #@1b
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;I)V

    #@1e
    .line 153
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 161
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 162
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2a
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->-wrap4(Lcom/android/server/connectivity/Vpn;I)V

    #@2d
    goto :goto_0
.end method
