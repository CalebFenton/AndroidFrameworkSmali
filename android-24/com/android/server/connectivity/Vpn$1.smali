.class Lcom/android/server/connectivity/Vpn$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
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
    .line 171
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@5
    move-result-object v1

    #@6
    .line 175
    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_0

    #@8
    .line 176
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    #@a
    .line 177
    return-void

    #@b
    .line 175
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    goto :goto_0

    #@10
    .line 180
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@12
    monitor-enter v5

    #@13
    .line 182
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@15
    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_2

    #@1f
    monitor-exit v5

    #@20
    .line 183
    return-void

    #@21
    .line 186
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 187
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "Vpn"

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "Received broadcast "

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    const-string/jumbo v7, " for always-on package "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    .line 188
    const-string/jumbo v7, " in user "

    #@46
    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 188
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@4c
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-get8(Lcom/android/server/connectivity/Vpn;)I

    #@4f
    move-result v7

    #@50
    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 190
    const-string/jumbo v4, "android.intent.action.PACKAGE_REPLACED"

    #@5e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_4

    #@64
    .line 193
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@66
    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    :cond_3
    :goto_1
    monitor-exit v5

    #@6a
    .line 173
    return-void

    #@6b
    .line 190
    :cond_4
    :try_start_2
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    #@6e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_3

    #@74
    .line 197
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    #@77
    const/4 v6, 0x0

    #@78
    .line 196
    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_5

    #@7e
    .line 198
    .local v2, "isPackageRemoved":Z
    :goto_2
    if-eqz v2, :cond_3

    #@80
    .line 199
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@82
    const/4 v6, 0x0

    #@83
    const/4 v7, 0x0

    #@84
    invoke-static {v4, v6, v7}, Lcom/android/server/connectivity/Vpn;->-wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@87
    goto :goto_1

    #@88
    .line 180
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "isPackageRemoved":Z
    :catchall_0
    move-exception v4

    #@89
    monitor-exit v5

    #@8a
    throw v4

    #@8b
    .line 196
    .restart local v0    # "action":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    #@8c
    goto :goto_2
.end method
