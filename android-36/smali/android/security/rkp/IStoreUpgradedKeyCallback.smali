.class public interface abstract Landroid/security/rkp/IStoreUpgradedKeyCallback;
.super Ljava/lang/Object;
.source "IStoreUpgradedKeyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IStoreUpgradedKeyCallback$Stub;,
        Landroid/security/rkp/IStoreUpgradedKeyCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.rkp.IStoreUpgradedKeyCallback"


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;)V
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
