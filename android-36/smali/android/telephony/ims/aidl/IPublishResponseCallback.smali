.class public interface abstract Landroid/telephony/ims/aidl/IPublishResponseCallback;
.super Ljava/lang/Object;
.source "IPublishResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;,
        Landroid/telephony/ims/aidl/IPublishResponseCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IPublishResponseCallback"


# virtual methods
.method public abstract blacklist onCommandError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
