.class Lcom/android/server/DropBoxManagerService$4;
.super Landroid/database/ContentObserver;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DropBoxManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$4;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$4;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-get0(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;

    #@5
    move-result-object v1

    #@6
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$4;->this$0:Lcom/android/server/DropBoxManagerService;

    #@8
    invoke-virtual {v0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    #@b
    move-result-object v2

    #@c
    const/4 v0, 0x0

    #@d
    check-cast v0, Landroid/content/Intent;

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    #@12
    .line 191
    return-void
.end method
