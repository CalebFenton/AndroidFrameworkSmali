.class public interface abstract Landroid/bluetooth/BluetoothAdapter$OobDataCallback;
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
    name = "OobDataCallback"
.end annotation


# virtual methods
.method public abstract whitelist onError(I)V
.end method

.method public abstract whitelist onOobData(ILandroid/bluetooth/OobData;)V
.end method
