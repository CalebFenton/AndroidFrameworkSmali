.class public interface abstract Landroid/devicelock/IVoidResultCallback;
.super Ljava/lang/Object;
.source "IVoidResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/devicelock/IVoidResultCallback$Stub;,
        Landroid/devicelock/IVoidResultCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.devicelock.IVoidResultCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/devicelock/ParcelableException;)V
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
