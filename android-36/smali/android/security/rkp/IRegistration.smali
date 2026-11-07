.class public interface abstract Landroid/security/rkp/IRegistration;
.super Ljava/lang/Object;
.source "IRegistration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IRegistration$Stub;,
        Landroid/security/rkp/IRegistration$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.rkp.IRegistration"


# virtual methods
.method public abstract blacklist cancelGetKey(Landroid/security/rkp/IGetKeyCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getKey(ILandroid/security/rkp/IGetKeyCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist storeUpgradedKeyAsync([B[BLandroid/security/rkp/IStoreUpgradedKeyCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
