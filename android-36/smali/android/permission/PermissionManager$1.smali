.class Landroid/permission/PermissionManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/permission/PermissionManager$PermissionQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;

    .line 1881
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/permission/PermissionManager$PermissionQuery;)Ljava/lang/Integer;
    .registers 6
    .param p1, "query"    # Landroid/permission/PermissionManager$PermissionQuery;

    .line 1884
    iget-object v0, p1, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p1, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    iget v2, p1, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    iget v3, p1, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {v0, v1, v2, v3}, Landroid/permission/PermissionManager;->-$$Nest$smcheckPermissionUncached(Ljava/lang/String;III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1881
    check-cast p1, Landroid/permission/PermissionManager$PermissionQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$1;->recompute(Landroid/permission/PermissionManager$PermissionQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
