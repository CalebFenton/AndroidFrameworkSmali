.class Landroid/permission/PermissionUsageHelper$OpUsage;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpUsage"
.end annotation


# instance fields
.field public final blacklist attributionTag:Ljava/lang/String;

.field public final blacklist isRunning:Z

.field public final blacklist lastAccessTime:J

.field public final blacklist op:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "lastAccessTime"    # J
    .param p7, "isRunning"    # Z
    .param p8, "proxy"    # Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 773
    iput-object p2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 774
    iput-object p3, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    .line 775
    iput p4, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 776
    iput-wide p5, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 777
    iput-boolean p7, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    .line 778
    iput-object p8, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 779
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 796
    instance-of v0, p1, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 797
    return v1

    .line 799
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 800
    .local v0, "other":Landroid/permission/PermissionUsageHelper$OpUsage;
    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    .line 801
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    iget v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    if-ne v2, v3, :cond_3d

    iget-wide v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    iget-wide v4, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3d

    iget-boolean v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    iget-boolean v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    if-ne v2, v3, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    nop

    .line 800
    :goto_3e
    return v1
.end method

.method public blacklist getPackageIdHash()I
    .registers 3

    .line 786
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 782
    iget v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 791
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget v3, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v5, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
