.class public Landroid/view/ISystemGestureExclusionListener$Default;
.super Ljava/lang/Object;
.source "ISystemGestureExclusionListener.java"

# interfaces
.implements Landroid/view/ISystemGestureExclusionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISystemGestureExclusionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "systemGestureExclusion"    # Landroid/graphics/Region;
    .param p3, "systemGestureExclusionUnrestricted"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
