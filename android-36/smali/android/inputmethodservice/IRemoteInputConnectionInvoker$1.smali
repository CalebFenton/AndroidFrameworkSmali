.class Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;
.super Landroid/os/CancellationSignalBeamer$Sender;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 740
    iput-object p1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;->this$0:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-direct {p0}, Landroid/os/CancellationSignalBeamer$Sender;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCancel(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;->this$0:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-static {v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->-$$Nest$fgetmConnection(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->cancelCancellationSignal(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 747
    goto :goto_b

    .line 745
    :catch_a
    move-exception v0

    .line 748
    :goto_b
    return-void
.end method

.method public blacklist onForget(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 753
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$1;->this$0:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-static {v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->-$$Nest$fgetmConnection(Landroid/inputmethodservice/IRemoteInputConnectionInvoker;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->forgetCancellationSignal(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 756
    goto :goto_b

    .line 754
    :catch_a
    move-exception v0

    .line 757
    :goto_b
    return-void
.end method
