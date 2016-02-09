.class Lcom/android/server/DropBoxManagerService$3;
.super Landroid/os/Handler;
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


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DropBoxManagerService;

    #@0
    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 162
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-get0(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    #@a
    move-result-object v1

    #@b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    check-cast v0, Landroid/content/Intent;

    #@f
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@11
    .line 163
    const-string/jumbo v3, "android.permission.READ_LOGS"

    #@14
    .line 162
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@17
    .line 160
    :cond_0
    return-void
.end method
