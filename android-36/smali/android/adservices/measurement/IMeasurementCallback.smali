.class public interface abstract Landroid/adservices/measurement/IMeasurementCallback;
.super Ljava/lang/Object;
.source "IMeasurementCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/IMeasurementCallback$Stub;,
        Landroid/adservices/measurement/IMeasurementCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.measurement.IMeasurementCallback"


# virtual methods
.method public abstract blacklist onFailure(Landroid/adservices/measurement/MeasurementErrorResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
