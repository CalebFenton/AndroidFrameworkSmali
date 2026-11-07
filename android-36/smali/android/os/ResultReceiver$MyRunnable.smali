.class Landroid/os/ResultReceiver$MyRunnable;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRunnable"
.end annotation


# instance fields
.field final greylist-max-o mResultCode:I

.field final greylist-max-o mResultData:Landroid/os/Bundle;

.field final synthetic blacklist this$0:Landroid/os/ResultReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/ResultReceiver;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Landroid/os/ResultReceiver$MyRunnable;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultCode:I

    .line 47
    iput-object p3, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 51
    iget-object v0, p0, Landroid/os/ResultReceiver$MyRunnable;->this$0:Landroid/os/ResultReceiver;

    iget v1, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultCode:I

    iget-object v2, p0, Landroid/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 52
    return-void
.end method
