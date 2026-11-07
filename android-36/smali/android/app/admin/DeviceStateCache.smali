.class public abstract Landroid/app/admin/DeviceStateCache;
.super Ljava/lang/Object;
.source "DeviceStateCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static blacklist getInstance()Landroid/app/admin/DeviceStateCache;
    .registers 2

    .line 37
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 38
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 39
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v1

    goto :goto_13

    :cond_f
    invoke-static {}, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;->-$$Nest$sfgetINSTANCE()Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    move-result-object v1

    :goto_13
    return-object v1
.end method


# virtual methods
.method public blacklist hasAffiliationWithDevice(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist isDeviceProvisioned()Z
.end method

.method public abstract blacklist isUserOrganizationManaged(I)Z
.end method
