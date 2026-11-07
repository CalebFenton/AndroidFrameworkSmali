.class public Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Default;
.super Ljava/lang/Object;
.source "IIntrusionDetectionEventTransport.java"

# interfaces
.implements Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    .local p2, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initialize(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public blacklist release(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    return-void
.end method
