.class public abstract Landroid/view/inputmethod/CancellableHandwritingGesture;
.super Landroid/view/inputmethod/HandwritingGesture;
.source "CancellableHandwritingGesture.java"


# instance fields
.field blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field blacklist mCancellationSignalToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/view/inputmethod/HandwritingGesture;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getCancellationSignal()Landroid/os/CancellationSignal;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/view/inputmethod/CancellableHandwritingGesture;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0
.end method

.method public blacklist setCancellationSignal(Landroid/os/CancellationSignal;)V
    .registers 2
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 45
    iput-object p1, p0, Landroid/view/inputmethod/CancellableHandwritingGesture;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 46
    return-void
.end method

.method public blacklist unbeamCancellationSignal(Landroid/os/CancellationSignalBeamer$Receiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/os/CancellationSignalBeamer$Receiver;

    .line 58
    iget-object v0, p0, Landroid/view/inputmethod/CancellableHandwritingGesture;->mCancellationSignalToken:Landroid/os/IBinder;

    if-eqz v0, :cond_f

    .line 59
    iget-object v0, p0, Landroid/view/inputmethod/CancellableHandwritingGesture;->mCancellationSignalToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignalBeamer$Receiver;->unbeam(Landroid/os/IBinder;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CancellableHandwritingGesture;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CancellableHandwritingGesture;->mCancellationSignalToken:Landroid/os/IBinder;

    .line 62
    :cond_f
    return-void
.end method
