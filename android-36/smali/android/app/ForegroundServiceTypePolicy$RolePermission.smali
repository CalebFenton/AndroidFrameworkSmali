.class Landroid/app/ForegroundServiceTypePolicy$RolePermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RolePermission"
.end annotation


# instance fields
.field final blacklist mRole:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "role"    # Ljava/lang/String;

    .line 1291
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1292
    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$RolePermission;->mRole:Ljava/lang/String;

    .line 1293
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "allowWhileInUse"    # Z

    .line 1299
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 1300
    .local v0, "rm":Landroid/app/role/RoleManager;
    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$RolePermission;->mRole:Ljava/lang/String;

    .line 1301
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1300
    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1302
    .local v1, "holders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1c

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1303
    const/4 v2, 0x0

    goto :goto_1d

    :cond_1c
    const/4 v2, -0x1

    .line 1302
    :goto_1d
    return v2
.end method
