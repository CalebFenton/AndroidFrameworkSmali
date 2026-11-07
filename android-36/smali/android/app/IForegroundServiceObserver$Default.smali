.class public Landroid/app/IForegroundServiceObserver$Default;
.super Ljava/lang/Object;
.source "IForegroundServiceObserver.java"

# interfaces
.implements Landroid/app/IForegroundServiceObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IForegroundServiceObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "serviceToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
