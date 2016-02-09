.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;,
        Landroid/widget/AppSecurityPermissions$MyPermissionInfo;,
        Landroid/widget/AppSecurityPermissions$PermissionItemView;,
        Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"

.field public static final WHICH_ALL:I = 0xffff

.field public static final WHICH_NEW:I = 0x4

.field private static final localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNewPermPrefix:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 72
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    #@a
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 74
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    #@11
    .line 77
    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-direct {v0, v1}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>(Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;)V

    #@17
    .line 76
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    #@19
    .line 78
    new-instance v0, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    #@1b
    invoke-direct {v0}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    #@20
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@25
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    #@27
    .line 249
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    #@29
    .line 250
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    #@2b
    const-string/jumbo v1, "layout_inflater"

    #@2e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/view/LayoutInflater;

    #@34
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    #@36
    .line 251
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    #@38
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@3e
    .line 253
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    #@40
    const v1, 0x10403c3

    #@43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    #@49
    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 276
    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    #@3
    .line 277
    new-instance v2, Ljava/util/HashSet;

    #@5
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@8
    .line 278
    .local v2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    if-nez p2, :cond_0

    #@a
    .line 279
    return-void

    #@b
    .line 281
    :cond_0
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@d
    iput-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    #@f
    .line 284
    const/4 v1, 0x0

    #@10
    .line 286
    .local v1, "installedPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 288
    :try_start_0
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@16
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@18
    .line 289
    const/16 v6, 0x1000

    #@1a
    .line 288
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@1d
    move-result-object v1

    #@1e
    .line 292
    .end local v1    # "installedPkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-direct {p0, p2, v2, v1}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    #@21
    .line 295
    :cond_1
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 298
    :try_start_1
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@27
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@29
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    #@2c
    move-result v3

    #@2d
    .line 299
    .local v3, "sharedUid":I
    invoke-direct {p0, v3, v2}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@30
    .line 305
    .end local v3    # "sharedUid":I
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    #@32
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@35
    .line 306
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    #@37
    invoke-direct {p0, v4}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    #@3a
    .line 275
    return-void

    #@3b
    .line 300
    :catch_0
    move-exception v0

    #@3c
    .line 301
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "AppSecurityPermissions"

    #@3f
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "Couldn\'t retrieve shared user id for: "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_1

    #@59
    .line 290
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "installedPkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    #@5a
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    #@3
    .line 258
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    #@5
    .line 259
    new-instance v1, Ljava/util/HashSet;

    #@7
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 262
    .local v1, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@c
    const/16 v4, 0x1000

    #@e
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 268
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    if-eqz v3, :cond_0

    #@16
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1a
    const/4 v4, -0x1

    #@1b
    if-eq v3, v4, :cond_0

    #@1d
    .line 269
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1f
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@21
    invoke-direct {p0, v3, v1}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    #@24
    .line 271
    :cond_0
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    #@26
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@29
    .line 272
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    #@2b
    invoke-direct {p0, v3}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    #@2e
    .line 256
    return-void

    #@2f
    .line 263
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@30
    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "AppSecurityPermissions"

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "Couldn\'t retrieve permissions for package:"

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 265
    return-void
.end method

