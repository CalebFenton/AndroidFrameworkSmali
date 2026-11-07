.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IRegisterWebTriggerCallback;
.super Ljava/lang/Object;
.source "IRegisterWebTriggerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IRegisterWebTriggerCallback$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IRegisterWebTriggerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IRegisterWebTriggerCallback"


# virtual methods
.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
