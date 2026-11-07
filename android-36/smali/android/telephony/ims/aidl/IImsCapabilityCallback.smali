.class public interface abstract Landroid/telephony/ims/aidl/IImsCapabilityCallback;
.super Ljava/lang/Object;
.source "IImsCapabilityCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;,
        Landroid/telephony/ims/aidl/IImsCapabilityCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsCapabilityCallback"


# virtual methods
.method public abstract blacklist onCapabilitiesStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onChangeCapabilityConfigurationError(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onQueryCapabilityConfiguration(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
