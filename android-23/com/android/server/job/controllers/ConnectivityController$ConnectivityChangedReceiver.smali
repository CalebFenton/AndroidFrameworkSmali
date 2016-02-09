.class Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 159
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #@9
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 161
    const-string/jumbo v5, "networkType"

    #@12
    .line 162
    const/4 v8, -0x1

    #@13
    .line 161
    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v3

    #@17
    .line 165
    .local v3, "networkType":I
    const-string/jumbo v5, "connectivity"

    #@1a
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    .line 164
    check-cast v2, Landroid/net/ConnectivityManager;

    #@20
    .line 166
    .local v2, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@23
    move-result-object v1

    #@24
    .line 167
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    #@27
    move-result v4

    #@28
    .line 169
    .local v4, "userid":I
    if-nez v1, :cond_1

    #@2a
    .line 170
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@2c
    invoke-static {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->-set1(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    #@2f
    .line 171
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@31
    invoke-static {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->-set0(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    #@34
    .line 172
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@36
    invoke-static {v5, v4}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    #@39
    .line 153
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "networkType":I
    .end local v4    # "userid":I
    :cond_0
    :goto_0
    return-void

    #@3a
    .line 173
    .restart local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "networkType":I
    .restart local v4    # "userid":I
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    #@3d
    move-result v5

    #@3e
    if-ne v5, v3, :cond_0

    #@40
    .line 174
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@42
    invoke-static {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->-set1(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    #@45
    .line 175
    iget-object v8, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@47
    .line 176
    const-string/jumbo v5, "noConnectivity"

    #@4a
    .line 175
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_3

    #@50
    move v5, v6

    #@51
    :goto_1
    invoke-static {v8, v5}, Lcom/android/server/job/controllers/ConnectivityController;->-set0(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    #@54
    .line 177
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@56
    invoke-static {v5}, Lcom/android/server/job/controllers/ConnectivityController;->-get0(Lcom/android/server/job/controllers/ConnectivityController;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_2

    #@5c
    .line 178
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@5e
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    #@61
    move-result v8

    #@62
    if-eqz v8, :cond_4

    #@64
    :goto_2
    invoke-static {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->-set1(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    #@67
    .line 180
    :cond_2
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    #@69
    invoke-static {v5, v4}, Lcom/android/server/job/controllers/ConnectivityController;->-wrap0(Lcom/android/server/job/controllers/ConnectivityController;I)V

    #@6c
    goto :goto_0

    #@6d
    :cond_3
    move v5, v7

    #@6e
    .line 175
    goto :goto_1

    #@6f
    :cond_4
    move v6, v7

    #@70
    .line 178
    goto :goto_2
.end method
