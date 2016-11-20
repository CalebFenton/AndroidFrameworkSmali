.class Lcom/android/server/dreams/DreamController$DreamRecord$3;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController$DreamRecord;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/dreams/DreamController$DreamRecord;
    .param p2, "val$service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@2
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->val$service:Landroid/os/IBinder;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    #@5
    .line 331
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@7
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@9
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@f
    if-ne v0, v1, :cond_0

    #@11
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@13
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    #@15
    if-nez v0, :cond_0

    #@17
    .line 332
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@19
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@1b
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->val$service:Landroid/os/IBinder;

    #@1d
    invoke-static {v1}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamController;->-wrap0(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V

    #@24
    .line 329
    :goto_0
    return-void

    #@25
    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$3;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@27
    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    #@2a
    goto :goto_0
.end method
