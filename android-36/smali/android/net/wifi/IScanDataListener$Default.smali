.class public Landroid/net/wifi/IScanDataListener$Default;
.super Ljava/lang/Object;
.source "IScanDataListener.java"

# interfaces
.implements Landroid/net/wifi/IScanDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IScanDataListener;
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

.method public blacklist onResult(Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 2
    .param p1, "scanData"    # Landroid/net/wifi/WifiScanner$ScanData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
