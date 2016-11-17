.class Lcom/android/server/am/ActivityManagerService$17;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 12845
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 12848
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "Shutting down activity manager..."

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 12849
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@c
    const/16 v1, 0x2710

    #@e
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->shutdown(I)Z

    #@11
    .line 12850
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "Shutdown complete, restarting!"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 12851
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    #@22
    .line 12852
    const/16 v0, 0xa

    #@24
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@27
    .line 12846
    return-void
.end method
