.class public interface abstract Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback;
.super Ljava/lang/Object;
.source "IExampleStoreIteratorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback$Stub;,
        Landroid/federatedcompute/aidl/IExampleStoreIteratorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.federatedcompute.aidl.IExampleStoreIteratorCallback"


# virtual methods
.method public abstract blacklist onIteratorNextFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onIteratorNextSuccess(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
