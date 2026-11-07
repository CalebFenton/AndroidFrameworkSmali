.class public Landroid/service/vr/IVrListener$Default;
.super Ljava/lang/Object;
.source "IVrListener.java"

# interfaces
.implements Landroid/service/vr/IVrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/IVrListener;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "running2dInVr"    # Z
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
