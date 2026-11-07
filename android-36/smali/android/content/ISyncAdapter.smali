.class public interface abstract Landroid/content/ISyncAdapter;
.super Ljava/lang/Object;
.source "ISyncAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncAdapter$Stub;,
        Landroid/content/ISyncAdapter$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist cancelSync(Landroid/content/ISyncContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
