.class public interface abstract Landroid/accounts/IAccountManagerResponse;
.super Ljava/lang/Object;
.source "IAccountManagerResponse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManagerResponse$Stub;,
        Landroid/accounts/IAccountManagerResponse$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
