.class public interface abstract Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteExceptionIgnoringFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public blacklist apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TR;)TR;"
        }
    .end annotation

    .line 389
    .local p0, "this":Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;, "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TR;"
    :try_start_0
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;->applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 390
    :catch_5
    move-exception v0

    .line 391
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;->logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V

    .line 392
    return-object p2
.end method

.method public abstract blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
