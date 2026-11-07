.class public interface abstract Landroid/adservices/measurement/IMeasurementApiStatusCallback;
.super Ljava/lang/Object;
.source "IMeasurementApiStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/IMeasurementApiStatusCallback$Stub;,
        Landroid/adservices/measurement/IMeasurementApiStatusCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.measurement.IMeasurementApiStatusCallback"


# virtual methods
.method public abstract blacklist onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
