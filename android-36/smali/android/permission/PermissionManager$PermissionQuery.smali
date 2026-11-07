.class final Landroid/permission/PermissionManager$PermissionQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionQuery"
.end annotation


# instance fields
.field final blacklist deviceId:I

.field final blacklist permission:Ljava/lang/String;

.field final blacklist pid:I

.field final blacklist uid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "deviceId"    # I

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    iput-object p1, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    .line 1768
    iput p2, p0, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    .line 1769
    iput p3, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    .line 1770
    iput p4, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    .line 1771
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "rval"    # Ljava/lang/Object;

    .line 1789
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1790
    return v0

    .line 1794
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Landroid/permission/PermissionManager$PermissionQuery;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_22

    .line 1797
    .local v1, "other":Landroid/permission/PermissionManager$PermissionQuery;
    nop

    .line 1798
    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    iget v3, v1, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    if-ne v2, v3, :cond_20

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    iget v3, v1, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    .line 1799
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    nop

    .line 1798
    :goto_21
    return v0

    .line 1795
    .end local v1    # "other":Landroid/permission/PermissionManager$PermissionQuery;
    :catch_22
    move-exception v1

    .line 1796
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1783
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1775
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    .line 1776
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1775
    const-string v1, "PermissionQuery(permission=\"%s\", pid=%d, uid=%d, deviceId=%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
