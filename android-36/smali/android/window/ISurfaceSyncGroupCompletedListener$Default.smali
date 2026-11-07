.class public Landroid/window/ISurfaceSyncGroupCompletedListener$Default;
.super Ljava/lang/Object;
.source "ISurfaceSyncGroupCompletedListener.java"

# interfaces
.implements Landroid/window/ISurfaceSyncGroupCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ISurfaceSyncGroupCompletedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
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

.method public blacklist onSurfaceSyncGroupComplete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
