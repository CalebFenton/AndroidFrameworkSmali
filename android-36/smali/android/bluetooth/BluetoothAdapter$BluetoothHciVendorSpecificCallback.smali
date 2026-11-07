.class public interface abstract Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothHciVendorSpecificCallback"
.end annotation


# virtual methods
.method public abstract whitelist onCommandComplete(I[B)V
.end method

.method public abstract whitelist onCommandStatus(II)V
.end method

.method public abstract whitelist onEvent(I[B)V
.end method
