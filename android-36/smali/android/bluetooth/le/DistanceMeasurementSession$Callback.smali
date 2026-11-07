.class public interface abstract Landroid/bluetooth/le/DistanceMeasurementSession$Callback;
.super Ljava/lang/Object;
.source "DistanceMeasurementSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/DistanceMeasurementSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/DistanceMeasurementSession$Callback$Reason;
    }
.end annotation


# virtual methods
.method public abstract whitelist onResult(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onStartFail(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onStarted(Landroid/bluetooth/le/DistanceMeasurementSession;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist onStopped(Landroid/bluetooth/le/DistanceMeasurementSession;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
