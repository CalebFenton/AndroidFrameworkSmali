.class public interface abstract Landroid/telephony/ims/aidl/IImsConfigCallback;
.super Ljava/lang/Object;
.source "IImsConfigCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;,
        Landroid/telephony/ims/aidl/IImsConfigCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsConfigCallback"


# virtual methods
.method public abstract blacklist onIntConfigChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStringConfigChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
