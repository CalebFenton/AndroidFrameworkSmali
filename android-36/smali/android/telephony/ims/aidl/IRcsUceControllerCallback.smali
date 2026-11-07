.class public interface abstract Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
.super Ljava/lang/Object;
.source "IRcsUceControllerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;,
        Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IRcsUceControllerCallback"


# virtual methods
.method public abstract blacklist onCapabilitiesReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onComplete(Landroid/telephony/ims/SipDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onError(IJLandroid/telephony/ims/SipDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
