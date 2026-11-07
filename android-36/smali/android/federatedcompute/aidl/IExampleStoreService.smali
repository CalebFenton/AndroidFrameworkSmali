.class public interface abstract Landroid/federatedcompute/aidl/IExampleStoreService;
.super Ljava/lang/Object;
.source "IExampleStoreService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IExampleStoreService$Stub;,
        Landroid/federatedcompute/aidl/IExampleStoreService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.federatedcompute.aidl.IExampleStoreService"


# virtual methods
.method public abstract blacklist startQuery(Landroid/os/Bundle;Landroid/federatedcompute/aidl/IExampleStoreCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
