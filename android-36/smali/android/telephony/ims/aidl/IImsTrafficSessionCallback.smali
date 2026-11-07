.class public interface abstract Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;
.super Ljava/lang/Object;
.source "IImsTrafficSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsTrafficSessionCallback$Stub;,
        Landroid/telephony/ims/aidl/IImsTrafficSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsTrafficSessionCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
