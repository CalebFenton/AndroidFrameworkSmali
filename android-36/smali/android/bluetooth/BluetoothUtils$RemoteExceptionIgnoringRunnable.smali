.class public interface abstract Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringRunnable;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteExceptionIgnoringRunnable"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public blacklist run()V
    .registers 3

    .line 358
    :try_start_0
    invoke-interface {p0}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringRunnable;->runOrThrow()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 361
    goto :goto_c

    .line 359
    :catch_4
    move-exception v0

    .line 360
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 362
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public abstract blacklist runOrThrow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
