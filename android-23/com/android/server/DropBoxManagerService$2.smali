.class Lcom/android/server/DropBoxManagerService$2;
.super Landroid/database/ContentObserver;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DropBoxManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$2;->val$context:Landroid/content/Context;

    #@4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@7
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-get1(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$2;->val$context:Landroid/content/Context;

    #@8
    const/4 v0, 0x0

    #@9
    check-cast v0, Landroid/content/Intent;

    #@b
    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    #@e
    .line 153
    return-void
.end method
