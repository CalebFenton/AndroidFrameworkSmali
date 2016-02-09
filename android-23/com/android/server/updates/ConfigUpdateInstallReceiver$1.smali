.class Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "ConfigUpdateInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/ConfigUpdateInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@2
    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    #@4
    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #@6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    #@0
    .prologue
    const v10, 0xc864

    #@3
    .line 64
    :try_start_0
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@5
    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    #@7
    iget-object v9, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #@9
    invoke-static {v7, v8, v9}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap2(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B

    #@c
    move-result-object v0

    #@d
    .line 66
    .local v0, "altContent":[B
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@f
    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #@11
    invoke-static {v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap5(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    #@14
    move-result v2

    #@15
    .line 68
    .local v2, "altVersion":I
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@17
    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #@19
    invoke-static {v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap7(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 70
    .local v1, "altRequiredHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@1f
    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap4(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    #@22
    move-result v4

    #@23
    .line 72
    .local v4, "currentVersion":I
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@25
    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap3(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B

    #@28
    move-result-object v7

    #@29
    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap6([B)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 73
    .local v3, "currentHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@2f
    invoke-static {v7, v4, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap1(Lcom/android/server/updates/ConfigUpdateInstallReceiver;II)Z

    #@32
    move-result v7

    #@33
    if-nez v7, :cond_0

    #@35
    .line 74
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    #@38
    const-string/jumbo v8, "Not installing, new version is <= current version"

    #@3b
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 61
    .end local v0    # "altContent":[B
    .end local v1    # "altRequiredHash":Ljava/lang/String;
    .end local v2    # "altVersion":I
    .end local v3    # "currentHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    :goto_0
    return-void

    #@3f
    .line 75
    .restart local v0    # "altContent":[B
    .restart local v1    # "altRequiredHash":Ljava/lang/String;
    .restart local v2    # "altVersion":I
    .restart local v3    # "currentHash":Ljava/lang/String;
    .restart local v4    # "currentVersion":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@41
    invoke-static {v7, v3, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-wrap0(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    #@44
    move-result v7

    #@45
    if-nez v7, :cond_2

    #@47
    .line 77
    const-string/jumbo v7, "Current hash did not match required value"

    #@4a
    .line 76
    const v8, 0xc864

    #@4d
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_0

    #@51
    .line 85
    .end local v0    # "altContent":[B
    .end local v1    # "altRequiredHash":Ljava/lang/String;
    .end local v2    # "altVersion":I
    .end local v3    # "currentHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    :catch_0
    move-exception v5

    #@52
    .line 86
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    #@55
    const-string/jumbo v8, "Could not update content!"

    #@58
    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 88
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 89
    .local v6, "errMsg":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@62
    move-result v7

    #@63
    const/16 v8, 0x64

    #@65
    if-le v7, v8, :cond_1

    #@67
    .line 90
    const/4 v7, 0x0

    #@68
    const/16 v8, 0x63

    #@6a
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    .line 92
    :cond_1
    invoke-static {v10, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@71
    goto :goto_0

    #@72
    .line 80
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "errMsg":Ljava/lang/String;
    .restart local v0    # "altContent":[B
    .restart local v1    # "altRequiredHash":Ljava/lang/String;
    .restart local v2    # "altVersion":I
    .restart local v3    # "currentHash":Ljava/lang/String;
    .restart local v4    # "currentVersion":I
    :cond_2
    :try_start_1
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    #@75
    const-string/jumbo v8, "Found new update, installing..."

    #@78
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 81
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@7d
    invoke-virtual {v7, v0, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    #@80
    .line 82
    const-string/jumbo v7, "ConfigUpdateInstallReceiver"

    #@83
    const-string/jumbo v8, "Installation successful"

    #@86
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 83
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #@8b
    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    #@8d
    iget-object v9, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #@8f
    invoke-virtual {v7, v8, v9}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@92
    goto :goto_0
.end method