.method private addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V
    .locals 2
    .param p2, "pInfo"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 589
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 590
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@6
    invoke-virtual {p2, v1}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    #@c
    .line 592
    :cond_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    #@e
    invoke-static {p1, p2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@11
    move-result v0

    #@12
    .line 594
    .local v0, "idx":I
    if-gez v0, :cond_1

    #@14
    .line 595
    neg-int v1, v0

    #@15
    add-int/lit8 v0, v1, -0x1

    #@17
    .line 596
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@1a
    .line 588
    :cond_1
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V
    .locals 12
    .param p2, "permListView"    # Landroid/widget/LinearLayout;
    .param p3, "which"    # I
    .param p4, "showRevokeUI"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 468
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;>;"
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@3
    .line 470
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v0

    #@d
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@f
    const/high16 v3, 0x41000000    # 8.0f

    #@11
    mul-float/2addr v0, v3

    #@12
    float-to-int v10, v0

    #@13
    .line 472
    .local v10, "spacing":I
    const/4 v6, 0x0

    #@14
    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@17
    move-result v0

    #@18
    if-ge v6, v0, :cond_6

    #@1a
    .line 473
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@20
    .line 474
    .local v1, "grp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {p0, v1, p3}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    #@23
    move-result-object v9

    #@24
    .line 475
    .local v9, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v7, 0x0

    #@25
    .local v7, "j":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@28
    move-result v0

    #@29
    if-ge v7, v0, :cond_5

    #@2b
    .line 476
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@31
    .line 477
    .local v2, "perm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    if-nez v7, :cond_3

    #@33
    const/4 v3, 0x1

    #@34
    .line 478
    :goto_2
    const/4 v0, 0x4

    #@35
    if-eq p3, v0, :cond_4

    #@37
    iget-object v4, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    #@39
    :goto_3
    move-object v0, p0

    #@3a
    move/from16 v5, p4

    #@3c
    .line 477
    invoke-direct/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@3f
    move-result-object v11

    #@40
    .line 479
    .local v11, "view":Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    #@42
    .line 480
    const/4 v0, -0x1

    #@43
    .line 481
    const/4 v3, -0x2

    #@44
    .line 479
    invoke-direct {v8, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@47
    .line 482
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v7, :cond_0

    #@49
    .line 483
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@4b
    .line 485
    :cond_0
    iget-object v0, v1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v0

    #@51
    add-int/lit8 v0, v0, -0x1

    #@53
    if-ne v7, v0, :cond_1

    #@55
    .line 486
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@57
    .line 488
    :cond_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_2

    #@5d
    .line 489
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@5f
    mul-int/lit8 v0, v0, 0x2

    #@61
    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@63
    .line 491
    :cond_2
    invoke-virtual {p2, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@66
    .line 475
    add-int/lit8 v7, v7, 0x1

    #@68
    goto :goto_1

    #@69
    .line 477
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    #@6a
    goto :goto_2

    #@6b
    .line 478
    :cond_4
    const/4 v4, 0x0

    #@6c
    goto :goto_3

    #@6d
    .line 472
    .end local v2    # "perm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 467
    .end local v1    # "grp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v7    # "j":I
    .end local v9    # "perms":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :cond_6
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 21
    .param p1, "info"    # Landroid/content/pm/PackageInfo;
    .param p3, "installedPkgInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 345
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@4
    move-object/from16 v16, v0

    #@6
    .line 346
    .local v16, "strList":[Ljava/lang/String;
    move-object/from16 v0, p1

    #@8
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@a
    .line 347
    .local v6, "flagsList":[I
    if-eqz v16, :cond_0

    #@c
    move-object/from16 v0, v16

    #@e
    array-length v0, v0

    #@f
    move/from16 v18, v0

    #@11
    if-nez v18, :cond_1

    #@13
    .line 348
    :cond_0
    return-void

    #@14
    .line 350
    :cond_1
    const/4 v10, 0x0

    #@15
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v16

    #@17
    array-length v0, v0

    #@18
    move/from16 v18, v0

    #@1a
    move/from16 v0, v18

    #@1c
    if-ge v10, v0, :cond_e

    #@1e
    .line 351
    aget-object v15, v16, v10

    #@20
    .line 353
    .local v15, "permName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@24
    move-object/from16 v18, v0

    #@26
    const/16 v19, 0x0

    #@28
    move-object/from16 v0, v18

    #@2a
    move/from16 v1, v19

    #@2c
    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    #@2f
    move-result-object v17

    #@30
    .line 354
    .local v17, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    if-nez v17, :cond_3

    #@32
    .line 350
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@34
    goto :goto_0

    #@35
    .line 357
    .restart local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_3
    const/4 v5, -0x1

    #@36
    .line 358
    .local v5, "existingIndex":I
    if-eqz p3, :cond_4

    #@38
    .line 359
    move-object/from16 v0, p3

    #@3a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@3c
    move-object/from16 v18, v0

    #@3e
    if-eqz v18, :cond_4

    #@40
    .line 360
    const/4 v11, 0x0

    #@41
    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p3

    #@43
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@45
    move-object/from16 v18, v0

    #@47
    move-object/from16 v0, v18

    #@49
    array-length v0, v0

    #@4a
    move/from16 v18, v0

    #@4c
    move/from16 v0, v18

    #@4e
    if-ge v11, v0, :cond_4

    #@50
    .line 361
    move-object/from16 v0, p3

    #@52
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@54
    move-object/from16 v18, v0

    #@56
    aget-object v18, v18, v11

    #@58
    move-object/from16 v0, v18

    #@5a
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v18

    #@5e
    if-eqz v18, :cond_8

    #@60
    .line 362
    move v5, v11

    #@61
    .line 367
    .end local v11    # "j":I
    :cond_4
    if-ltz v5, :cond_9

    #@63
    .line 368
    move-object/from16 v0, p3

    #@65
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@67
    move-object/from16 v18, v0

    #@69
    aget v4, v18, v5

    #@6b
    .line 369
    .local v4, "existingFlags":I
    :goto_3
    aget v18, v6, v10

    #@6d
    move-object/from16 v0, p0

    #@6f
    move-object/from16 v1, v17

    #@71
    move/from16 v2, v18

    #@73
    invoke-direct {v0, v1, v2, v4}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    #@76
    move-result v18

    #@77
    if-eqz v18, :cond_2

    #@79
    .line 374
    move-object/from16 v0, v17

    #@7b
    iget-object v14, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@7d
    .line 375
    .local v14, "origGroupName":Ljava/lang/String;
    move-object v8, v14

    #@7e
    .line 376
    .local v8, "groupName":Ljava/lang/String;
    if-nez v8, :cond_5

    #@80
    .line 377
    move-object/from16 v0, v17

    #@82
    iget-object v8, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@84
    .line 378
    move-object/from16 v0, v17

    #@86
    iput-object v8, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@88
    .line 380
    :cond_5
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    #@8c
    move-object/from16 v18, v0

    #@8e
    move-object/from16 v0, v18

    #@90
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    move-result-object v7

    #@94
    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@96
    .line 381
    .local v7, "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_7

    #@98
    .line 382
    const/4 v9, 0x0

    #@99
    .line 383
    .local v9, "grp":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v14, :cond_6

    #@9b
    .line 384
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@9f
    move-object/from16 v18, v0

    #@a1
    const/16 v19, 0x0

    #@a3
    move-object/from16 v0, v18

    #@a5
    move/from16 v1, v19

    #@a7
    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@aa
    move-result-object v9

    #@ab
    .line 386
    .end local v9    # "grp":Landroid/content/pm/PermissionGroupInfo;
    :cond_6
    if-eqz v9, :cond_a

    #@ad
    .line 387
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@af
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {v7, v9}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    #@b2
    .line 400
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :goto_4
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    #@b6
    move-object/from16 v18, v0

    #@b8
    move-object/from16 v0, v17

    #@ba
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@bc
    move-object/from16 v19, v0

    #@be
    move-object/from16 v0, v18

    #@c0
    move-object/from16 v1, v19

    #@c2
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    .line 402
    :cond_7
    if-eqz p3, :cond_d

    #@c7
    .line 403
    and-int/lit8 v18, v4, 0x2

    #@c9
    if-nez v18, :cond_c

    #@cb
    const/4 v13, 0x1

    #@cc
    .line 404
    .local v13, "newPerm":Z
    :goto_5
    new-instance v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@ce
    move-object/from16 v0, v17

    #@d0
    invoke-direct {v12, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    #@d3
    .line 405
    .local v12, "myPerm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    aget v18, v6, v10

    #@d5
    move/from16 v0, v18

    #@d7
    iput v0, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    #@d9
    .line 406
    iput v4, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    #@db
    .line 409
    iput-boolean v13, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    #@dd
    .line 410
    move-object/from16 v0, p2

    #@df
    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e2
    goto/16 :goto_1

    #@e4
    .line 411
    .end local v4    # "existingFlags":I
    .end local v5    # "existingIndex":I
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v12    # "myPerm":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .end local v13    # "newPerm":Z
    .end local v14    # "origGroupName":Ljava/lang/String;
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v3

    #@e5
    .line 412
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v18, "AppSecurityPermissions"

    #@e8
    new-instance v19, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v20, "Ignoring unknown permission:"

    #@f0
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v19

    #@f4
    move-object/from16 v0, v19

    #@f6
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v19

    #@fa
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v19

    #@fe
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@101
    goto/16 :goto_1

    #@103
    .line 360
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "existingIndex":I
    .restart local v11    # "j":I
    .restart local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    #@105
    goto/16 :goto_2

    #@107
    .line 368
    .end local v11    # "j":I
    :cond_9
    const/4 v4, 0x0

    #@108
    .restart local v4    # "existingFlags":I
    goto/16 :goto_3

    #@10a
    .line 393
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .restart local v8    # "groupName":Ljava/lang/String;
    .restart local v14    # "origGroupName":Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, v17

    #@10c
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@10e
    move-object/from16 v18, v0

    #@110
    move-object/from16 v0, v18

    #@112
    move-object/from16 v1, v17

    #@114
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@116
    .line 394
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    #@11a
    move-object/from16 v18, v0

    #@11c
    move-object/from16 v0, v17

    #@11e
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@120
    move-object/from16 v19, v0

    #@122
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    move-result-object v7

    #@126
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@128
    .line 395
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_b

    #@12a
    .line 396
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@12c
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    #@12e
    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    #@131
    .line 398
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_b
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@133
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    #@135
    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@138
    .restart local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    goto/16 :goto_4

    #@13a
    .line 403
    :cond_c
    const/4 v13, 0x0

    #@13b
    .restart local v13    # "newPerm":Z
    goto :goto_5

    #@13c
    .line 402
    .end local v13    # "newPerm":Z
    :cond_d
    const/4 v13, 0x0

    #@13d
    .restart local v13    # "newPerm":Z
    goto :goto_5

    #@13e
    .line 344
    .end local v4    # "existingFlags":I
    .end local v5    # "existingIndex":I
    .end local v7    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v13    # "newPerm":Z
    .end local v14    # "origGroupName":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v17    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_e
    return-void
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 4
    .param p1, "sharedUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v2, 0x0

    #@1
    .line 325
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@3
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 326
    .local v1, "sharedPkgList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@9
    array-length v3, v1

    #@a
    if-nez v3, :cond_1

    #@c
    .line 327
    :cond_0
    return-void

    #@d
    .line 329
    :cond_1
    array-length v3, v1

    #@e
    :goto_0
    if-ge v2, v3, :cond_2

    #@10
    aget-object v0, v1, v2

    #@12
    .line 330
    .local v0, "sharedPkg":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/widget/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    #@15
    .line 329
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 324
    .end local v0    # "sharedPkg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grpName"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "dangerous"    # Z

    #@0
    .prologue
    .line 317
    const-string/jumbo v0, "layout_inflater"

    #@3
    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/view/LayoutInflater;

    #@9
    .line 318
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-eqz p3, :cond_0

    #@b
    .line 319
    const v0, 0x108030c

    #@e
    .line 318
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v5

    #@12
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    #@13
    move-object v2, p1

    #@14
    move-object v3, p2

    #@15
    move v4, p3

    #@16
    .line 320
    invoke-static/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 319
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x108042c

    #@1e
    goto :goto_0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p3, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p4, "first"    # Z
    .param p5, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "showRevokeUI"    # Z

    #@0
    .prologue
    .line 506
    iget v1, p3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->flags:I

    #@2
    and-int/lit8 v1, v1, 0x1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 507
    const v1, 0x1090035

    #@9
    .line 508
    :goto_0
    const/4 v2, 0x0

    #@a
    .line 505
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@10
    .local v0, "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    move-object v1, p2

    #@11
    move-object v2, p3

    #@12
    move v3, p4

    #@13
    move-object v4, p5

    #@14
    move-object v5, p6

    #@15
    move v6, p7

    #@16
    .line 509
    invoke-virtual/range {v0 .. v6}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V

    #@19
    .line 510
    return-object v0

    #@1a
    .line 507
    .end local v0    # "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    :cond_0
    const v1, 0x1090034

    #@1d
    goto :goto_0
.end method

.method private getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 8
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "showRevokeUI"    # Z

    #@0
    .prologue
    .line 498
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    #@4
    .line 499
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move v4, p3

    #@9
    move-object v5, p4

    #@a
    move v7, p5

    #@b
    .line 498
    invoke-static/range {v0 .. v7}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grpName"    # Ljava/lang/CharSequence;
    .param p3, "permList"    # Ljava/lang/CharSequence;
    .param p4, "dangerous"    # Z
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 515
    const v4, 0x1090036

    #@4
    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@7
    move-result-object v3

    #@8
    .line 517
    .local v3, "permView":Landroid/view/View;
    const v4, 0x1020309

    #@b
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/widget/TextView;

    #@11
    .line 518
    .local v2, "permGrpView":Landroid/widget/TextView;
    const v4, 0x102030a

    #@14
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/widget/TextView;

    #@1a
    .line 520
    .local v1, "permDescView":Landroid/widget/TextView;
    const v4, 0x1020305

    #@1d
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/widget/ImageView;

    #@23
    .line 521
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@26
    .line 522
    if-eqz p2, :cond_0

    #@28
    .line 523
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2b
    .line 524
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2e
    .line 529
    :goto_0
    return-object v3

    #@2f
    .line 526
    :cond_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@32
    .line 527
    const/16 v4, 0x8

    #@34
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    #@37
    goto :goto_0
.end method

.method private getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 1
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 422
    const/4 v0, 0x4

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 423
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    #@5
    return-object v0

    #@6
    .line 425
    :cond_0
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 336
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@2
    const/16 v3, 0x1000

    #@4
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@7
    move-result-object v1

    #@8
    .line 337
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1, p2, v1}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 334
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    #@c
    .line 338
    :catch_0
    move-exception v0

    #@d
    .line 339
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "AppSecurityPermissions"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Couldn\'t retrieve permissions for package: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method private getPermissionsView(IZ)Landroid/view/View;
    .locals 7
    .param p1, "which"    # I
    .param p2, "showRevokeUI"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 450
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    #@3
    const v4, 0x1090037

    #@6
    const/4 v5, 0x0

    #@7
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/widget/LinearLayout;

    #@d
    .line 451
    .local v2, "permsView":Landroid/widget/LinearLayout;
    const v3, 0x102030c

    #@10
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/widget/LinearLayout;

    #@16
    .line 452
    .local v0, "displayList":Landroid/widget/LinearLayout;
    const v3, 0x102030b

    #@19
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    .line 454
    .local v1, "noPermsView":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    #@1f
    invoke-direct {p0, v3, v0, p1, p2}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V

    #@22
    .line 455
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@25
    move-result v3

    #@26
    if-gtz v3, :cond_0

    #@28
    .line 456
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    #@2b
    .line 459
    :cond_0
    return-object v2
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .locals 10
    .param p1, "pInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "newReqFlags"    # I
    .param p3, "existingReqFlags"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 534
    iget v7, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@4
    and-int/lit8 v0, v7, 0xf

    #@6
    .line 535
    .local v0, "base":I
    if-nez v0, :cond_0

    #@8
    const/4 v4, 0x1

    #@9
    .line 538
    .local v4, "isNormal":Z
    :goto_0
    if-eqz v4, :cond_1

    #@b
    .line 539
    return v8

    #@c
    .line 535
    .end local v4    # "isNormal":Z
    :cond_0
    const/4 v4, 0x0

    #@d
    .restart local v4    # "isNormal":Z
    goto :goto_0

    #@e
    .line 542
    :cond_1
    if-eq v0, v9, :cond_3

    #@10
    .line 543
    iget v7, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@12
    and-int/lit16 v7, v7, 0x80

    #@14
    if-eqz v7, :cond_4

    #@16
    const/4 v1, 0x1

    #@17
    .line 545
    .local v1, "isDangerous":Z
    :goto_1
    and-int/lit8 v7, p2, 0x1

    #@19
    if-eqz v7, :cond_5

    #@1b
    const/4 v5, 0x1

    #@1c
    .line 547
    .local v5, "isRequired":Z
    :goto_2
    iget v7, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@1e
    and-int/lit8 v7, v7, 0x20

    #@20
    if-eqz v7, :cond_6

    #@22
    const/4 v2, 0x1

    #@23
    .line 549
    .local v2, "isDevelopment":Z
    :goto_3
    and-int/lit8 v7, p3, 0x2

    #@25
    if-eqz v7, :cond_7

    #@27
    const/4 v6, 0x1

    #@28
    .line 551
    .local v6, "wasGranted":Z
    :goto_4
    and-int/lit8 v7, p2, 0x2

    #@2a
    if-eqz v7, :cond_8

    #@2c
    const/4 v3, 0x1

    #@2d
    .line 555
    .local v3, "isGranted":Z
    :goto_5
    if-eqz v1, :cond_9

    #@2f
    if-nez v5, :cond_2

    #@31
    if-nez v6, :cond_2

    #@33
    if-eqz v3, :cond_9

    #@35
    .line 556
    :cond_2
    return v9

    #@36
    .line 542
    .end local v1    # "isDangerous":Z
    .end local v2    # "isDevelopment":Z
    .end local v3    # "isGranted":Z
    .end local v5    # "isRequired":Z
    .end local v6    # "wasGranted":Z
    :cond_3
    const/4 v1, 0x1

    #@37
    .restart local v1    # "isDangerous":Z
    goto :goto_1

    #@38
    .line 543
    .end local v1    # "isDangerous":Z
    :cond_4
    const/4 v1, 0x0

    #@39
    .restart local v1    # "isDangerous":Z
    goto :goto_1

    #@3a
    .line 545
    :cond_5
    const/4 v5, 0x0

    #@3b
    .restart local v5    # "isRequired":Z
    goto :goto_2

    #@3c
    .line 547
    :cond_6
    const/4 v2, 0x0

    #@3d
    .restart local v2    # "isDevelopment":Z
    goto :goto_3

    #@3e
    .line 549
    :cond_7
    const/4 v6, 0x0

    #@3f
    .restart local v6    # "wasGranted":Z
    goto :goto_4

    #@40
    .line 551
    :cond_8
    const/4 v3, 0x0

    #@41
    .restart local v3    # "isGranted":Z
    goto :goto_5

    #@42
    .line 562
    :cond_9
    if-eqz v2, :cond_a

    #@44
    if-eqz v6, :cond_a

    #@46
    .line 565
    return v9

    #@47
    .line 567
    :cond_a
    return v8
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 601
    .local p1, "permList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    if-eqz p1, :cond_1

    #@2
    .line 603
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v4

    #@6
    .local v4, "pInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_1

    #@c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@12
    .line 605
    .local v3, "pInfo":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    iget v7, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    #@14
    iget v8, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    #@16
    invoke-direct {p0, v3, v7, v8}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_0

    #@1c
    .line 609
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    #@1e
    iget-object v8, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->group:Ljava/lang/String;

    #@20
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@26
    .line 610
    .local v2, "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-eqz v2, :cond_0

    #@28
    .line 611
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@2a
    invoke-virtual {v3, v7}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@2d
    move-result-object v7

    #@2e
    iput-object v7, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    #@30
    .line 612
    iget-object v7, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    #@32
    invoke-direct {p0, v7, v3}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    #@35
    .line 613
    iget-boolean v7, v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    #@37
    if-eqz v7, :cond_0

    #@39
    .line 614
    iget-object v7, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    #@3b
    invoke-direct {p0, v7, v3}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    #@3e
    goto :goto_0

    #@3f
    .line 620
    .end local v2    # "group":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v3    # "pInfo":Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .end local v4    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    #@41
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@44
    move-result-object v7

    #@45
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v6

    #@49
    .local v6, "pgrp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v7

    #@4d
    if-eqz v7, :cond_4

    #@4f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v5

    #@53
    check-cast v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@55
    .line 621
    .local v5, "pgrp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    iget v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->labelRes:I

    #@57
    if-nez v7, :cond_2

    #@59
    iget-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@5b
    if-eqz v7, :cond_3

    #@5d
    .line 622
    :cond_2
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@5f
    invoke-virtual {v5, v7}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@62
    move-result-object v7

    #@63
    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    #@65
    .line 632
    :goto_2
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    #@67
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_1

    #@6b
    .line 626
    :cond_3
    :try_start_0
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@6d
    iget-object v8, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    #@6f
    const/4 v9, 0x0

    #@70
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@73
    move-result-object v0

    #@74
    .line 627
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@76
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@79
    move-result-object v7

    #@7a
    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    goto :goto_2

    #@7d
    .line 628
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@7e
    .line 629
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    #@80
    invoke-virtual {v5, v7}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@83
    move-result-object v7

    #@84
    iput-object v7, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    #@86
    goto :goto_2

    #@87
    .line 634
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pgrp":Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_4
    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    #@89
    iget-object v8, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    #@8b
    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@8e
    .line 600
    return-void
.end method


# virtual methods
.method public getPermissionCount()I
    .locals 1

    #@0
    .prologue
    .line 418
    const v0, 0xffff

    #@3
    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getPermissionCount(I)I
    .locals 3
    .param p1, "which"    # I

    #@0
    .prologue
    .line 430
    const/4 v0, 0x0

    #@1
    .line 431
    .local v0, "N":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    #@4
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v2

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 432
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    #@c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@12
    invoke-direct {p0, v2, p1}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    add-int/2addr v0, v2

    #@1b
    .line 431
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 434
    :cond_0
    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 438
    const v0, 0xffff

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPermissionsView(I)Landroid/view/View;
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 446
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPermissionsViewWithRevokeButtons()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 442
    const v0, 0xffff

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
