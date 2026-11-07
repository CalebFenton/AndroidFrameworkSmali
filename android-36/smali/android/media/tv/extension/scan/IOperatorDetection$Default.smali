.class public Landroid/media/tv/extension/scan/IOperatorDetection$Default;
.super Ljava/lang/Object;
.source "IOperatorDetection.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IOperatorDetection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IOperatorDetection;
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

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setListener(Landroid/media/tv/extension/scan/IOperatorDetectionListener;)I
    .registers 3
    .param p1, "listener"    # Landroid/media/tv/extension/scan/IOperatorDetectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setOperatorDetection(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "operatorSelected"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method
