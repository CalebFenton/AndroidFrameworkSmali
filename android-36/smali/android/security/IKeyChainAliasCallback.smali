.class public interface abstract Landroid/security/IKeyChainAliasCallback;
.super Ljava/lang/Object;
.source "IKeyChainAliasCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainAliasCallback$Stub;,
        Landroid/security/IKeyChainAliasCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o alias(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
