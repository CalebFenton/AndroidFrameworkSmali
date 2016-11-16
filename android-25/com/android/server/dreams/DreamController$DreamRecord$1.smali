.class Lcom/android/server/dreams/DreamController$DreamRecord$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "DreamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController$DreamRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/dreams/DreamController$DreamRecord;

    #@0
    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@2
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@2
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    #@4
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get1(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    #@a
    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 368
    return-void
.end method
