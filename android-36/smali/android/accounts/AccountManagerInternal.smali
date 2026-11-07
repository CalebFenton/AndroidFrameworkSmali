.class public abstract Landroid/accounts/AccountManagerInternal;
.super Ljava/lang/Object;
.source "AccountManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
.end method

.method public abstract greylist-max-o backupAccountAccessPermissions(I)[B
.end method

.method public abstract greylist-max-o hasAccountAccess(Landroid/accounts/Account;I)Z
.end method

.method public abstract greylist-max-o requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
.end method

.method public abstract greylist-max-o restoreAccountAccessPermissions([BI)V
.end method
