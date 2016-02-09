.class Lcom/android/server/power/ShutdownThread$4;
.super Landroid/os/storage/IMountShutdownObserver$Stub;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    #@0
    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    #@2
    invoke-direct {p0}, Landroid/os/storage/IMountShutdownObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onShutDownComplete(I)V
    .locals 3
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    const-string/jumbo v0, "ShutdownThread"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Result code "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " from MountService.shutdown"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 430
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    #@23
    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->actionDone()V

    #@26
    .line 428
    return-void
.end method
