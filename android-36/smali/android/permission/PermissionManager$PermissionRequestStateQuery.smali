.class final Landroid/permission/PermissionManager$PermissionRequestStateQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionRequestStateQuery"
.end annotation


# instance fields
.field final blacklist mDeviceId:I

.field final blacklist mPackageName:Ljava/lang/String;

.field final blacklist mPermission:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "deviceId"    # I

    .line 1809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    iput-object p1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    .line 1811
    iput-object p2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    .line 1812
    iput p3, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    .line 1813
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "rval"    # Ljava/lang/Object;

    .line 1829
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1830
    return v0

    .line 1834
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_26

    .line 1837
    .local v1, "other":Landroid/permission/PermissionManager$PermissionRequestStateQuery;
    nop

    .line 1838
    iget v2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    iget v3, v1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    .line 1839
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 1838
    :goto_25
    return v0

    .line 1835
    .end local v1    # "other":Landroid/permission/PermissionManager$PermissionRequestStateQuery;
    :catch_26
    move-exception v1

    .line 1836
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1824
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    iget v2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1817
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    iget v2, p0, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    .line 1819
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1817
    const-string v1, "PermissionRequestStateQuery(package=\"%s\", permission=\"%s\", deviceId=%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
