.class public Landroid/os/IThermalHeadroomListener$Default;
.super Ljava/lang/Object;
.source "IThermalHeadroomListener.java"

# interfaces
.implements Landroid/os/IThermalHeadroomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IThermalHeadroomListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onHeadroomChange(FFI[F)V
    .registers 5
    .param p1, "headroom"    # F
    .param p2, "forecastHeadroom"    # F
    .param p3, "forecastSeconds"    # I
    .param p4, "thresholds"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
