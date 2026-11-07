.class public Landroid/webkit/UserPackage;
.super Ljava/lang/Object;
.source "UserPackage.java"


# instance fields
.field private final greylist-max-o mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UserHandle;Landroid/content/pm/PackageInfo;)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/webkit/UserPackage;->mUser:Landroid/os/UserHandle;

    .line 40
    iput-object p2, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 41
    return-void
.end method

.method public static greylist-max-o getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation

    .line 49
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 50
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v3, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 53
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual {p0, v5, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 54
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 56
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_2f
    invoke-virtual {v6, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_33} :catch_35

    move-object v7, v8

    .line 58
    goto :goto_36

    .line 57
    :catch_35
    move-exception v8

    .line 59
    :goto_36
    new-instance v8, Landroid/webkit/UserPackage;

    invoke-direct {v8, v5, v7}, Landroid/webkit/UserPackage;-><init>(Landroid/os/UserHandle;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v5    # "user":Landroid/os/UserHandle;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_1a

    .line 61
    :cond_3f
    return-object v3
.end method


# virtual methods
.method public greylist-max-o getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/webkit/UserPackage;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public greylist-max-o isEnabledPackage()Z
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 70
    :cond_6
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return v0
.end method

.method public greylist-max-o isInstalledPackage()Z
    .registers 4

    .line 77
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 78
    :cond_6
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method
