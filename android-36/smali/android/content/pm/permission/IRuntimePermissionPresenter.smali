.class public interface abstract Landroid/content/pm/permission/IRuntimePermissionPresenter;
.super Ljava/lang/Object;
.source "IRuntimePermissionPresenter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;,
        Landroid/content/pm/permission/IRuntimePermissionPresenter$Default;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract greylist-max-o getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
