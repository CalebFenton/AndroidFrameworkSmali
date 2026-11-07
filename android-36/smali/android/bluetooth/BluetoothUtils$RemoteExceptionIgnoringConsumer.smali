.class public interface abstract Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteExceptionIgnoringConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public blacklist accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 374
    .local p0, "this":Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;, "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 377
    goto :goto_c

    .line 375
    :catch_4
    move-exception v0

    .line 376
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 378
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public abstract blacklist acceptOrThrow(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
