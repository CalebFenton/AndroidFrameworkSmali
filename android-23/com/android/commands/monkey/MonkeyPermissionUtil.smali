.class public Lcom/android/commands/monkey/MonkeyPermissionUtil;
.super Ljava/lang/Object;
.source "MonkeyPermissionUtil.java"


# static fields
.field private static final MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

.field private static final PERMISSION_GROUP_PREFIX:Ljava/lang/String; = "android.permission-group."

.field private static final PERMISSION_PREFIX:Ljava/lang/String; = "android.permission."


# instance fields
.field private mPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mTargetSystemPackages:Z

.field private mTargetedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 46
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 47
    const-string/jumbo v1, "android.permission-group.CALENDAR"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "android.permission-group.CAMERA"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 48
    const-string/jumbo v1, "android.permission-group.CONTACTS"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "android.permission-group.LOCATION"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 49
    const-string/jumbo v1, "android.permission-group.SENSORS"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "android.permission-group.SMS"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 50
    const-string/jumbo v1, "android.permission-group.PHONE"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "android.permission-group.MICROPHONE"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 51
    const-string/jumbo v1, "android.permission-group.STORAGE"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 46
    sput-object v0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    #@3d
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    const-string/jumbo v0, "package"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPm:Landroid/content/pm/IPackageManager;

    #@10
    .line 76
    return-void
.end method

