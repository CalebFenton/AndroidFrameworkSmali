.class public abstract Landroid/app/AppOpsManagerInternal;
.super Ljava/lang/Object;
.source "AppOpsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract blacklist onPackageAdded(Ljava/lang/String;I)V
.end method

.method public abstract greylist-max-o setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
.end method

.method public abstract blacklist setGlobalRestriction(IZLandroid/os/IBinder;)V
.end method

.method public abstract blacklist setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
.end method

.method public abstract blacklist setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V
.end method

.method public abstract blacklist updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method
