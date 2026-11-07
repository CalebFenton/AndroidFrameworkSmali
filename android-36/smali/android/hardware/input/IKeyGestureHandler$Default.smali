.class public Landroid/hardware/input/IKeyGestureHandler$Default;
.super Ljava/lang/Object;
.source "IKeyGestureHandler.java"

# interfaces
.implements Landroid/hardware/input/IKeyGestureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IKeyGestureHandler;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "event"    # Landroid/hardware/input/AidlKeyGestureEvent;
    .param p2, "focusedToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