.method private static isModernPermissionGroup(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 56
    sget-object v3, Lcom/android/commands/monkey/MonkeyPermissionUtil;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget-object v0, v3, v1

    #@9
    .line 57
    .local v0, "modernGroup":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 58
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 61
    .end local v0    # "modernGroup":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private shouldTargetPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 91
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 92
    return v3

    #@f
    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetSystemPackages:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 96
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->isPackageInvalid(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 101
    :cond_1
    return v2

    #@20
    .line 98
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@24
    and-int/lit8 v0, v0, 0x1

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 99
    return v3
.end method

.method private shouldTargetPermission(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 105
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPm:Landroid/content/pm/IPackageManager;

    #@3
    iget-object v3, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@8
    move-result v4

    #@9
    invoke-interface {v2, v3, p1, v4}, Landroid/content/pm/IPackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    .line 108
    .local v0, "flags":I
    iget-object v2, p2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@f
    if-eqz v2, :cond_0

    #@11
    iget v2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@13
    const/4 v3, 0x1

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 109
    and-int/lit8 v2, v0, 0x14

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 110
    iget-object v1, p2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@1c
    invoke-static {v1}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->isModernPermissionGroup(Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    .line 108
    :cond_0
    return v1
.end method


# virtual methods
.method public dump()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 152
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v7, "// Targeted packages and permissions:"

    #@7
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 153
    iget-object v6, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    #@c
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@f
    move-result-object v6

    #@10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_3

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/util/Map$Entry;

    #@20
    .line 154
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v7, "//  + Using %s"

    #@25
    new-array v8, v11, [Ljava/lang/Object;

    #@27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    aput-object v9, v8, v10

    #@2d
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Ljava/util/List;

    #@3a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v5

    #@3e
    .local v5, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_0

    #@44
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Landroid/content/pm/PermissionInfo;

    #@4a
    .line 156
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v3, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@4c
    .line 157
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@4e
    .line 158
    const-string/jumbo v6, "android.permission."

    #@51
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_1

    #@57
    .line 159
    const-string/jumbo v6, "android.permission."

    #@5a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@5d
    move-result v6

    #@5e
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    .line 162
    :cond_1
    iget-object v2, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@64
    .line 163
    .local v2, "group":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@66
    .line 164
    const-string/jumbo v6, "android.permission-group."

    #@69
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v6

    #@6d
    if-eqz v6, :cond_2

    #@6f
    .line 165
    const-string/jumbo v6, "android.permission-group."

    #@72
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@75
    move-result v6

    #@76
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    .line 168
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7c
    const-string/jumbo v7, "//    Permission: %s [%s]"

    #@7f
    const/4 v8, 0x2

    #@80
    new-array v8, v8, [Ljava/lang/Object;

    #@82
    aput-object v3, v8, v10

    #@84
    aput-object v2, v8, v11

    #@86
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8d
    goto :goto_0

    #@8e
    .line 151
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    .end local v2    # "group":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v5    # "pi$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public generateRandomPermissionEvent(Ljava/util/Random;)Lcom/android/commands/monkey/MonkeyPermissionEvent;
    .locals 4
    .param p1, "random"    # Ljava/util/Random;

    #@0
    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetedPackages:Ljava/util/List;

    #@2
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetedPackages:Ljava/util/List;

    #@4
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    #@b
    move-result v3

    #@c
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    .line 175
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    #@14
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/List;

    #@1a
    .line 176
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v3, Lcom/android/commands/monkey/MonkeyPermissionEvent;

    #@1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    #@23
    move-result v2

    #@24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/content/pm/PermissionInfo;

    #@2a
    invoke-direct {v3, v1, v2}, Lcom/android/commands/monkey/MonkeyPermissionEvent;-><init>(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)V

    #@2d
    return-object v3
.end method

.method public populatePermissionsMapping()Z
    .locals 15

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 114
    new-instance v9, Ljava/util/HashMap;

    #@3
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@6
    iput-object v9, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    #@8
    .line 116
    :try_start_0
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPm:Landroid/content/pm/IPackageManager;

    #@a
    .line 117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@d
    move-result v11

    #@e
    const/16 v12, 0x1000

    #@10
    .line 116
    invoke-interface {v9, v12, v11}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@13
    move-result-object v9

    #@14
    invoke-virtual {v9}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@17
    move-result-object v7

    #@18
    .line 118
    .local v7, "pkgInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v3

    #@1c
    .local v3, "o$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v9

    #@20
    if-eqz v9, :cond_3

    #@22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    .line 119
    .local v2, "o":Ljava/lang/Object;
    move-object v0, v2

    #@27
    check-cast v0, Landroid/content/pm/PackageInfo;

    #@29
    move-object v1, v0

    #@2a
    .line 120
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->shouldTargetPackage(Landroid/content/pm/PackageInfo;)Z

    #@2d
    move-result v9

    #@2e
    if-eqz v9, :cond_0

    #@30
    .line 123
    new-instance v5, Ljava/util/ArrayList;

    #@32
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@35
    .line 124
    .local v5, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v9, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@37
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@39
    const/16 v11, 0x16

    #@3b
    if-le v9, v11, :cond_0

    #@3d
    .line 128
    iget-object v9, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@3f
    if-eqz v9, :cond_0

    #@41
    .line 131
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@43
    array-length v12, v11

    #@44
    move v9, v10

    #@45
    :goto_1
    if-ge v9, v12, :cond_2

    #@47
    aget-object v4, v11, v9

    #@49
    .line 132
    .local v4, "perm":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPm:Landroid/content/pm/IPackageManager;

    #@4b
    const/4 v14, 0x0

    #@4c
    invoke-interface {v13, v4, v14}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    #@4f
    move-result-object v6

    #@50
    .line 133
    .local v6, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v6, :cond_1

    #@52
    iget-object v13, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@54
    invoke-direct {p0, v13, v6}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->shouldTargetPermission(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)Z

    #@57
    move-result v13

    #@58
    if-eqz v13, :cond_1

    #@5a
    .line 134
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5d
    .line 131
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 137
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@63
    move-result v9

    #@64
    if-nez v9, :cond_0

    #@66
    .line 138
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    #@68
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@6a
    invoke-interface {v9, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    goto :goto_0

    #@6e
    .line 141
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "o$iterator":Ljava/util/Iterator;
    .end local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v7    # "pkgInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    :catch_0
    move-exception v8

    #@6f
    .line 142
    .local v8, "re":Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@71
    const-string/jumbo v11, "** Failed talking with package manager!"

    #@74
    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@77
    .line 143
    return v10

    #@78
    .line 145
    .end local v8    # "re":Landroid/os/RemoteException;
    .restart local v3    # "o$iterator":Ljava/util/Iterator;
    .restart local v7    # "pkgInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    #@7a
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    #@7d
    move-result v9

    #@7e
    if-nez v9, :cond_4

    #@80
    .line 146
    new-instance v9, Ljava/util/ArrayList;

    #@82
    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    #@84
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@87
    move-result-object v10

    #@88
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@8b
    iput-object v9, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetedPackages:Ljava/util/List;

    #@8d
    .line 148
    :cond_4
    const/4 v9, 0x1

    #@8e
    return v9
.end method

.method public setTargetSystemPackages(Z)V
    .locals 0
    .param p1, "targetSystemPackages"    # Z

    #@0
    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetSystemPackages:Z

    #@2
    .line 80
    return-void
.end method
