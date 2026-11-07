.class public interface abstract Landroid/federatedcompute/aidl/IExampleStoreIterator;
.super Ljava/lang/Object;
.source "IExampleStoreIterator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IExampleStoreIterator$Stub;,
        Landroid/federatedcompute/aidl/IExampleStoreIterator$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.federatedcompute.aidl.IExampleStoreIterator"


# virtual methods
.method public abstract blacklist close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist next(Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
