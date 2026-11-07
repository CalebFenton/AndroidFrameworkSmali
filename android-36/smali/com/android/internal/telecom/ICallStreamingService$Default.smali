.class public Lcom/android/internal/telecom/ICallStreamingService$Default;
.super Ljava/lang/Object;
.source "ICallStreamingService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallStreamingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCallStreamingStarted(Landroid/telecom/StreamingCall;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/StreamingCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onCallStreamingStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onCallStreamingStopped()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setStreamingCallAdapter(Lcom/android/internal/telecom/IStreamingCallAdapter;)V
    .registers 2
    .param p1, "streamingCallAdapter"    # Lcom/android/internal/telecom/IStreamingCallAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
