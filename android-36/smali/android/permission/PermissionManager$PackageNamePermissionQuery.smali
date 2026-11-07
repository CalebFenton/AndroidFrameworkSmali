.class final Landroid/permission/PermissionManager$PackageNamePermissionQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageNamePermissionQuery"
.end annotation


# instance fields
.field final blacklist permName:Ljava/lang/String;

.field final blacklist persistentDeviceId:Ljava/lang/String;

.field final blacklist pkgName:Ljava/lang/String;

.field final blacklist userId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    iput-object p1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    .line 1969
    iput-object p2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    .line 1970
    iput-object p3, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->persistentDeviceId:Ljava/lang/String;

    .line 1971
    iput p4, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    .line 1972
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "rval"    # Ljava/lang/Object;

    .line 1989
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1990
    return v0

    .line 1994
    :cond_4
    :try_start_4
    move-object v1, p1

    check-cast v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_30

    .line 1997
    .local v1, "other":Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    nop

    .line 1998
    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    .line 1999
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->persistentDeviceId:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->persistentDeviceId:Ljava/lang/String;

    .line 2000
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    iget v3, v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    if-ne v2, v3, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 1998
    :goto_2f
    return v0

    .line 1995
    .end local v1    # "other":Landroid/permission/PermissionManager$PackageNamePermissionQuery;
    :catch_30
    move-exception v1

    .line 1996
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1984
    iget-object v0, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->persistentDeviceId:Ljava/lang/String;

    iget v3, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1976
    iget-object v0, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->persistentDeviceId:Ljava/lang/String;

    iget v3, p0, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    .line 1979
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1976
    const-string v1, "PackageNamePermissionQuery(pkgName=\"%s\", permName=\"%s\", persistentDeviceId=%s, userId=%s\")"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
