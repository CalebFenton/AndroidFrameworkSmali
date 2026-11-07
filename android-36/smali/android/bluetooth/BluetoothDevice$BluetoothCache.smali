.class Landroid/bluetooth/BluetoothDevice$BluetoothCache;
.super Landroid/os/IpcDataCache;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/IpcDataCache<",
        "TQ;TR;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V
    .registers 9
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "query"    # Landroid/os/IpcDataCache$QueryHandler;

    .line 2114
    .local p0, "this":Landroid/bluetooth/BluetoothDevice$BluetoothCache;, "Landroid/bluetooth/BluetoothDevice$BluetoothCache<TQ;TR;>;"
    const/16 v1, 0x8

    const-string v2, "bluetooth"

    move-object v4, p1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "api":Ljava/lang/String;
    .end local p2    # "query":Landroid/os/IpcDataCache$QueryHandler;
    .local v3, "api":Ljava/lang/String;
    .local v5, "query":Landroid/os/IpcDataCache$QueryHandler;
    invoke-direct/range {v0 .. v5}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    .line 2115
    return-void
.end method
