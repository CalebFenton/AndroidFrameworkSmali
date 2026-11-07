.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;
.super Ljava/lang/Object;
.source "IIsFeatureEnabledCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IIsFeatureEnabledCallback"


# virtual methods
.method public abstract blacklist onResult(ILandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
