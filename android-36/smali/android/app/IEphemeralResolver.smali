.class public interface abstract Landroid/app/IEphemeralResolver;
.super Ljava/lang/Object;
.source "IEphemeralResolver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IEphemeralResolver$Stub;,
        Landroid/app/IEphemeralResolver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o getEphemeralIntentFilterList(Landroid/os/IRemoteCallback;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
