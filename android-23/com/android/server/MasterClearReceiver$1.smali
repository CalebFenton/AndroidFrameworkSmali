.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$context"    # Landroid/content/Context;
    .param p4, "val$shutdown"    # Z
    .param p5, "val$reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    #@2
    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    #@4
    iput-boolean p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    #@6
    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    #@8
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    #@2
    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    #@4
    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    #@6
    invoke-static {v2, v3, v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    #@9
    .line 58
    const-string/jumbo v2, "MasterClear"

    #@c
    const-string/jumbo v3, "Still running after master clear?!"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 55
    :goto_0
    return-void

    #@13
    .line 61
    :catch_0
    move-exception v1

    #@14
    .line 62
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "MasterClear"

    #@17
    const-string/jumbo v3, "Can\'t perform master clear/factory reset"

    #@1a
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0

    #@1e
    .line 59
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@1f
    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "MasterClear"

    #@22
    const-string/jumbo v3, "Can\'t perform master clear/factory reset"

    #@25
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method
