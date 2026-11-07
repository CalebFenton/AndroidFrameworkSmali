.class public interface abstract Landroid/federatedcompute/aidl/IExampleStoreCallback;
.super Ljava/lang/Object;
.source "IExampleStoreCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IExampleStoreCallback$Stub;,
        Landroid/federatedcompute/aidl/IExampleStoreCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.federatedcompute.aidl.IExampleStoreCallback"


# virtual methods
.method public abstract blacklist onStartQueryFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStartQuerySuccess(Landroid/federatedcompute/aidl/IExampleStoreIterator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
