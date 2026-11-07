.class public interface abstract Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;
.super Ljava/lang/Object;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPermissionUsageResultCallback"
.end annotation


# virtual methods
.method public abstract blacklist onPermissionUsageResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;)V"
        }
    .end annotation
.end method
