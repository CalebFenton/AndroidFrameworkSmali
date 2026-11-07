.class public interface abstract Landroid/app/ondeviceintelligence/IResponseCallback;
.super Ljava/lang/Object;
.source "IResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IResponseCallback$Stub;,
        Landroid/app/ondeviceintelligence/IResponseCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ondeviceintelligence.IResponseCallback"


# virtual methods
.method public abstract blacklist onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
