.class Lcom/android/server/am/ActivityManagerService$12;
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
    .line 11324
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

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
    .line 11327
    const-string/jumbo v0, "ActivityManager"

    #@3
    const-string/jumbo v1, "Shutting down activity manager..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 11328
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@b
    const/16 v1, 0x2710

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->shutdown(I)Z

    #@10
    .line 11329
    const-string/jumbo v0, "ActivityManager"

    #@13
    const-string/jumbo v1, "Shutdown complete, restarting!"

    #@16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 11330
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@1c
    move-result v0

    #@1d
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    #@20
    .line 11331
    const/16 v0, 0xa

    #@22
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@25
    .line 11325
    return-void
.end method
