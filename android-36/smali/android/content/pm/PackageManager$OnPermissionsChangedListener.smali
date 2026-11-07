.class public interface abstract Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPermissionsChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onPermissionsChanged(I)V
.end method

.method public whitelist onPermissionsChanged(ILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "persistentDeviceId"    # Ljava/lang/String;

    .line 843
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v0, "default:0"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 846
    invoke-interface {p0, p1}, Landroid/content/pm/PackageManager$OnPermissionsChangedListener;->onPermissionsChanged(I)V

    .line 848
    :cond_e
    return-void
.end method
