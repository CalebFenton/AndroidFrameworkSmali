.class public interface abstract Landroid/security/rkp/IGetKeyCallback;
.super Ljava/lang/Object;
.source "IGetKeyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IGetKeyCallback$ErrorCode;,
        Landroid/security/rkp/IGetKeyCallback$Stub;,
        Landroid/security/rkp/IGetKeyCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.rkp.IGetKeyCallback"


# virtual methods
.method public abstract blacklist onCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onError(BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/security/rkp/RemotelyProvisionedKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
