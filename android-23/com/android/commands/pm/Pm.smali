.class public final Lcom/android/commands/pm/Pm;
.super Ljava/lang/Object;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;,
        Lcom/android/commands/pm/Pm$ClearDataObserver;,
        Lcom/android/commands/pm/Pm$ClearCacheObserver;,
        Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    }
.end annotation


# static fields
.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"

.field private static final TAG:Ljava/lang/String; = "Pm"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field mInstaller:Landroid/content/pm/IPackageInstaller;

.field private mNextArg:I

.field mPm:Landroid/content/pm/IPackageManager;

.field private mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mUm:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    .line 94
    iput-object v0, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    #@a
    .line 87
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1970
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1971
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "Missing ABI argument"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1974
    :cond_0
    const-string/jumbo v2, "-"

    #@12
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1975
    return-object p0

    #@19
    .line 1978
    :cond_1
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@1b
    .line 1979
    .local v1, "supportedAbis":[Ljava/lang/String;
    const/4 v2, 0x0

    #@1c
    array-length v3, v1

    #@1d
    :goto_0
    if-ge v2, v3, :cond_3

    #@1f
    aget-object v0, v1, v2

    #@21
    .line 1980
    .local v0, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 1981
    return-object p0

    #@28
    .line 1979
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1985
    .end local v0    # "supportedAbi":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "ABI "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, " not supported on this device"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
.end method

.method private displayPackageFilePath(Ljava/lang/String;)I
    .locals 9
    .param p1, "pckg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1932
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    invoke-interface {v3, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@8
    move-result-object v1

    #@9
    .line 1933
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    #@b
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 1934
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    const-string/jumbo v5, "package:"

    #@14
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@17
    .line 1935
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 1936
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@22
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@24
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_0

    #@2a
    .line 1937
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2c
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2e
    array-length v6, v5

    #@2f
    move v3, v4

    #@30
    :goto_0
    if-ge v3, v6, :cond_0

    #@32
    aget-object v2, v5, v3

    #@34
    .line 1938
    .local v2, "splitSourceDir":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@36
    const-string/jumbo v8, "package:"

    #@39
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3c
    .line 1939
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 1937
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1942
    .end local v2    # "splitSourceDir":Ljava/lang/String;
    :cond_0
    return v4

    #@45
    .line 1944
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@46
    .line 1945
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 1946
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@51
    const-string/jumbo v4, "Error: Could not access the Package Manager.  Is the system running?"

    #@54
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@57
    .line 1948
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x1

    #@58
    return v3
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .locals 16
    .param p2, "groups"    # Z
    .param p3, "labels"    # Z
    .param p4, "summary"    # Z
    .param p5, "startProtectionLevel"    # I
    .param p6, "endProtectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 667
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v12

    #@5
    if-ge v5, v12, :cond_12

    #@7
    .line 668
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Ljava/lang/String;

    #@f
    .line 669
    .local v4, "groupName":Ljava/lang/String;
    const-string/jumbo v9, ""

    #@12
    .line 670
    .local v9, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_2

    #@14
    .line 671
    if-lez v5, :cond_0

    #@16
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18
    const-string/jumbo v13, ""

    #@1b
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e
    .line 672
    :cond_0
    if-eqz v4, :cond_7

    #@20
    .line 673
    move-object/from16 v0, p0

    #@22
    iget-object v12, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@24
    .line 674
    const/4 v13, 0x0

    #@25
    .line 673
    invoke-interface {v12, v4, v13}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@28
    move-result-object v7

    #@29
    .line 675
    .local v7, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_5

    #@2b
    .line 676
    move-object/from16 v0, p0

    #@2d
    invoke-direct {v0, v7}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@30
    move-result-object v11

    #@31
    .line 677
    .local v11, "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_4

    #@33
    .line 678
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@35
    new-instance v13, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    #@3c
    .line 679
    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@3e
    .line 678
    move-object/from16 v0, p0

    #@40
    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@43
    move-result-object v14

    #@44
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v13

    #@48
    .line 679
    const-string/jumbo v14, ": "

    #@4b
    .line 678
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v13

    #@4f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v13

    #@53
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@56
    .line 704
    .end local v7    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string/jumbo v9, "  "

    #@59
    .line 706
    :cond_2
    move-object/from16 v0, p0

    #@5b
    iget-object v13, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@5d
    .line 707
    move-object/from16 v0, p1

    #@5f
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v12

    #@63
    check-cast v12, Ljava/lang/String;

    #@65
    const/4 v14, 0x0

    #@66
    .line 706
    invoke-interface {v13, v12, v14}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    #@69
    move-result-object v10

    #@6a
    .line 708
    .local v10, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@6d
    move-result v2

    #@6e
    .line 709
    .local v2, "count":I
    const/4 v3, 0x1

    #@6f
    .line 710
    .local v3, "first":Z
    const/4 v6, 0x0

    #@70
    .local v6, "p":I
    :goto_2
    if-ge v6, v2, :cond_10

    #@72
    .line 711
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v8

    #@76
    check-cast v8, Landroid/content/pm/PermissionInfo;

    #@78
    .line 712
    .local v8, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_a

    #@7a
    if-nez v4, :cond_a

    #@7c
    iget-object v12, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@7e
    if-eqz v12, :cond_a

    #@80
    .line 710
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@82
    goto :goto_2

    #@83
    .line 681
    .end local v2    # "count":I
    .end local v3    # "first":Z
    .end local v6    # "p":I
    .end local v8    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v10    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v7    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@85
    new-instance v13, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@8c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v13

    #@90
    const-string/jumbo v14, ": "

    #@93
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v13

    #@97
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v13

    #@9b
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@9e
    goto :goto_1

    #@9f
    .line 685
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_5
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a1
    new-instance v14, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    if-eqz p3, :cond_6

    #@a8
    const-string/jumbo v12, "+ "

    #@ab
    :goto_4
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v12

    #@af
    .line 686
    const-string/jumbo v14, "group:"

    #@b2
    .line 685
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v12

    #@b6
    .line 686
    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@b8
    .line 685
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v12

    #@bc
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v12

    #@c0
    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c3
    .line 687
    if-eqz p3, :cond_1

    #@c5
    .line 688
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c7
    new-instance v13, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v14, "  package:"

    #@cf
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v13

    #@d3
    iget-object v14, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    #@d5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v13

    #@d9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v13

    #@dd
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e0
    .line 689
    move-object/from16 v0, p0

    #@e2
    invoke-direct {v0, v7}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@e5
    move-result-object v11

    #@e6
    .line 690
    .restart local v11    # "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_1

    #@e8
    .line 691
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ea
    new-instance v13, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v14, "  label:"

    #@f2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v13

    #@f6
    .line 692
    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    #@f8
    .line 693
    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@fa
    .line 692
    move-object/from16 v0, p0

    #@fc
    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@ff
    move-result-object v14

    #@100
    .line 691
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v13

    #@104
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v13

    #@108
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10b
    .line 694
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10d
    new-instance v13, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v14, "  description:"

    #@115
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v13

    #@119
    .line 695
    iget v14, v7, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@11b
    .line 696
    iget-object v15, v7, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@11d
    .line 695
    move-object/from16 v0, p0

    #@11f
    invoke-direct {v0, v7, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@122
    move-result-object v14

    #@123
    .line 694
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v13

    #@127
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v13

    #@12b
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12e
    goto/16 :goto_1

    #@130
    .line 685
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_6
    const-string/jumbo v12, ""

    #@133
    goto/16 :goto_4

    #@135
    .line 701
    .end local v7    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_7
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@137
    new-instance v14, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    if-eqz p3, :cond_8

    #@13e
    if-eqz p4, :cond_9

    #@140
    .line 702
    :cond_8
    const-string/jumbo v12, ""

    #@143
    .line 701
    :goto_5
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v12

    #@147
    .line 702
    const-string/jumbo v14, "ungrouped:"

    #@14a
    .line 701
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v12

    #@14e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v12

    #@152
    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@155
    goto/16 :goto_1

    #@157
    .line 702
    :cond_9
    const-string/jumbo v12, "+ "

    #@15a
    goto :goto_5

    #@15b
    .line 715
    .restart local v2    # "count":I
    .restart local v3    # "first":Z
    .restart local v6    # "p":I
    .restart local v8    # "pi":Landroid/content/pm/PermissionInfo;
    .restart local v10    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_a
    iget v12, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@15d
    and-int/lit8 v1, v12, 0xf

    #@15f
    .line 716
    .local v1, "base":I
    move/from16 v0, p5

    #@161
    if-lt v1, v0, :cond_3

    #@163
    .line 717
    move/from16 v0, p6

    #@165
    if-gt v1, v0, :cond_3

    #@167
    .line 720
    if-eqz p4, :cond_d

    #@169
    .line 721
    if-eqz v3, :cond_b

    #@16b
    .line 722
    const/4 v3, 0x0

    #@16c
    .line 726
    :goto_6
    move-object/from16 v0, p0

    #@16e
    invoke-direct {v0, v8}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@171
    move-result-object v11

    #@172
    .line 727
    .restart local v11    # "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_c

    #@174
    .line 728
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@176
    iget v13, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    #@178
    .line 729
    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@17a
    .line 728
    move-object/from16 v0, p0

    #@17c
    invoke-direct {v0, v8, v13, v14}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@17f
    move-result-object v13

    #@180
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@183
    goto/16 :goto_3

    #@185
    .line 724
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_b
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@187
    const-string/jumbo v13, ", "

    #@18a
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@18d
    goto :goto_6

    #@18e
    .line 731
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_c
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@190
    iget-object v13, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@192
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@195
    goto/16 :goto_3

    #@197
    .line 734
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_d
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@199
    new-instance v12, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v14

    #@1a2
    if-eqz p3, :cond_f

    #@1a4
    const-string/jumbo v12, "+ "

    #@1a7
    :goto_7
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v12

    #@1ab
    .line 735
    const-string/jumbo v14, "permission:"

    #@1ae
    .line 734
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v12

    #@1b2
    .line 735
    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@1b4
    .line 734
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v12

    #@1b8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v12

    #@1bc
    invoke-virtual {v13, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1bf
    .line 736
    if-eqz p3, :cond_3

    #@1c1
    .line 737
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c3
    new-instance v13, Ljava/lang/StringBuilder;

    #@1c5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1c8
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v13

    #@1cc
    const-string/jumbo v14, "  package:"

    #@1cf
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v13

    #@1d3
    iget-object v14, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@1d5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v13

    #@1d9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v13

    #@1dd
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e0
    .line 738
    move-object/from16 v0, p0

    #@1e2
    invoke-direct {v0, v8}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@1e5
    move-result-object v11

    #@1e6
    .line 739
    .restart local v11    # "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_e

    #@1e8
    .line 740
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1ea
    new-instance v13, Ljava/lang/StringBuilder;

    #@1ec
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1ef
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v13

    #@1f3
    const-string/jumbo v14, "  label:"

    #@1f6
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v13

    #@1fa
    .line 741
    iget v14, v8, Landroid/content/pm/PermissionInfo;->labelRes:I

    #@1fc
    .line 742
    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1fe
    .line 741
    move-object/from16 v0, p0

    #@200
    invoke-direct {v0, v8, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@203
    move-result-object v14

    #@204
    .line 740
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v13

    #@208
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20b
    move-result-object v13

    #@20c
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20f
    .line 743
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@211
    new-instance v13, Ljava/lang/StringBuilder;

    #@213
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@216
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v13

    #@21a
    const-string/jumbo v14, "  description:"

    #@21d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v13

    #@221
    .line 744
    iget v14, v8, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@223
    .line 745
    iget-object v15, v8, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@225
    .line 744
    move-object/from16 v0, p0

    #@227
    invoke-direct {v0, v8, v14, v15}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@22a
    move-result-object v14

    #@22b
    .line 743
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v13

    #@22f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@232
    move-result-object v13

    #@233
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@236
    .line 747
    :cond_e
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@238
    new-instance v13, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v13

    #@241
    const-string/jumbo v14, "  protectionLevel:"

    #@244
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v13

    #@248
    .line 748
    iget v14, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@24a
    invoke-static {v14}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    #@24d
    move-result-object v14

    #@24e
    .line 747
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v13

    #@252
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@255
    move-result-object v13

    #@256
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@259
    goto/16 :goto_3

    #@25b
    .line 734
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_f
    const-string/jumbo v12, ""

    #@25e
    goto/16 :goto_7

    #@260
    .line 753
    .end local v1    # "base":I
    .end local v8    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_10
    if-eqz p4, :cond_11

    #@262
    .line 754
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@264
    const-string/jumbo v13, ""

    #@267
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26a
    .line 667
    :cond_11
    add-int/lit8 v5, v5, 0x1

    #@26c
    goto/16 :goto_0

    #@26e
    .line 666
    .end local v2    # "count":I
    .end local v3    # "first":Z
    .end local v4    # "groupName":Ljava/lang/String;
    .end local v6    # "p":I
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_12
    return-void
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1651
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1663
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 1653
    :pswitch_0
    const-string/jumbo v0, "default"

    #@a
    return-object v0

    #@b
    .line 1655
    :pswitch_1
    const-string/jumbo v0, "enabled"

    #@e
    return-object v0

    #@f
    .line 1657
    :pswitch_2
    const-string/jumbo v0, "disabled"

    #@12
    return-object v0

    #@13
    .line 1659
    :pswitch_3
    const-string/jumbo v0, "disabled-user"

    #@16
    return-object v0

    #@17
    .line 1661
    :pswitch_4
    const-string/jumbo v0, "disabled-until-used"

    #@1a
    return-object v0

    #@1b
    .line 1651
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getInstalledPackages(Landroid/content/pm/IPackageManager;II)Ljava/util/List;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    invoke-interface {p1, p2, p3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@3
    move-result-object v0

    #@4
    .line 410
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1952
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    #@3
    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@5
    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    check-cast v3, Landroid/content/res/Resources;

    #@b
    .line 1953
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    #@d
    return-object v3

    #@e
    .line 1956
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@10
    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@12
    const/4 v7, 0x0

    #@13
    const/4 v8, 0x0

    #@14
    invoke-interface {v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v0

    #@18
    .line 1957
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/res/AssetManager;

    #@1a
    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    #@1d
    .line 1958
    .local v1, "am":Landroid/content/res/AssetManager;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@22
    .line 1959
    new-instance v4, Landroid/content/res/Resources;

    #@24
    const/4 v5, 0x0

    #@25
    const/4 v6, 0x0

    #@26
    invoke-direct {v4, v1, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1960
    .end local v3    # "res":Landroid/content/res/Resources;
    .local v4, "res":Landroid/content/res/Resources;
    :try_start_1
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    #@2b
    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@2d
    invoke-virtual {v5, v6, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@30
    .line 1961
    return-object v4

    #@31
    .line 1962
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    #@32
    .line 1963
    .local v2, "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 1964
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v6, "Error: Could not access the Package Manager.  Is the system running?"

    #@40
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 1965
    return-object v9

    #@44
    .line 1962
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "res":Landroid/content/res/Resources;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    #@45
    .restart local v2    # "e":Landroid/os/RemoteException;
    move-object v3, v4

    #@46
    .end local v4    # "res":Landroid/content/res/Resources;
    .restart local v3    # "res":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method private installFailureToString(Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;)Ljava/lang/String;
    .locals 11
    .param p1, "obs"    # Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 805
    iget v5, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->result:I

    #@3
    .line 806
    .local v5, "result":I
    const-class v8, Landroid/content/pm/PackageManager;

    #@5
    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@8
    move-result-object v3

    #@9
    .line 807
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v8, v3

    #@a
    :goto_0
    if-ge v7, v8, :cond_4

    #@c
    aget-object v1, v3, v7

    #@e
    .line 808
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@11
    move-result-object v9

    #@12
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@14
    if-ne v9, v10, :cond_3

    #@16
    .line 809
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@19
    move-result v4

    #@1a
    .line 811
    .local v4, "modifiers":I
    and-int/lit8 v9, v4, 0x10

    #@1c
    if-eqz v9, :cond_3

    #@1e
    .line 812
    and-int/lit8 v9, v4, 0x1

    #@20
    if-eqz v9, :cond_3

    #@22
    .line 813
    and-int/lit8 v9, v4, 0x8

    #@24
    if-eqz v9, :cond_3

    #@26
    .line 814
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 815
    .local v2, "fieldName":Ljava/lang/String;
    const-string/jumbo v9, "INSTALL_FAILED_"

    #@2d
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v9

    #@31
    if-nez v9, :cond_0

    #@33
    .line 816
    const-string/jumbo v9, "INSTALL_PARSE_FAILED_"

    #@36
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@39
    move-result v9

    #@3a
    .line 815
    if-eqz v9, :cond_3

    #@3c
    .line 819
    :cond_0
    const/4 v9, 0x0

    #@3d
    :try_start_0
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@40
    move-result v9

    #@41
    if-ne v5, v9, :cond_3

    #@43
    .line 820
    new-instance v6, Ljava/lang/StringBuilder;

    #@45
    const/16 v9, 0x40

    #@47
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    #@4a
    .line 821
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 822
    iget-object v9, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPermission:Ljava/lang/String;

    #@4f
    if-eqz v9, :cond_1

    #@51
    .line 823
    const-string/jumbo v9, " perm="

    #@54
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 824
    iget-object v9, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPermission:Ljava/lang/String;

    #@59
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 826
    :cond_1
    iget-object v9, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPackage:Ljava/lang/String;

    #@5e
    if-eqz v9, :cond_2

    #@60
    .line 827
    const-string/jumbo v9, " pkg="

    #@63
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    iget-object v10, p1, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPackage:Ljava/lang/String;

    #@69
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 829
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    move-result-object v7

    #@70
    return-object v7

    #@71
    .line 831
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    #@72
    .line 807
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v4    # "modifiers":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@74
    goto :goto_0

    #@75
    .line 840
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    return-object v7
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1668
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1672
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 1669
    :catch_0
    move-exception v0

    #@6
    .line 1670
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method private linkStateToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 976
    packed-switch p1, :pswitch_data_0

    #@3
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unknown link state: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 977
    :pswitch_0
    const-string/jumbo v0, "undefined"

    #@1b
    return-object v0

    #@1c
    .line 978
    :pswitch_1
    const-string/jumbo v0, "ask"

    #@1f
    return-object v0

    #@20
    .line 979
    :pswitch_2
    const-string/jumbo v0, "always"

    #@23
    return-object v0

    #@24
    .line 980
    :pswitch_3
    const-string/jumbo v0, "never"

    #@27
    return-object v0

    #@28
    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"    # I
    .param p3, "nonLocalized"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 572
    if-eqz p3, :cond_0

    #@3
    .line 573
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    return-object v2

    #@8
    .line 575
    :cond_0
    if-eqz p2, :cond_1

    #@a
    .line 576
    invoke-direct {p0, p1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    .line 577
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    #@10
    .line 579
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 580
    :catch_0
    move-exception v0

    #@16
    .line 584
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 105
    const/4 v1, 0x1

    #@1
    .line 107
    .local v1, "exitCode":I
    :try_start_0
    new-instance v2, Lcom/android/commands/pm/Pm;

    #@3
    invoke-direct {v2}, Lcom/android/commands/pm/Pm;-><init>()V

    #@6
    invoke-virtual {v2, p0}, Lcom/android/commands/pm/Pm;->run([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    .line 115
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    #@d
    .line 104
    return-void

    #@e
    .line 108
    :catch_0
    move-exception v0

    #@f
    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Pm"

    #@12
    const-string/jumbo v3, "Error"

    #@15
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 110
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Error: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@31
    .line 111
    instance-of v2, v0, Landroid/os/RemoteException;

    #@33
    if-eqz v2, :cond_0

    #@35
    .line 112
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v3, "Error: Could not access the Package Manager.  Is the system running?"

    #@3a
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2055
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 2056
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 2058
    :cond_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 2059
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@15
    .line 2060
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 2018
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@5
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@7
    array-length v2, v2

    #@8
    if-lt v1, v2, :cond_0

    #@a
    .line 2019
    return-object v3

    #@b
    .line 2021
    :cond_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@d
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@f
    aget-object v0, v1, v2

    #@11
    .line 2022
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v1, "-"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 2023
    return-object v3

    #@1b
    .line 2025
    :cond_1
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@21
    .line 2026
    const-string/jumbo v1, "--"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 2027
    return-object v3

    #@2b
    .line 2029
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2e
    move-result v1

    #@2f
    if-le v1, v5, :cond_4

    #@31
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    const/16 v2, 0x2d

    #@37
    if-eq v1, v2, :cond_4

    #@39
    .line 2030
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3c
    move-result v1

    #@3d
    if-le v1, v4, :cond_3

    #@3f
    .line 2031
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@45
    .line 2032
    const/4 v1, 0x0

    #@46
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 2034
    :cond_3
    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@4d
    .line 2035
    return-object v0

    #@4e
    .line 2038
    :cond_4
    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@50
    .line 2039
    return-object v0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2043
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2044
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@7
    return-object v1

    #@8
    .line 2046
    :cond_0
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@a
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@c
    array-length v2, v2

    #@d
    if-lt v1, v2, :cond_1

    #@f
    .line 2047
    return-object v3

    #@10
    .line 2049
    :cond_1
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@12
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@14
    aget-object v0, v1, v2

    #@16
    .line 2050
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@1c
    .line 2051
    return-object v0
.end method

.method private runClear()I
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1604
    const/4 v6, 0x0

    #@2
    .line 1605
    .local v6, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 1606
    .local v3, "option":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@8
    const-string/jumbo v7, "--user"

    #@b
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_0

    #@11
    .line 1607
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 1608
    .local v4, "optionData":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@17
    invoke-static {v4}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_1

    #@1d
    .line 1613
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v6

    #@21
    .line 1617
    .end local v4    # "optionData":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 1618
    .local v5, "pkg":Ljava/lang/String;
    if-nez v5, :cond_2

    #@27
    .line 1619
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29
    const-string/jumbo v8, "Error: no package specified"

    #@2c
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f
    .line 1620
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@32
    .line 1621
    return v9

    #@33
    .line 1609
    .end local v5    # "pkg":Ljava/lang/String;
    .restart local v4    # "optionData":Ljava/lang/String;
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35
    const-string/jumbo v8, "Error: no USER_ID specified"

    #@38
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 1610
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3e
    .line 1611
    return v9

    #@3f
    .line 1624
    .end local v4    # "optionData":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/commands/pm/Pm$ClearDataObserver;

    #@41
    invoke-direct {v2}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    #@44
    .line 1626
    .local v2, "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@47
    move-result-object v7

    #@48
    invoke-interface {v7, v5, v2, v6}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    #@4b
    .line 1627
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@4c
    .line 1628
    :goto_0
    :try_start_1
    iget-boolean v7, v2, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    if-nez v7, :cond_3

    #@50
    .line 1630
    :try_start_2
    invoke-virtual {v2}, Lcom/android/commands/pm/Pm$ClearDataObserver;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_0

    #@54
    .line 1631
    :catch_0
    move-exception v1

    #@55
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@56
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_3
    monitor-exit v2

    #@57
    .line 1636
    iget-boolean v7, v2, Lcom/android/commands/pm/Pm$ClearDataObserver;->result:Z

    #@59
    if-eqz v7, :cond_4

    #@5b
    .line 1637
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5d
    const-string/jumbo v8, "Success"

    #@60
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@63
    .line 1638
    const/4 v7, 0x0

    #@64
    return v7

    #@65
    .line 1627
    :catchall_0
    move-exception v7

    #@66
    monitor-exit v2

    #@67
    throw v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@68
    .line 1643
    :catch_1
    move-exception v0

    #@69
    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6b
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@72
    .line 1645
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@74
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@77
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7a
    .line 1646
    return v9

    #@7b
    .line 1640
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_4
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7d
    const-string/jumbo v8, "Failed"

    #@80
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@83
    .line 1641
    return v9
.end method

.method private runDump()I
    .locals 3

    #@0
    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 770
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 771
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v2, "Error: no package specified"

    #@b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 772
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 774
    :cond_0
    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@12
    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    #@15
    .line 775
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method private runGetAppLink()I
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 928
    const/4 v4, 0x0

    #@3
    .line 931
    .local v4, "userId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@9
    .line 932
    const-string/jumbo v5, "--user"

    #@c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    .line 933
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v4

    #@1a
    .line 934
    if-gez v4, :cond_0

    #@1c
    .line 935
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v6, "Error: user must be >= 0"

    #@21
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 936
    return v8

    #@25
    .line 939
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v7, "Error: unknown option: "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 940
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@41
    .line 941
    return v8

    #@42
    .line 946
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 947
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_3

    #@48
    .line 948
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v6, "Error: no package specified."

    #@4d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 949
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@53
    .line 950
    return v8

    #@54
    .line 954
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@56
    const/4 v6, 0x0

    #@57
    invoke-interface {v5, v3, v6, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@5a
    move-result-object v1

    #@5b
    .line 955
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_4

    #@5d
    .line 956
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5f
    new-instance v6, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v7, "Error: package "

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    const-string/jumbo v7, " not found."

    #@72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7d
    .line 957
    return v8

    #@7e
    .line 960
    :cond_4
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@80
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@82
    and-int/lit8 v5, v5, 0x10

    #@84
    if-nez v5, :cond_5

    #@86
    .line 961
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@88
    new-instance v6, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v7, "Error: package "

    #@90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v6

    #@98
    const-string/jumbo v7, " does not handle web links."

    #@9b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a6
    .line 962
    return v8

    #@a7
    .line 965
    :cond_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a9
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@ab
    invoke-interface {v6, v3, v4}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    #@ae
    move-result v6

    #@af
    invoke-direct {p0, v6}, Lcom/android/commands/pm/Pm;->linkStateToString(I)Ljava/lang/String;

    #@b2
    move-result-object v6

    #@b3
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b6
    .line 972
    return v7

    #@b7
    .line 966
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@b8
    .line 967
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c1
    .line 968
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c3
    const-string/jumbo v6, "Error: Could not access the Package Manager.  Is the system running?"

    #@c6
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c9
    .line 969
    return v8
.end method

.method private runGetInstallLocation()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1014
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@4
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    #@7
    move-result v1

    #@8
    .line 1015
    .local v1, "loc":I
    const-string/jumbo v2, "invalid"

    #@b
    .line 1016
    .local v2, "locStr":Ljava/lang/String;
    if-nez v1, :cond_1

    #@d
    .line 1017
    const-string/jumbo v2, "auto"

    #@10
    .line 1023
    :cond_0
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, "["

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, "]"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 1024
    return v6

    #@35
    .line 1018
    :cond_1
    if-ne v1, v7, :cond_2

    #@37
    .line 1019
    const-string/jumbo v2, "internal"

    #@3a
    goto :goto_0

    #@3b
    .line 1020
    :cond_2
    const/4 v3, 0x2

    #@3c
    if-ne v1, v3, :cond_0

    #@3e
    .line 1021
    const-string/jumbo v2, "external"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 1025
    .end local v1    # "loc":I
    .end local v2    # "locStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@43
    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@45
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 1027
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4e
    const-string/jumbo v4, "Error: Could not access the Package Manager.  Is the system running?"

    #@51
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 1028
    return v7
.end method

.method private runGrantRevokePermission(Z)I
    .locals 11
    .param p1, "grant"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 1757
    const/4 v6, 0x0

    #@2
    .line 1759
    .local v6, "userId":I
    const/4 v3, 0x0

    #@3
    .line 1760
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@9
    .line 1761
    const-string/jumbo v7, "--user"

    #@c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 1762
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v6

    #@1a
    goto :goto_0

    #@1b
    .line 1766
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 1767
    .local v5, "pkg":Ljava/lang/String;
    if-nez v5, :cond_2

    #@21
    .line 1768
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23
    const-string/jumbo v8, "Error: no package specified"

    #@26
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    .line 1769
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@2c
    .line 1770
    return v10

    #@2d
    .line 1772
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    .line 1773
    .local v4, "perm":Ljava/lang/String;
    if-nez v4, :cond_3

    #@33
    .line 1774
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35
    const-string/jumbo v8, "Error: no permission specified"

    #@38
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 1775
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3e
    .line 1776
    return v10

    #@3f
    .line 1780
    :cond_3
    if-eqz p1, :cond_4

    #@41
    .line 1781
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@43
    invoke-interface {v7, v5, v4, v6}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@46
    .line 1785
    :goto_1
    const/4 v7, 0x0

    #@47
    return v7

    #@48
    .line 1783
    :cond_4
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@4a
    invoke-interface {v7, v5, v4, v6}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@4d
    goto :goto_1

    #@4e
    .line 1786
    :catch_0
    move-exception v0

    #@4f
    .line 1787
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@51
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 1788
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@5d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 1789
    return v10

    #@61
    .line 1794
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@62
    .line 1795
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@64
    new-instance v8, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v9, "Operation not allowed: "

    #@6c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    .line 1796
    return v10

    #@80
    .line 1790
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    #@81
    .line 1791
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@83
    new-instance v8, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v9, "Bad argument: "

    #@8b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9e
    .line 1792
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@a1
    .line 1793
    return v10
.end method

.method private runInstall()I
    .locals 22

    #@0
    .prologue
    .line 1033
    const/4 v9, 0x0

    #@1
    .line 1034
    .local v9, "installFlags":I
    const/4 v13, -0x1

    #@2
    .line 1035
    .local v13, "userId":I
    const/4 v10, 0x0

    #@3
    .line 1039
    .local v10, "installerPackageName":Ljava/lang/String;
    const/16 v19, 0x0

    #@5
    .line 1040
    .local v19, "originatingUriString":Ljava/lang/String;
    const/16 v20, 0x0

    #@7
    .line 1041
    .local v20, "referrer":Ljava/lang/String;
    const/4 v12, 0x0

    #@8
    .line 1043
    .end local v10    # "installerPackageName":Ljava/lang/String;
    .end local v19    # "originatingUriString":Ljava/lang/String;
    .end local v20    # "referrer":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@b
    move-result-object v18

    #@c
    .local v18, "opt":Ljava/lang/String;
    if-eqz v18, :cond_d

    #@e
    .line 1044
    const-string/jumbo v6, "-l"

    #@11
    move-object/from16 v0, v18

    #@13
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_1

    #@19
    .line 1045
    or-int/lit8 v9, v9, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1046
    :cond_1
    const-string/jumbo v6, "-r"

    #@1f
    move-object/from16 v0, v18

    #@21
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_2

    #@27
    .line 1047
    or-int/lit8 v9, v9, 0x2

    #@29
    goto :goto_0

    #@2a
    .line 1048
    :cond_2
    const-string/jumbo v6, "-i"

    #@2d
    move-object/from16 v0, v18

    #@2f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_3

    #@35
    .line 1049
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    .line 1050
    .local v10, "installerPackageName":Ljava/lang/String;
    if-nez v10, :cond_0

    #@3b
    .line 1051
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v7, "Error: no value specified for -i"

    #@40
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 1052
    const/4 v6, 0x1

    #@44
    return v6

    #@45
    .line 1054
    .end local v10    # "installerPackageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "-t"

    #@48
    move-object/from16 v0, v18

    #@4a
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_4

    #@50
    .line 1055
    or-int/lit8 v9, v9, 0x4

    #@52
    goto :goto_0

    #@53
    .line 1056
    :cond_4
    const-string/jumbo v6, "-s"

    #@56
    move-object/from16 v0, v18

    #@58
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_5

    #@5e
    .line 1058
    or-int/lit8 v9, v9, 0x8

    #@60
    goto :goto_0

    #@61
    .line 1059
    :cond_5
    const-string/jumbo v6, "-f"

    #@64
    move-object/from16 v0, v18

    #@66
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v6

    #@6a
    if-eqz v6, :cond_6

    #@6c
    .line 1061
    or-int/lit8 v9, v9, 0x10

    #@6e
    goto :goto_0

    #@6f
    .line 1062
    :cond_6
    const-string/jumbo v6, "-d"

    #@72
    move-object/from16 v0, v18

    #@74
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v6

    #@78
    if-eqz v6, :cond_7

    #@7a
    .line 1063
    or-int/lit16 v9, v9, 0x80

    #@7c
    goto :goto_0

    #@7d
    .line 1064
    :cond_7
    const-string/jumbo v6, "-g"

    #@80
    move-object/from16 v0, v18

    #@82
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v6

    #@86
    if-eqz v6, :cond_8

    #@88
    .line 1065
    or-int/lit16 v9, v9, 0x100

    #@8a
    goto/16 :goto_0

    #@8c
    .line 1066
    :cond_8
    const-string/jumbo v6, "--originating-uri"

    #@8f
    move-object/from16 v0, v18

    #@91
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v6

    #@95
    if-eqz v6, :cond_9

    #@97
    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@9a
    move-result-object v19

    #@9b
    .line 1068
    .local v19, "originatingUriString":Ljava/lang/String;
    if-nez v19, :cond_0

    #@9d
    .line 1069
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9f
    const-string/jumbo v7, "Error: must supply argument for --originating-uri"

    #@a2
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a5
    .line 1070
    const/4 v6, 0x1

    #@a6
    return v6

    #@a7
    .line 1072
    .end local v19    # "originatingUriString":Ljava/lang/String;
    :cond_9
    const-string/jumbo v6, "--referrer"

    #@aa
    move-object/from16 v0, v18

    #@ac
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v6

    #@b0
    if-eqz v6, :cond_a

    #@b2
    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@b5
    move-result-object v20

    #@b6
    .line 1074
    .local v20, "referrer":Ljava/lang/String;
    if-nez v20, :cond_0

    #@b8
    .line 1075
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    const-string/jumbo v7, "Error: must supply argument for --referrer"

    #@bd
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    .line 1076
    const/4 v6, 0x1

    #@c1
    return v6

    #@c2
    .line 1078
    .end local v20    # "referrer":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "--abi"

    #@c5
    move-object/from16 v0, v18

    #@c7
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v6

    #@cb
    if-eqz v6, :cond_b

    #@cd
    .line 1079
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@d0
    move-result-object v6

    #@d1
    invoke-static {v6}, Lcom/android/commands/pm/Pm;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    #@d4
    move-result-object v12

    #@d5
    .local v12, "abi":Ljava/lang/String;
    goto/16 :goto_0

    #@d7
    .line 1080
    .end local v12    # "abi":Ljava/lang/String;
    :cond_b
    const-string/jumbo v6, "--user"

    #@da
    move-object/from16 v0, v18

    #@dc
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v6

    #@e0
    if-eqz v6, :cond_c

    #@e2
    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@e5
    move-result-object v6

    #@e6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e9
    move-result v13

    #@ea
    goto/16 :goto_0

    #@ec
    .line 1083
    :cond_c
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ee
    new-instance v7, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v8, "Error: Unknown option: "

    #@f6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v7

    #@fa
    move-object/from16 v0, v18

    #@fc
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v7

    #@100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v7

    #@104
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@107
    .line 1084
    const/4 v6, 0x1

    #@108
    return v6

    #@109
    .line 1088
    :cond_d
    const/4 v6, -0x1

    #@10a
    if-ne v13, v6, :cond_e

    #@10c
    .line 1089
    const/4 v13, 0x0

    #@10d
    .line 1090
    or-int/lit8 v9, v9, 0x40

    #@10f
    .line 1097
    :cond_e
    if-eqz v19, :cond_f

    #@111
    .line 1098
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@114
    move-result-object v4

    #@115
    .line 1103
    :goto_1
    if-eqz v20, :cond_10

    #@117
    .line 1104
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@11a
    move-result-object v5

    #@11b
    .line 1110
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@11e
    move-result-object v14

    #@11f
    .line 1111
    .local v14, "apkFilePath":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@121
    new-instance v7, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v8, "\tpkg: "

    #@129
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v7

    #@12d
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v7

    #@131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v7

    #@135
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@138
    .line 1112
    if-nez v14, :cond_11

    #@13a
    .line 1113
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13c
    const-string/jumbo v7, "Error: no package specified"

    #@13f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@142
    .line 1114
    const/4 v6, 0x1

    #@143
    return v6

    #@144
    .line 1100
    .end local v14    # "apkFilePath":Ljava/lang/String;
    :cond_f
    const/4 v4, 0x0

    #@145
    .local v4, "originatingURI":Landroid/net/Uri;
    goto :goto_1

    #@146
    .line 1106
    .end local v4    # "originatingURI":Landroid/net/Uri;
    :cond_10
    const/4 v5, 0x0

    #@147
    .local v5, "referrerURI":Landroid/net/Uri;
    goto :goto_2

    #@148
    .line 1118
    .end local v5    # "referrerURI":Landroid/net/Uri;
    .restart local v14    # "apkFilePath":Ljava/lang/String;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@14b
    move-result-object v21

    #@14c
    .line 1119
    .local v21, "verificationFilePath":Ljava/lang/String;
    if-eqz v21, :cond_12

    #@14e
    .line 1120
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@150
    new-instance v7, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v8, "\tver: "

    #@158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v7

    #@15c
    move-object/from16 v0, v21

    #@15e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v7

    #@162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v7

    #@166
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@169
    .line 1121
    new-instance v6, Ljava/io/File;

    #@16b
    move-object/from16 v0, v21

    #@16d
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@170
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@173
    move-result-object v3

    #@174
    .line 1126
    :goto_3
    new-instance v17, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;

    #@176
    move-object/from16 v0, v17

    #@178
    move-object/from16 v1, p0

    #@17a
    invoke-direct {v0, v1}, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;-><init>(Lcom/android/commands/pm/Pm;)V

    #@17d
    .line 1128
    .local v17, "obs":Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    :try_start_0
    new-instance v2, Landroid/content/pm/VerificationParams;

    #@17f
    .line 1129
    const/4 v6, -0x1

    #@180
    const/4 v7, 0x0

    #@181
    .line 1128
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    #@184
    .line 1131
    .local v2, "verificationParams":Landroid/content/pm/VerificationParams;
    move-object/from16 v0, p0

    #@186
    iget-object v6, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@188
    invoke-virtual/range {v17 .. v17}, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    #@18b
    move-result-object v8

    #@18c
    move-object v7, v14

    #@18d
    move-object v11, v2

    #@18e
    invoke-interface/range {v6 .. v13}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    #@191
    .line 1134
    monitor-enter v17
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@192
    .line 1135
    :goto_4
    :try_start_1
    move-object/from16 v0, v17

    #@194
    iget-boolean v6, v0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@196
    if-nez v6, :cond_13

    #@198
    .line 1137
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19b
    goto :goto_4

    #@19c
    .line 1138
    :catch_0
    move-exception v16

    #@19d
    .local v16, "e":Ljava/lang/InterruptedException;
    goto :goto_4

    #@19e
    .line 1123
    .end local v2    # "verificationParams":Landroid/content/pm/VerificationParams;
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .end local v17    # "obs":Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    :cond_12
    const/4 v3, 0x0

    #@19f
    .local v3, "verificationURI":Landroid/net/Uri;
    goto :goto_3

    #@1a0
    .line 1141
    .end local v3    # "verificationURI":Landroid/net/Uri;
    .restart local v2    # "verificationParams":Landroid/content/pm/VerificationParams;
    .restart local v17    # "obs":Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    :cond_13
    :try_start_3
    move-object/from16 v0, v17

    #@1a2
    iget v6, v0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->result:I

    #@1a4
    const/4 v7, 0x1

    #@1a5
    if-ne v6, v7, :cond_14

    #@1a7
    .line 1142
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a9
    const-string/jumbo v7, "Success"

    #@1ac
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1af
    .line 1143
    const/4 v6, 0x0

    #@1b0
    :try_start_4
    monitor-exit v17
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@1b1
    return v6

    #@1b2
    .line 1145
    :cond_14
    :try_start_5
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b4
    new-instance v7, Ljava/lang/StringBuilder;

    #@1b6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b9
    const-string/jumbo v8, "Failure ["

    #@1bc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v7

    #@1c0
    .line 1146
    move-object/from16 v0, p0

    #@1c2
    move-object/from16 v1, v17

    #@1c4
    invoke-direct {v0, v1}, Lcom/android/commands/pm/Pm;->installFailureToString(Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;)Ljava/lang/String;

    #@1c7
    move-result-object v8

    #@1c8
    .line 1145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v7

    #@1cc
    .line 1147
    const-string/jumbo v8, "]"

    #@1cf
    .line 1145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v7

    #@1d3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d6
    move-result-object v7

    #@1d7
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1da
    .line 1148
    const/4 v6, 0x1

    #@1db
    :try_start_6
    monitor-exit v17

    #@1dc
    return v6

    #@1dd
    .line 1134
    :catchall_0
    move-exception v6

    #@1de
    monitor-exit v17

    #@1df
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    #@1e0
    .line 1151
    .end local v2    # "verificationParams":Landroid/content/pm/VerificationParams;
    :catch_1
    move-exception v15

    #@1e1
    .line 1152
    .local v15, "e":Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e3
    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v7

    #@1e7
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1ea
    .line 1153
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ec
    const-string/jumbo v7, "Error: Could not access the Package Manager.  Is the system running?"

    #@1ef
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f2
    .line 1154
    const/4 v6, 0x1

    #@1f3
    return v6
.end method

.method private runInstallAbandon()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1317
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 1319
    .local v2, "sessionId":I
    const/4 v0, 0x0

    #@9
    .line 1321
    .local v0, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v1, Landroid/content/pm/PackageInstaller$Session;

    #@b
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@d
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v1, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 1322
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    #@17
    .line 1323
    .end local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19
    const-string/jumbo v4, "Success"

    #@1c
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    .line 1324
    const/4 v3, 0x0

    #@20
    .line 1326
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 1324
    return v3

    #@24
    .line 1325
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v3

    #@25
    .line 1326
    .end local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    .line 1325
    throw v3

    #@29
    .restart local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v3

    #@2a
    move-object v0, v1

    #@2b
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v0, "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_0
.end method

.method private runInstallCommit()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1290
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9
    move-result v4

    #@a
    .line 1292
    .local v4, "sessionId":I
    const/4 v2, 0x0

    #@b
    .line 1294
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    #@d
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@f
    invoke-interface {v6, v4}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@12
    move-result-object v6

    #@13
    invoke-direct {v3, v6}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1296
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    new-instance v0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;

    #@18
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v6, 0x0

    #@19
    invoke-direct {v0, v6}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;-><init>(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)V

    #@1c
    .line 1297
    .local v0, "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    invoke-virtual {v0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    #@23
    .line 1299
    invoke-virtual {v0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    #@26
    move-result-object v1

    #@27
    .line 1300
    .local v1, "result":Landroid/content/Intent;
    const-string/jumbo v6, "android.content.pm.extra.STATUS"

    #@2a
    .line 1301
    const/4 v7, 0x1

    #@2b
    .line 1300
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2e
    move-result v5

    #@2f
    .line 1302
    .local v5, "status":I
    if-nez v5, :cond_0

    #@31
    .line 1303
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@33
    const-string/jumbo v7, "Success"

    #@36
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@39
    .line 1312
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3c
    .line 1304
    return v8

    #@3d
    .line 1306
    :cond_0
    :try_start_2
    const-string/jumbo v6, "Pm"

    #@40
    new-instance v7, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v8, "Failure details: "

    #@48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1307
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5d
    new-instance v7, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v8, "Failure ["

    #@65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    .line 1308
    const-string/jumbo v8, "android.content.pm.extra.STATUS_MESSAGE"

    #@6c
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    .line 1307
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    .line 1308
    const-string/jumbo v8, "]"

    #@77
    .line 1307
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@82
    .line 1312
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@85
    .line 1309
    return v9

    #@86
    .line 1311
    .end local v0    # "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    .end local v1    # "result":Landroid/content/Intent;
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v5    # "status":I
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v6

    #@87
    .line 1312
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8a
    .line 1311
    throw v6

    #@8b
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v6

    #@8c
    move-object v2, v3

    #@8d
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_0
.end method

.method private runInstallCreate()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1159
    const/4 v4, -0x1

    #@2
    .line 1160
    .local v4, "userId":I
    const/4 v0, 0x0

    #@3
    .line 1162
    .local v0, "installerPackageName":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    #@5
    const/4 v5, 0x1

    #@6
    invoke-direct {v2, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    #@9
    .line 1165
    .end local v0    # "installerPackageName":Ljava/lang/String;
    .local v2, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_11

    #@f
    .line 1166
    const-string/jumbo v5, "-l"

    #@12
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 1167
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1a
    or-int/lit8 v5, v5, 0x1

    #@1c
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1e
    goto :goto_0

    #@1f
    .line 1168
    :cond_1
    const-string/jumbo v5, "-r"

    #@22
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 1169
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2a
    or-int/lit8 v5, v5, 0x2

    #@2c
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2e
    goto :goto_0

    #@2f
    .line 1170
    :cond_2
    const-string/jumbo v5, "-i"

    #@32
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_3

    #@38
    .line 1171
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 1172
    .local v0, "installerPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@3e
    .line 1173
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v6, "Missing installer package"

    #@43
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v5

    #@47
    .line 1175
    .end local v0    # "installerPackageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "-t"

    #@4a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_4

    #@50
    .line 1176
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@52
    or-int/lit8 v5, v5, 0x4

    #@54
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@56
    goto :goto_0

    #@57
    .line 1177
    :cond_4
    const-string/jumbo v5, "-s"

    #@5a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v5

    #@5e
    if-eqz v5, :cond_5

    #@60
    .line 1178
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@62
    or-int/lit8 v5, v5, 0x8

    #@64
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@66
    goto :goto_0

    #@67
    .line 1179
    :cond_5
    const-string/jumbo v5, "-f"

    #@6a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_6

    #@70
    .line 1180
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@72
    or-int/lit8 v5, v5, 0x10

    #@74
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@76
    goto :goto_0

    #@77
    .line 1181
    :cond_6
    const-string/jumbo v5, "-d"

    #@7a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_7

    #@80
    .line 1182
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@82
    or-int/lit16 v5, v5, 0x80

    #@84
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@86
    goto :goto_0

    #@87
    .line 1183
    :cond_7
    const-string/jumbo v5, "-g"

    #@8a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_8

    #@90
    .line 1184
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@92
    or-int/lit16 v5, v5, 0x100

    #@94
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@96
    goto/16 :goto_0

    #@98
    .line 1185
    :cond_8
    const-string/jumbo v5, "--originating-uri"

    #@9b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v5

    #@9f
    if-eqz v5, :cond_9

    #@a1
    .line 1186
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a8
    move-result-object v5

    #@a9
    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@ab
    goto/16 :goto_0

    #@ad
    .line 1187
    :cond_9
    const-string/jumbo v5, "--referrer"

    #@b0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v5

    #@b4
    if-eqz v5, :cond_a

    #@b6
    .line 1188
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@bd
    move-result-object v5

    #@be
    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@c0
    goto/16 :goto_0

    #@c2
    .line 1189
    :cond_a
    const-string/jumbo v5, "-p"

    #@c5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v5

    #@c9
    if-eqz v5, :cond_b

    #@cb
    .line 1190
    const/4 v5, 0x2

    #@cc
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@ce
    .line 1191
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@d1
    move-result-object v5

    #@d2
    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@d4
    .line 1192
    iget-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@d6
    if-nez v5, :cond_0

    #@d8
    .line 1193
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@da
    const-string/jumbo v6, "Missing inherit package name"

    #@dd
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e0
    throw v5

    #@e1
    .line 1195
    :cond_b
    const-string/jumbo v5, "-S"

    #@e4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e7
    move-result v5

    #@e8
    if-eqz v5, :cond_c

    #@ea
    .line 1196
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@ed
    move-result-object v5

    #@ee
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@f1
    move-result-wide v6

    #@f2
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    #@f5
    goto/16 :goto_0

    #@f7
    .line 1197
    :cond_c
    const-string/jumbo v5, "--abi"

    #@fa
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v5

    #@fe
    if-eqz v5, :cond_d

    #@100
    .line 1198
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@103
    move-result-object v5

    #@104
    invoke-static {v5}, Lcom/android/commands/pm/Pm;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    #@107
    move-result-object v5

    #@108
    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@10a
    goto/16 :goto_0

    #@10c
    .line 1199
    :cond_d
    const-string/jumbo v5, "--user"

    #@10f
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@112
    move-result v5

    #@113
    if-eqz v5, :cond_e

    #@115
    .line 1200
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@118
    move-result-object v5

    #@119
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11c
    move-result v4

    #@11d
    goto/16 :goto_0

    #@11f
    .line 1201
    :cond_e
    const-string/jumbo v5, "--install-location"

    #@122
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@125
    move-result v5

    #@126
    if-eqz v5, :cond_f

    #@128
    .line 1202
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12f
    move-result v5

    #@130
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@132
    goto/16 :goto_0

    #@134
    .line 1203
    :cond_f
    const-string/jumbo v5, "--force-uuid"

    #@137
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13a
    move-result v5

    #@13b
    if-eqz v5, :cond_10

    #@13d
    .line 1204
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@13f
    or-int/lit16 v5, v5, 0x200

    #@141
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@143
    .line 1205
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@146
    move-result-object v5

    #@147
    iput-object v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@149
    .line 1206
    const-string/jumbo v5, "internal"

    #@14c
    iget-object v6, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@14e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@151
    move-result v5

    #@152
    if-eqz v5, :cond_0

    #@154
    .line 1207
    iput-object v8, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@156
    goto/16 :goto_0

    #@158
    .line 1210
    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@15a
    new-instance v6, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v7, "Unknown option "

    #@162
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v6

    #@166
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v6

    #@16a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v6

    #@16e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@171
    throw v5

    #@172
    .line 1214
    :cond_11
    const/4 v5, -0x1

    #@173
    if-ne v4, v5, :cond_12

    #@175
    .line 1215
    const/4 v4, 0x0

    #@176
    .line 1216
    iget v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@178
    or-int/lit8 v5, v5, 0x40

    #@17a
    iput v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@17c
    .line 1219
    :cond_12
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@17e
    invoke-interface {v5, v2, v0, v4}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@181
    move-result v3

    #@182
    .line 1222
    .local v3, "sessionId":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@184
    new-instance v6, Ljava/lang/StringBuilder;

    #@186
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    const-string/jumbo v7, "Success: created install session ["

    #@18c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v6

    #@190
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@193
    move-result-object v6

    #@194
    const-string/jumbo v7, "]"

    #@197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v6

    #@19b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object v6

    #@19f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a2
    .line 1223
    const/4 v5, 0x0

    #@1a3
    return v5
.end method

.method private runInstallWrite()I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1227
    const-wide/16 v6, -0x1

    #@2
    .line 1230
    .local v6, "sizeBytes":J
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v15

    #@6
    .local v15, "opt":Ljava/lang/String;
    if-eqz v15, :cond_1

    #@8
    .line 1231
    const-string/jumbo v4, "-S"

    #@b
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1232
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@18
    move-result-wide v6

    #@19
    goto :goto_0

    #@1a
    .line 1234
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v21, "Unknown option: "

    #@24
    move-object/from16 v0, v21

    #@26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v4

    #@36
    .line 1238
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3d
    move-result v19

    #@3e
    .line 1239
    .local v19, "sessionId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 1241
    .local v3, "splitName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@45
    move-result-object v17

    #@46
    .line 1242
    .local v17, "path":Ljava/lang/String;
    const-string/jumbo v4, "-"

    #@49
    move-object/from16 v0, v17

    #@4b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_4

    #@51
    .line 1243
    const/16 v17, 0x0

    #@53
    .line 1251
    .end local v17    # "path":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@55
    iget-object v4, v0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@57
    move/from16 v0, v19

    #@59
    invoke-interface {v4, v0}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    #@5c
    move-result-object v14

    #@5d
    .line 1253
    .local v14, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/16 v18, 0x0

    #@5f
    .line 1254
    .local v18, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v12, 0x0

    #@60
    .line 1255
    .local v12, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    #@62
    .line 1257
    .local v16, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v4, v0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@68
    move/from16 v0, v19

    #@6a
    invoke-interface {v4, v0}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@6d
    move-result-object v4

    #@6e
    invoke-direct {v2, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@71
    .line 1259
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    if-eqz v17, :cond_5

    #@73
    .line 1260
    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    #@75
    move-object/from16 v0, v17

    #@77
    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@7a
    .local v13, "in":Ljava/io/InputStream;
    move-object v12, v13

    #@7b
    .line 1264
    .end local v13    # "in":Ljava/io/InputStream;
    .local v12, "in":Ljava/io/InputStream;
    :goto_2
    const-wide/16 v4, 0x0

    #@7d
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    #@80
    move-result-object v16

    #@81
    .line 1266
    .local v16, "out":Ljava/io/OutputStream;
    const/16 v20, 0x0

    #@83
    .line 1267
    .local v20, "total":I
    const/high16 v4, 0x10000

    #@85
    new-array v8, v4, [B

    #@87
    .line 1269
    .local v8, "buffer":[B
    :cond_3
    :goto_3
    invoke-virtual {v12, v8}, Ljava/io/InputStream;->read([B)I

    #@8a
    move-result v9

    #@8b
    .local v9, "c":I
    const/4 v4, -0x1

    #@8c
    if-eq v9, v4, :cond_6

    #@8e
    .line 1270
    add-int v20, v20, v9

    #@90
    .line 1271
    const/4 v4, 0x0

    #@91
    move-object/from16 v0, v16

    #@93
    invoke-virtual {v0, v8, v4, v9}, Ljava/io/OutputStream;->write([BII)V

    #@96
    .line 1273
    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@98
    const-wide/16 v22, 0x0

    #@9a
    cmp-long v4, v4, v22

    #@9c
    if-lez v4, :cond_3

    #@9e
    .line 1274
    int-to-float v4, v9

    #@9f
    iget-wide v0, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@a1
    move-wide/from16 v22, v0

    #@a3
    move-wide/from16 v0, v22

    #@a5
    long-to-float v5, v0

    #@a6
    div-float v11, v4, v5

    #@a8
    .line 1275
    .local v11, "fraction":F
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageInstaller$Session;->addProgress(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ab
    goto :goto_3

    #@ac
    .line 1282
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v11    # "fraction":F
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v20    # "total":I
    :catchall_0
    move-exception v4

    #@ad
    .line 1283
    :goto_4
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b0
    .line 1284
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b3
    .line 1285
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b6
    .line 1282
    throw v4

    #@b7
    .line 1244
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local v17    # "path":Ljava/lang/String;
    :cond_4
    if-eqz v17, :cond_2

    #@b9
    .line 1245
    new-instance v10, Ljava/io/File;

    #@bb
    move-object/from16 v0, v17

    #@bd
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c0
    .line 1246
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    #@c3
    move-result v4

    #@c4
    if-eqz v4, :cond_2

    #@c6
    .line 1247
    invoke-virtual {v10}, Ljava/io/File;->length()J

    #@c9
    move-result-wide v6

    #@ca
    goto :goto_1

    #@cb
    .line 1262
    .end local v10    # "file":Ljava/io/File;
    .end local v17    # "path":Ljava/lang/String;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v12, "in":Ljava/io/InputStream;
    .restart local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v16, "out":Ljava/io/OutputStream;
    :cond_5
    :try_start_2
    new-instance v13, Lcom/android/internal/util/SizedInputStream;

    #@cd
    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@cf
    invoke-direct {v13, v4, v6, v7}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    #@d2
    .restart local v13    # "in":Ljava/io/InputStream;
    move-object v12, v13

    #@d3
    .end local v13    # "in":Ljava/io/InputStream;
    .local v12, "in":Ljava/io/InputStream;
    goto :goto_2

    #@d4
    .line 1278
    .restart local v8    # "buffer":[B
    .restart local v9    # "c":I
    .local v16, "out":Ljava/io/OutputStream;
    .restart local v20    # "total":I
    :cond_6
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    #@d9
    .line 1280
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@db
    new-instance v5, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v21, "Success: streamed "

    #@e3
    move-object/from16 v0, v21

    #@e5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    move/from16 v0, v20

    #@eb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    const-string/jumbo v21, " bytes"

    #@f2
    move-object/from16 v0, v21

    #@f4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v5

    #@f8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v5

    #@fc
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ff
    .line 1281
    const/4 v4, 0x0

    #@100
    .line 1283
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@103
    .line 1284
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@106
    .line 1285
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@109
    .line 1281
    return v4

    #@10a
    .line 1282
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v20    # "total":I
    .local v12, "in":Ljava/io/InputStream;
    .local v16, "out":Ljava/io/OutputStream;
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v4

    #@10b
    move-object/from16 v2, v18

    #@10d
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_4
.end method

.method private runList()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 301
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 302
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 303
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v2, "Error: didn\'t specify type of data to list"

    #@c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 304
    return v4

    #@10
    .line 306
    :cond_0
    const-string/jumbo v1, "package"

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    const-string/jumbo v1, "packages"

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 307
    :cond_1
    const/4 v1, 0x0

    #@23
    invoke-direct {p0, v1}, Lcom/android/commands/pm/Pm;->runListPackages(Z)I

    #@26
    move-result v1

    #@27
    return v1

    #@28
    .line 308
    :cond_2
    const-string/jumbo v1, "permission-groups"

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 309
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissionGroups()I

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 310
    :cond_3
    const-string/jumbo v1, "permissions"

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_4

    #@3f
    .line 311
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissions()I

    #@42
    move-result v1

    #@43
    return v1

    #@44
    .line 312
    :cond_4
    const-string/jumbo v1, "features"

    #@47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_5

    #@4d
    .line 313
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListFeatures()I

    #@50
    move-result v1

    #@51
    return v1

    #@52
    .line 314
    :cond_5
    const-string/jumbo v1, "libraries"

    #@55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_6

    #@5b
    .line 315
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListLibraries()I

    #@5e
    move-result v1

    #@5f
    return v1

    #@60
    .line 316
    :cond_6
    const-string/jumbo v1, "instrumentation"

    #@63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_7

    #@69
    .line 317
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListInstrumentation()I

    #@6c
    move-result v1

    #@6d
    return v1

    #@6e
    .line 318
    :cond_7
    const-string/jumbo v1, "users"

    #@71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v1

    #@75
    if-eqz v1, :cond_8

    #@77
    .line 319
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runListUsers()I

    #@7a
    move-result v1

    #@7b
    return v1

    #@7c
    .line 321
    :cond_8
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7e
    new-instance v2, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v3, "Error: unknown list type \'"

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    const-string/jumbo v3, "\'"

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    .line 322
    return v4
.end method

.method private runListFeatures()I
    .locals 10

    #@0
    .prologue
    .line 420
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 421
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@7
    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    #@a
    move-result-object v6

    #@b
    .line 422
    .local v6, "rawList":[Landroid/content/pm/FeatureInfo;
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    array-length v7, v6

    #@d
    if-ge v3, v7, :cond_0

    #@f
    .line 423
    aget-object v7, v6, v3

    #@11
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 422
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 428
    :cond_0
    new-instance v7, Lcom/android/commands/pm/Pm$1;

    #@19
    invoke-direct {v7, p0}, Lcom/android/commands/pm/Pm$1;-><init>(Lcom/android/commands/pm/Pm;)V

    #@1c
    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1f
    .line 437
    if-eqz v4, :cond_1

    #@21
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@24
    move-result v0

    #@25
    .line 438
    .local v0, "count":I
    :goto_1
    const/4 v5, 0x0

    #@26
    .local v5, "p":I
    :goto_2
    if-ge v5, v0, :cond_3

    #@28
    .line 439
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/content/pm/FeatureInfo;

    #@2e
    .line 440
    .local v2, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@30
    const-string/jumbo v8, "feature:"

    #@33
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@36
    .line 441
    iget-object v7, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@38
    if-eqz v7, :cond_2

    #@3a
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3c
    iget-object v8, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@3e
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    .line 438
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@43
    goto :goto_2

    #@44
    .line 437
    .end local v0    # "count":I
    .end local v2    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v5    # "p":I
    :cond_1
    const/4 v0, 0x0

    #@45
    .restart local v0    # "count":I
    goto :goto_1

    #@46
    .line 442
    .restart local v2    # "fi":Landroid/content/pm/FeatureInfo;
    .restart local v5    # "p":I
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@48
    new-instance v8, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v9, "reqGlEsVersion=0x"

    #@50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    .line 443
    iget v9, v2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@56
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@59
    move-result-object v9

    #@5a
    .line 442
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    goto :goto_3

    #@66
    .line 446
    .end local v0    # "count":I
    .end local v2    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    .end local v5    # "p":I
    .end local v6    # "rawList":[Landroid/content/pm/FeatureInfo;
    :catch_0
    move-exception v1

    #@67
    .line 447
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@69
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 448
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@72
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@75
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 449
    const/4 v7, 0x1

    #@79
    return v7

    #@7a
    .line 445
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    .restart local v5    # "p":I
    .restart local v6    # "rawList":[Landroid/content/pm/FeatureInfo;
    :cond_3
    const/4 v7, 0x0

    #@7b
    return v7
.end method

.method private runListInstrumentation()I
    .locals 15

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v14, 0x1

    #@2
    .line 497
    const/4 v4, 0x0

    #@3
    .line 498
    .local v4, "flags":I
    const/4 v9, 0x0

    #@4
    .line 499
    .local v9, "showPackage":Z
    const/4 v10, 0x0

    #@5
    .line 503
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .local v7, "opt":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@b
    .line 504
    const-string/jumbo v11, "-f"

    #@e
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v11

    #@12
    if-eqz v11, :cond_0

    #@14
    .line 505
    const/4 v9, 0x1

    #@15
    goto :goto_0

    #@16
    .line 506
    :cond_0
    const/4 v11, 0x0

    #@17
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v11

    #@1b
    const/16 v12, 0x2d

    #@1d
    if-eq v11, v12, :cond_1

    #@1f
    .line 507
    move-object v10, v7

    #@20
    .local v10, "targetPackage":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 509
    .end local v10    # "targetPackage":Ljava/lang/String;
    :cond_1
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23
    new-instance v12, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v13, "Error: Unknown option: "

    #@2b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v12

    #@2f
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v12

    #@33
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v12

    #@37
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 510
    return v14

    #@3b
    .line 513
    .end local v7    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@3c
    .line 514
    .local v3, "ex":Ljava/lang/RuntimeException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3e
    new-instance v12, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v13, "Error: "

    #@46
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v12

    #@4a
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@4d
    move-result-object v13

    #@4e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v12

    #@52
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v12

    #@56
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@59
    .line 515
    return v14

    #@5a
    .line 519
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v7    # "opt":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@5c
    invoke-interface {v11, v10, v4}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    #@5f
    move-result-object v6

    #@60
    .line 522
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v11, Lcom/android/commands/pm/Pm$3;

    #@62
    invoke-direct {v11, p0}, Lcom/android/commands/pm/Pm$3;-><init>(Lcom/android/commands/pm/Pm;)V

    #@65
    invoke-static {v6, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@68
    .line 528
    if-eqz v6, :cond_4

    #@6a
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@6d
    move-result v1

    #@6e
    .line 529
    .local v1, "count":I
    :goto_1
    const/4 v8, 0x0

    #@6f
    .local v8, "p":I
    :goto_2
    if-ge v8, v1, :cond_5

    #@71
    .line 530
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v5

    #@75
    check-cast v5, Landroid/content/pm/InstrumentationInfo;

    #@77
    .line 531
    .local v5, "ii":Landroid/content/pm/InstrumentationInfo;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@79
    const-string/jumbo v12, "instrumentation:"

    #@7c
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7f
    .line 532
    if-eqz v9, :cond_3

    #@81
    .line 533
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@83
    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@85
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@88
    .line 534
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8a
    const-string/jumbo v12, "="

    #@8d
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@90
    .line 536
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    #@92
    iget-object v11, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@94
    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    #@96
    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@99
    .line 537
    .local v0, "cn":Landroid/content/ComponentName;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9b
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@9e
    move-result-object v12

    #@9f
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a2
    .line 538
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a4
    const-string/jumbo v12, " (target="

    #@a7
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@aa
    .line 539
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ac
    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@ae
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@b1
    .line 540
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b3
    const-string/jumbo v12, ")"

    #@b6
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b9
    .line 529
    add-int/lit8 v8, v8, 0x1

    #@bb
    goto :goto_2

    #@bc
    .line 528
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "count":I
    .end local v5    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "p":I
    :cond_4
    const/4 v1, 0x0

    #@bd
    .restart local v1    # "count":I
    goto :goto_1

    #@be
    .line 542
    .restart local v8    # "p":I
    :cond_5
    return v13

    #@bf
    .line 543
    .end local v1    # "count":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v8    # "p":I
    :catch_1
    move-exception v2

    #@c0
    .line 544
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c2
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@c5
    move-result-object v12

    #@c6
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c9
    .line 545
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@cb
    const-string/jumbo v12, "Error: Could not access the Package Manager.  Is the system running?"

    #@ce
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d1
    .line 546
    return v14
.end method

.method private runListLibraries()I
    .locals 9

    #@0
    .prologue
    .line 460
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 461
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@7
    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    #@a
    move-result-object v6

    #@b
    .line 462
    .local v6, "rawList":[Ljava/lang/String;
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    array-length v7, v6

    #@d
    if-ge v2, v7, :cond_0

    #@f
    .line 463
    aget-object v7, v6, v2

    #@11
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 462
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 468
    :cond_0
    new-instance v7, Lcom/android/commands/pm/Pm$2;

    #@19
    invoke-direct {v7, p0}, Lcom/android/commands/pm/Pm$2;-><init>(Lcom/android/commands/pm/Pm;)V

    #@1c
    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1f
    .line 477
    if-eqz v4, :cond_1

    #@21
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@24
    move-result v0

    #@25
    .line 478
    .local v0, "count":I
    :goto_1
    const/4 v5, 0x0

    #@26
    .local v5, "p":I
    :goto_2
    if-ge v5, v0, :cond_2

    #@28
    .line 479
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/String;

    #@2e
    .line 480
    .local v3, "lib":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@30
    const-string/jumbo v8, "library:"

    #@33
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@36
    .line 481
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@38
    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 478
    add-int/lit8 v5, v5, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 477
    .end local v0    # "count":I
    .end local v3    # "lib":Ljava/lang/String;
    .end local v5    # "p":I
    :cond_1
    const/4 v0, 0x0

    #@3f
    .restart local v0    # "count":I
    goto :goto_1

    #@40
    .line 483
    .restart local v5    # "p":I
    :cond_2
    const/4 v7, 0x0

    #@41
    return v7

    #@42
    .line 484
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "p":I
    .end local v6    # "rawList":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@43
    .line 485
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@45
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 486
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4e
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@51
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 487
    const/4 v7, 0x1

    #@55
    return v7
.end method

.method private runListPackages(Z)I
    .locals 22
    .param p1, "showApplicationPackage"    # Z

    #@0
    .prologue
    .line 330
    const/4 v7, 0x0

    #@1
    .line 331
    .local v7, "getFlags":I
    const/4 v10, 0x0

    #@2
    .local v10, "listDisabled":Z
    const/4 v11, 0x0

    #@3
    .line 332
    .local v11, "listEnabled":Z
    const/4 v13, 0x0

    #@4
    .local v13, "listSystem":Z
    const/4 v14, 0x0

    #@5
    .line 333
    .local v14, "listThirdParty":Z
    const/4 v12, 0x0

    #@6
    .line 334
    .local v12, "listInstaller":Z
    const/16 v18, 0x0

    #@8
    .line 337
    .end local p1    # "showApplicationPackage":Z
    .local v18, "userId":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@b
    move-result-object v15

    #@c
    .local v15, "opt":Ljava/lang/String;
    if-eqz v15, :cond_a

    #@e
    .line 338
    const-string/jumbo v19, "-l"

    #@11
    move-object/from16 v0, v19

    #@13
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v19

    #@17
    if-nez v19, :cond_0

    #@19
    .line 340
    const-string/jumbo v19, "-lf"

    #@1c
    move-object/from16 v0, v19

    #@1e
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v19

    #@22
    if-eqz v19, :cond_1

    #@24
    .line 341
    const/16 p1, 0x1

    #@26
    .local p1, "showApplicationPackage":Z
    goto :goto_0

    #@27
    .line 342
    .end local p1    # "showApplicationPackage":Z
    :cond_1
    const-string/jumbo v19, "-f"

    #@2a
    move-object/from16 v0, v19

    #@2c
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v19

    #@30
    if-eqz v19, :cond_2

    #@32
    .line 343
    const/16 p1, 0x1

    #@34
    .restart local p1    # "showApplicationPackage":Z
    goto :goto_0

    #@35
    .line 344
    .end local p1    # "showApplicationPackage":Z
    :cond_2
    const-string/jumbo v19, "-d"

    #@38
    move-object/from16 v0, v19

    #@3a
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v19

    #@3e
    if-eqz v19, :cond_3

    #@40
    .line 345
    const/4 v10, 0x1

    #@41
    goto :goto_0

    #@42
    .line 346
    :cond_3
    const-string/jumbo v19, "-e"

    #@45
    move-object/from16 v0, v19

    #@47
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v19

    #@4b
    if-eqz v19, :cond_4

    #@4d
    .line 347
    const/4 v11, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 348
    :cond_4
    const-string/jumbo v19, "-s"

    #@52
    move-object/from16 v0, v19

    #@54
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v19

    #@58
    if-eqz v19, :cond_5

    #@5a
    .line 349
    const/4 v13, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 350
    :cond_5
    const-string/jumbo v19, "-3"

    #@5f
    move-object/from16 v0, v19

    #@61
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v19

    #@65
    if-eqz v19, :cond_6

    #@67
    .line 351
    const/4 v14, 0x1

    #@68
    goto :goto_0

    #@69
    .line 352
    :cond_6
    const-string/jumbo v19, "-i"

    #@6c
    move-object/from16 v0, v19

    #@6e
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v19

    #@72
    if-eqz v19, :cond_7

    #@74
    .line 353
    const/4 v12, 0x1

    #@75
    goto :goto_0

    #@76
    .line 354
    :cond_7
    const-string/jumbo v19, "--user"

    #@79
    move-object/from16 v0, v19

    #@7b
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v19

    #@7f
    if-eqz v19, :cond_8

    #@81
    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@84
    move-result-object v19

    #@85
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@88
    move-result v18

    #@89
    goto/16 :goto_0

    #@8b
    .line 356
    :cond_8
    const-string/jumbo v19, "-u"

    #@8e
    move-object/from16 v0, v19

    #@90
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v19

    #@94
    if-eqz v19, :cond_9

    #@96
    .line 357
    or-int/lit16 v7, v7, 0x2000

    #@98
    goto/16 :goto_0

    #@9a
    .line 359
    :cond_9
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9c
    new-instance v20, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v21, "Error: Unknown option: "

    #@a4
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v20

    #@a8
    move-object/from16 v0, v20

    #@aa
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v20

    #@ae
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v20

    #@b2
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@b5
    .line 360
    const/16 v19, 0x1

    #@b7
    return v19

    #@b8
    .line 363
    .end local v15    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@b9
    .line 364
    .local v5, "ex":Ljava/lang/RuntimeException;
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@bb
    new-instance v20, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v21, "Error: "

    #@c3
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v20

    #@c7
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@ca
    move-result-object v21

    #@cb
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v20

    #@cf
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v20

    #@d3
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d6
    .line 365
    const/16 v19, 0x1

    #@d8
    return v19

    #@d9
    .line 368
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .restart local v15    # "opt":Ljava/lang/String;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@dc
    move-result-object v6

    #@dd
    .line 371
    .local v6, "filter":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@e1
    move-object/from16 v19, v0

    #@e3
    move-object/from16 v0, p0

    #@e5
    move-object/from16 v1, v19

    #@e7
    move/from16 v2, v18

    #@e9
    invoke-direct {v0, v1, v7, v2}, Lcom/android/commands/pm/Pm;->getInstalledPackages(Landroid/content/pm/IPackageManager;II)Ljava/util/List;

    #@ec
    move-result-object v17

    #@ed
    .line 373
    .local v17, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@f0
    move-result v3

    #@f1
    .line 374
    .local v3, "count":I
    const/16 v16, 0x0

    #@f3
    .local v16, "p":I
    :goto_1
    move/from16 v0, v16

    #@f5
    if-ge v0, v3, :cond_14

    #@f7
    .line 375
    move-object/from16 v0, v17

    #@f9
    move/from16 v1, v16

    #@fb
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@fe
    move-result-object v8

    #@ff
    check-cast v8, Landroid/content/pm/PackageInfo;

    #@101
    .line 376
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_b

    #@103
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@105
    move-object/from16 v19, v0

    #@107
    move-object/from16 v0, v19

    #@109
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@10c
    move-result v19

    #@10d
    if-eqz v19, :cond_c

    #@10f
    .line 380
    :cond_b
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@111
    move-object/from16 v19, v0

    #@113
    move-object/from16 v0, v19

    #@115
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@117
    move/from16 v19, v0

    #@119
    and-int/lit8 v19, v19, 0x1

    #@11b
    if-eqz v19, :cond_d

    #@11d
    const/4 v9, 0x1

    #@11e
    .line 381
    .local v9, "isSystem":Z
    :goto_2
    if-eqz v10, :cond_e

    #@120
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@122
    move-object/from16 v19, v0

    #@124
    move-object/from16 v0, v19

    #@126
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@128
    move/from16 v19, v0

    #@12a
    if-eqz v19, :cond_e

    #@12c
    .line 374
    .end local v9    # "isSystem":Z
    :cond_c
    :goto_3
    add-int/lit8 v16, v16, 0x1

    #@12e
    goto :goto_1

    #@12f
    .line 380
    :cond_d
    const/4 v9, 0x0

    #@130
    .restart local v9    # "isSystem":Z
    goto :goto_2

    #@131
    .line 382
    :cond_e
    if-eqz v11, :cond_f

    #@133
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@135
    move-object/from16 v19, v0

    #@137
    move-object/from16 v0, v19

    #@139
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@13b
    move/from16 v19, v0

    #@13d
    .line 381
    if-eqz v19, :cond_c

    #@13f
    .line 383
    :cond_f
    if-eqz v13, :cond_10

    #@141
    .line 381
    if-eqz v9, :cond_c

    #@143
    .line 384
    :cond_10
    if-eqz v14, :cond_11

    #@145
    if-nez v9, :cond_c

    #@147
    .line 385
    :cond_11
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@149
    const-string/jumbo v20, "package:"

    #@14c
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@14f
    .line 386
    if-eqz p1, :cond_12

    #@151
    .line 387
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@153
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@155
    move-object/from16 v20, v0

    #@157
    move-object/from16 v0, v20

    #@159
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@15b
    move-object/from16 v20, v0

    #@15d
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@160
    .line 388
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@162
    const-string/jumbo v20, "="

    #@165
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@168
    .line 390
    :cond_12
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16a
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@16c
    move-object/from16 v20, v0

    #@16e
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@171
    .line 391
    if-eqz v12, :cond_13

    #@173
    .line 392
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@175
    const-string/jumbo v20, "  installer="

    #@178
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@17b
    .line 393
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@181
    move-object/from16 v20, v0

    #@183
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@185
    move-object/from16 v21, v0

    #@187
    invoke-interface/range {v20 .. v21}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@18a
    move-result-object v20

    #@18b
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@18e
    .line 395
    :cond_13
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@190
    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@193
    goto :goto_3

    #@194
    .line 399
    .end local v3    # "count":I
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "isSystem":Z
    .end local v16    # "p":I
    .end local v17    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v4

    #@195
    .line 400
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@197
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@19a
    move-result-object v20

    #@19b
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19e
    .line 401
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a0
    const-string/jumbo v20, "Error: Could not access the Package Manager.  Is the system running?"

    #@1a3
    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a6
    .line 402
    const/16 v19, 0x1

    #@1a8
    return v19

    #@1a9
    .line 398
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v3    # "count":I
    .restart local v16    # "p":I
    .restart local v17    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_14
    const/16 v19, 0x0

    #@1ab
    return v19
.end method

.method private runListPermissionGroups()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 555
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@3
    const/4 v6, 0x0

    #@4
    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    .line 557
    .local v4, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 558
    .local v0, "count":I
    const/4 v2, 0x0

    #@d
    .local v2, "p":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@f
    .line 559
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/content/pm/PermissionGroupInfo;

    #@15
    .line 560
    .local v3, "pgi":Landroid/content/pm/PermissionGroupInfo;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    const-string/jumbo v6, "permission group:"

    #@1a
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1d
    .line 561
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f
    iget-object v6, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@21
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 558
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 563
    .end local v3    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_0
    return v7

    #@28
    .line 564
    .end local v0    # "count":I
    .end local v2    # "p":I
    .end local v4    # "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :catch_0
    move-exception v1

    #@29
    .line 565
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2b
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 566
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34
    const-string/jumbo v6, "Error: Could not access the Package Manager.  Is the system running?"

    #@37
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 567
    const/4 v5, 0x1

    #@3b
    return v5
.end method

.method private runListPermissions()I
    .locals 14

    #@0
    .prologue
    .line 592
    const/4 v3, 0x0

    #@1
    .line 593
    .local v3, "labels":Z
    const/4 v2, 0x0

    #@2
    .line 594
    .local v2, "groups":Z
    const/4 v13, 0x0

    #@3
    .line 595
    .local v13, "userOnly":Z
    const/4 v4, 0x0

    #@4
    .line 596
    .local v4, "summary":Z
    const/4 v7, 0x0

    #@5
    .line 598
    .local v7, "dangerousOnly":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@8
    move-result-object v12

    #@9
    .local v12, "opt":Ljava/lang/String;
    if-eqz v12, :cond_5

    #@b
    .line 599
    const-string/jumbo v0, "-f"

    #@e
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 600
    const/4 v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 601
    :cond_0
    const-string/jumbo v0, "-g"

    #@19
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 602
    const/4 v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 603
    :cond_1
    const-string/jumbo v0, "-s"

    #@24
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 604
    const/4 v2, 0x1

    #@2b
    .line 605
    const/4 v3, 0x1

    #@2c
    .line 606
    const/4 v4, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 607
    :cond_2
    const-string/jumbo v0, "-u"

    #@31
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 608
    const/4 v13, 0x1

    #@38
    goto :goto_0

    #@39
    .line 609
    :cond_3
    const-string/jumbo v0, "-d"

    #@3c
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_4

    #@42
    .line 610
    const/4 v7, 0x1

    #@43
    goto :goto_0

    #@44
    .line 612
    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@46
    new-instance v5, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v6, "Error: Unknown option: "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 613
    const/4 v0, 0x1

    #@5e
    return v0

    #@5f
    .line 617
    :cond_5
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    .line 618
    .local v9, "grp":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@68
    .line 619
    .local v1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    #@6a
    .line 621
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@6c
    const/4 v5, 0x0

    #@6d
    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    #@70
    move-result-object v11

    #@71
    .line 622
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    const/4 v10, 0x0

    #@72
    .local v10, "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@75
    move-result v0

    #@76
    if-ge v10, v0, :cond_6

    #@78
    .line 623
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    #@7e
    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@80
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    .line 622
    add-int/lit8 v10, v10, 0x1

    #@85
    goto :goto_1

    #@86
    .line 625
    :cond_6
    const/4 v0, 0x0

    #@87
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8a
    .line 630
    .end local v10    # "i":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :goto_2
    if-eqz v7, :cond_9

    #@8c
    .line 631
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8e
    const-string/jumbo v5, "Dangerous Permissions:"

    #@91
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@94
    .line 632
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@96
    const-string/jumbo v5, ""

    #@99
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    .line 634
    const/4 v5, 0x1

    #@9d
    .line 635
    const/4 v6, 0x1

    #@9e
    move-object v0, p0

    #@9f
    .line 633
    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    #@a2
    .line 636
    if-eqz v13, :cond_7

    #@a4
    .line 637
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a6
    const-string/jumbo v5, "Normal Permissions:"

    #@a9
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ac
    .line 638
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ae
    const-string/jumbo v5, ""

    #@b1
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b4
    .line 640
    const/4 v5, 0x0

    #@b5
    .line 641
    const/4 v6, 0x0

    #@b6
    move-object v0, p0

    #@b7
    .line 639
    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    #@ba
    .line 655
    :cond_7
    :goto_3
    const/4 v0, 0x0

    #@bb
    return v0

    #@bc
    .line 627
    :cond_8
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    goto :goto_2

    #@c0
    .line 656
    .end local v1    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "grp":Ljava/lang/String;
    .end local v12    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@c1
    .line 657
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c3
    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ca
    .line 658
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@cc
    const-string/jumbo v5, "Error: Could not access the Package Manager.  Is the system running?"

    #@cf
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d2
    .line 659
    const/4 v0, 0x1

    #@d3
    return v0

    #@d4
    .line 643
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v1    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "grp":Ljava/lang/String;
    .restart local v12    # "opt":Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_a

    #@d6
    .line 644
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d8
    const-string/jumbo v5, "Dangerous and Normal Permissions:"

    #@db
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@de
    .line 645
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e0
    const-string/jumbo v5, ""

    #@e3
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e6
    .line 647
    const/4 v5, 0x0

    #@e7
    .line 648
    const/4 v6, 0x1

    #@e8
    move-object v0, p0

    #@e9
    .line 646
    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    #@ec
    goto :goto_3

    #@ed
    .line 650
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ef
    const-string/jumbo v5, "All Permissions:"

    #@f2
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f5
    .line 651
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f7
    const-string/jumbo v5, ""

    #@fa
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@fd
    .line 653
    const/16 v5, -0x2710

    #@ff
    const/16 v6, 0x2710

    #@101
    move-object v0, p0

    #@102
    .line 652
    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@105
    goto :goto_3
.end method

.method private runPath()I
    .locals 3

    #@0
    .prologue
    .line 760
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 761
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 762
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v2, "Error: no package specified"

    #@b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 763
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 765
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    return v1
.end method

.method private runResetPermissions()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1802
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@3
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->resetRuntimePermissions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1803
    const/4 v3, 0x0

    #@7
    return v3

    #@8
    .line 1812
    :catch_0
    move-exception v2

    #@9
    .line 1813
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Operation not allowed: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 1814
    return v6

    #@27
    .line 1808
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@28
    .line 1809
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "Bad argument: "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 1810
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@48
    .line 1811
    return v6

    #@49
    .line 1804
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@4a
    .line 1805
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4c
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@53
    .line 1806
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@55
    const-string/jumbo v4, "Error: Could not access the Package Manager.  Is the system running?"

    #@58
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5b
    .line 1807
    return v6
.end method

.method private runSetAppLink()I
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 845
    const/4 v6, 0x0

    #@3
    .line 848
    .local v6, "userId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@9
    .line 849
    const-string/jumbo v7, "--user"

    #@c
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_1

    #@12
    .line 850
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v6

    #@1a
    .line 851
    if-gez v6, :cond_0

    #@1c
    .line 852
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v8, "Error: user must be >= 0"

    #@21
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 853
    return v10

    #@25
    .line 856
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    new-instance v8, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v9, "Error: unknown option: "

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 857
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@41
    .line 858
    return v10

    #@42
    .line 863
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .line 864
    .local v5, "pkg":Ljava/lang/String;
    if-nez v5, :cond_3

    #@48
    .line 865
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v8, "Error: no package specified."

    #@4d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 866
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@53
    .line 867
    return v10

    #@54
    .line 871
    :cond_3
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 872
    .local v2, "modeString":Ljava/lang/String;
    if-nez v2, :cond_4

    #@5a
    .line 873
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v8, "Error: no app link state specified."

    #@5f
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 874
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@65
    .line 875
    return v10

    #@66
    .line 879
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    const-string/jumbo v8, "undefined"

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v8

    #@71
    if-eqz v8, :cond_5

    #@73
    .line 881
    const/4 v3, 0x0

    #@74
    .line 902
    .local v3, "newMode":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@76
    const/4 v8, 0x0

    #@77
    invoke-interface {v7, v5, v8, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@7a
    move-result-object v1

    #@7b
    .line 903
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_9

    #@7d
    .line 904
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7f
    new-instance v8, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v9, "Error: package "

    #@87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    const-string/jumbo v9, " not found."

    #@92
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9d
    .line 905
    return v10

    #@9e
    .line 879
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "newMode":I
    :cond_5
    const-string/jumbo v8, "always"

    #@a1
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v8

    #@a5
    if-eqz v8, :cond_6

    #@a7
    .line 885
    const/4 v3, 0x2

    #@a8
    .line 886
    .restart local v3    # "newMode":I
    goto :goto_0

    #@a9
    .line 879
    .end local v3    # "newMode":I
    :cond_6
    const-string/jumbo v8, "ask"

    #@ac
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v8

    #@b0
    if-eqz v8, :cond_7

    #@b2
    .line 889
    const/4 v3, 0x1

    #@b3
    .line 890
    .restart local v3    # "newMode":I
    goto :goto_0

    #@b4
    .line 879
    .end local v3    # "newMode":I
    :cond_7
    const-string/jumbo v8, "never"

    #@b7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v7

    #@bb
    if-eqz v7, :cond_8

    #@bd
    .line 893
    const/4 v3, 0x3

    #@be
    .line 894
    .restart local v3    # "newMode":I
    goto :goto_0

    #@bf
    .line 897
    .end local v3    # "newMode":I
    :cond_8
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c1
    new-instance v8, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v9, "Error: unknown app link state \'"

    #@c9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v8

    #@cd
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v8

    #@d1
    const-string/jumbo v9, "\'"

    #@d4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v8

    #@d8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v8

    #@dc
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@df
    .line 898
    return v10

    #@e0
    .line 908
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "newMode":I
    :cond_9
    :try_start_1
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e2
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@e4
    and-int/lit8 v7, v7, 0x10

    #@e6
    if-nez v7, :cond_a

    #@e8
    .line 909
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ea
    new-instance v8, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v9, "Error: package "

    #@f2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v8

    #@f6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v8

    #@fa
    const-string/jumbo v9, " does not handle web links."

    #@fd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v8

    #@101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v8

    #@105
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@108
    .line 910
    return v10

    #@109
    .line 913
    :cond_a
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@10b
    invoke-interface {v7, v5, v3, v6}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    #@10e
    move-result v7

    #@10f
    if-nez v7, :cond_b

    #@111
    .line 914
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@113
    new-instance v8, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v9, "Error: unable to update app link status for "

    #@11b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v8

    #@11f
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v8

    #@123
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v8

    #@127
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@12a
    .line 915
    return v10

    #@12b
    .line 917
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@12c
    .line 918
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12e
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@131
    move-result-object v8

    #@132
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@135
    .line 919
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@137
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@13a
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13d
    .line 920
    return v10

    #@13e
    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_b
    return v9
.end method

.method private runSetEnabledSetting(I)I
    .locals 12
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1676
    const/4 v4, 0x0

    #@3
    .line 1677
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v8

    #@7
    .line 1678
    .local v8, "option":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@9
    const-string/jumbo v0, "--user"

    #@c
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1679
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    .line 1680
    .local v9, "optionData":Ljava/lang/String;
    if-eqz v9, :cond_1

    #@18
    invoke-static {v9}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 1685
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v4

    #@22
    .line 1689
    .end local v9    # "optionData":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 1690
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_2

    #@28
    .line 1691
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v2, "Error: no package or component specified"

    #@2d
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 1692
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@33
    .line 1693
    return v11

    #@34
    .line 1681
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v9    # "optionData":Ljava/lang/String;
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@36
    const-string/jumbo v2, "Error: no USER_ID specified"

    #@39
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 1682
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3f
    .line 1683
    return v11

    #@40
    .line 1695
    .end local v9    # "optionData":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@43
    move-result-object v6

    #@44
    .line 1696
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_3

    #@46
    .line 1698
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@48
    .line 1699
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "shell:"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@57
    move-result v3

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    .line 1698
    const/4 v3, 0x0

    #@61
    move v2, p1

    #@62
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@65
    .line 1700
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@67
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v3, "Package "

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    const-string/jumbo v3, " new state: "

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    .line 1702
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@80
    invoke-interface {v3, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    #@83
    move-result v3

    #@84
    .line 1701
    invoke-static {v3}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    .line 1700
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    .line 1703
    return v10

    #@94
    .line 1704
    :catch_0
    move-exception v7

    #@95
    .line 1705
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@97
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9e
    .line 1706
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a0
    const-string/jumbo v2, "Error: Could not access the Package Manager.  Is the system running?"

    #@a3
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a6
    .line 1707
    return v11

    #@a7
    .line 1711
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@a9
    const/4 v2, 0x0

    #@aa
    invoke-interface {v0, v6, p1, v2, v4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    #@ad
    .line 1712
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@af
    new-instance v2, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v3, "Component "

    #@b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    const-string/jumbo v3, " new state: "

    #@c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    .line 1714
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@cc
    invoke-interface {v3, v6, v4}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    #@cf
    move-result v3

    #@d0
    .line 1713
    invoke-static {v3}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    .line 1712
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v2

    #@d8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v2

    #@dc
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@df
    .line 1715
    return v10

    #@e0
    .line 1716
    :catch_1
    move-exception v7

    #@e1
    .line 1717
    .restart local v7    # "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e3
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@e6
    move-result-object v2

    #@e7
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ea
    .line 1718
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ec
    const-string/jumbo v2, "Error: Could not access the Package Manager.  Is the system running?"

    #@ef
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f2
    .line 1719
    return v11
.end method

.method private runSetHiddenSetting(Z)I
    .locals 9
    .param p1, "state"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1725
    const/4 v4, 0x0

    #@2
    .line 1726
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1727
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v5, "--user"

    #@b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 1728
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1729
    .local v2, "optionData":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@17
    invoke-static {v2}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_1

    #@1d
    .line 1734
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v4

    #@21
    .line 1738
    .end local v2    # "optionData":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 1739
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_2

    #@27
    .line 1740
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29
    const-string/jumbo v6, "Error: no package or component specified"

    #@2c
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f
    .line 1741
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@32
    .line 1742
    return v8

    #@33
    .line 1730
    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v2    # "optionData":Ljava/lang/String;
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35
    const-string/jumbo v6, "Error: no USER_ID specified"

    #@38
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 1731
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3e
    .line 1732
    return v8

    #@3f
    .line 1745
    .end local v2    # "optionData":Ljava/lang/String;
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@41
    invoke-interface {v5, v3, p1, v4}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    #@44
    .line 1746
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v6, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v7, "Package "

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    const-string/jumbo v7, " new hidden state: "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    .line 1747
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@5f
    invoke-interface {v7, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    #@62
    move-result v7

    #@63
    .line 1746
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 1748
    const/4 v5, 0x0

    #@6f
    return v5

    #@70
    .line 1749
    :catch_0
    move-exception v0

    #@71
    .line 1750
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@73
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7a
    .line 1751
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7c
    const-string/jumbo v6, "Error: Could not access the Package Manager.  Is the system running?"

    #@7f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@82
    .line 1752
    return v8
.end method

.method private runSetInstallLocation()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 988
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 989
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 990
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v5, "Error: no install location specified."

    #@c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 991
    return v6

    #@10
    .line 994
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v3

    #@14
    .line 1000
    .local v3, "loc":I
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@16
    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 1001
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v5, "Error: install location has to be a number."

    #@21
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 1002
    return v6

    #@25
    .line 995
    .end local v3    # "loc":I
    :catch_0
    move-exception v2

    #@26
    .line 996
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v5, "Error: install location has to be a number."

    #@2b
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 997
    return v6

    #@2f
    .line 1004
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "loc":I
    :cond_1
    const/4 v4, 0x0

    #@30
    return v4

    #@31
    .line 1005
    :catch_1
    move-exception v1

    #@32
    .line 1006
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 1007
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v5, "Error: Could not access the Package Manager.  Is the system running?"

    #@40
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 1008
    return v6
.end method

.method private runSetInstaller()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1332
    .local v1, "targetPackage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1334
    .local v0, "installerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1335
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    .line 1336
    const-string/jumbo v3, "must provide both target and installer package names"

    #@11
    .line 1335
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 1339
    :cond_1
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@17
    invoke-interface {v2, v1, v0}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1340
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v3, "Success"

    #@1f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 1341
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method private runSetPermissionEnforced()I
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1819
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    .line 1820
    .local v5, "permission":Ljava/lang/String;
    if-nez v5, :cond_0

    #@7
    .line 1821
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v7, "Error: no permission specified"

    #@c
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 1822
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@12
    .line 1823
    return v9

    #@13
    .line 1825
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 1826
    .local v4, "enforcedRaw":Ljava/lang/String;
    if-nez v4, :cond_1

    #@19
    .line 1827
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    const-string/jumbo v7, "Error: no enforcement specified"

    #@1e
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 1828
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@24
    .line 1829
    return v9

    #@25
    .line 1831
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@28
    move-result v3

    #@29
    .line 1833
    .local v3, "enforced":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@2b
    invoke-interface {v6, v5, v3}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 1834
    const/4 v6, 0x0

    #@2f
    return v6

    #@30
    .line 1843
    :catch_0
    move-exception v2

    #@31
    .line 1844
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@33
    new-instance v7, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v8, "Operation not allowed: "

    #@3b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 1845
    return v9

    #@4f
    .line 1839
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@50
    .line 1840
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    new-instance v7, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v8, "Bad argument: "

    #@5a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6d
    .line 1841
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@70
    .line 1842
    return v9

    #@71
    .line 1835
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@72
    .line 1836
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@74
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7b
    .line 1837
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7d
    const-string/jumbo v7, "Error: Could not access the Package Manager.  Is the system running?"

    #@80
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@83
    .line 1838
    return v9
.end method

.method private runTrimCaches()I
    .locals 19

    #@0
    .prologue
    .line 1865
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v12

    #@4
    .line 1866
    .local v12, "size":Ljava/lang/String;
    if-nez v12, :cond_0

    #@6
    .line 1867
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v17, "Error: no size specified"

    #@b
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 1868
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@11
    .line 1869
    const/16 v16, 0x1

    #@13
    return v16

    #@14
    .line 1871
    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@17
    move-result v8

    #@18
    .line 1872
    .local v8, "len":I
    const-wide/16 v10, 0x1

    #@1a
    .line 1873
    .local v10, "multiplier":J
    const/16 v16, 0x1

    #@1c
    move/from16 v0, v16

    #@1e
    if-le v8, v0, :cond_2

    #@20
    .line 1874
    add-int/lit8 v16, v8, -0x1

    #@22
    move/from16 v0, v16

    #@24
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v2

    #@28
    .line 1875
    .local v2, "c":C
    const/16 v16, 0x4b

    #@2a
    move/from16 v0, v16

    #@2c
    if-eq v2, v0, :cond_1

    #@2e
    const/16 v16, 0x6b

    #@30
    move/from16 v0, v16

    #@32
    if-ne v2, v0, :cond_4

    #@34
    .line 1876
    :cond_1
    const-wide/16 v10, 0x400

    #@36
    .line 1886
    :goto_0
    add-int/lit8 v16, v8, -0x1

    #@38
    const/16 v17, 0x0

    #@3a
    move/from16 v0, v17

    #@3c
    move/from16 v1, v16

    #@3e
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v12

    #@42
    .line 1890
    .end local v2    # "c":C
    :cond_2
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    #@45
    move-result-wide v16

    #@46
    mul-long v14, v16, v10

    #@48
    .line 1896
    .local v14, "sizeVal":J
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4b
    move-result-object v13

    #@4c
    .line 1897
    .local v13, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v16, "internal"

    #@4f
    move-object/from16 v0, v16

    #@51
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v16

    #@55
    if-eqz v16, :cond_3

    #@57
    .line 1898
    const/4 v13, 0x0

    #@58
    .line 1900
    .end local v13    # "volumeUuid":Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/android/commands/pm/Pm$ClearDataObserver;

    #@5a
    invoke-direct {v9}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    #@5d
    .line 1902
    .local v9, "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_1
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@61
    move-object/from16 v16, v0

    #@63
    move-object/from16 v0, v16

    #@65
    invoke-interface {v0, v13, v14, v15, v9}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    #@68
    .line 1903
    monitor-enter v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    #@69
    .line 1904
    :goto_1
    :try_start_2
    iget-boolean v0, v9, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z

    #@6b
    move/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    if-nez v16, :cond_9

    #@6f
    .line 1906
    :try_start_3
    invoke-virtual {v9}, Lcom/android/commands/pm/Pm$ClearDataObserver;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@72
    goto :goto_1

    #@73
    .line 1907
    :catch_0
    move-exception v5

    #@74
    .local v5, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@75
    .line 1877
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    .end local v14    # "sizeVal":J
    .restart local v2    # "c":C
    :cond_4
    const/16 v16, 0x4d

    #@77
    move/from16 v0, v16

    #@79
    if-eq v2, v0, :cond_5

    #@7b
    const/16 v16, 0x6d

    #@7d
    move/from16 v0, v16

    #@7f
    if-ne v2, v0, :cond_6

    #@81
    .line 1878
    :cond_5
    const-wide/32 v10, 0x100000

    #@84
    .line 1877
    goto :goto_0

    #@85
    .line 1879
    :cond_6
    const/16 v16, 0x47

    #@87
    move/from16 v0, v16

    #@89
    if-eq v2, v0, :cond_7

    #@8b
    const/16 v16, 0x67

    #@8d
    move/from16 v0, v16

    #@8f
    if-ne v2, v0, :cond_8

    #@91
    .line 1880
    :cond_7
    const-wide/32 v10, 0x40000000

    #@94
    .line 1879
    goto :goto_0

    #@95
    .line 1882
    :cond_8
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@97
    new-instance v17, Ljava/lang/StringBuilder;

    #@99
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v18, "Invalid suffix: "

    #@9f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v17

    #@a3
    move-object/from16 v0, v17

    #@a5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v17

    #@a9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v17

    #@ad
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 1883
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@b3
    .line 1884
    const/16 v16, 0x1

    #@b5
    return v16

    #@b6
    .line 1891
    .end local v2    # "c":C
    :catch_1
    move-exception v6

    #@b7
    .line 1892
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b9
    new-instance v17, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v18, "Error: expected number at: "

    #@c1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v17

    #@c5
    move-object/from16 v0, v17

    #@c7
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v17

    #@cb
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v17

    #@cf
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d2
    .line 1893
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@d5
    .line 1894
    const/16 v16, 0x1

    #@d7
    return v16

    #@d8
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    .restart local v14    # "sizeVal":J
    :cond_9
    :try_start_4
    monitor-exit v9

    #@d9
    .line 1911
    const/16 v16, 0x0

    #@db
    return v16

    #@dc
    .line 1903
    :catchall_0
    move-exception v16

    #@dd
    monitor-exit v9

    #@de
    throw v16
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    #@df
    .line 1912
    :catch_2
    move-exception v3

    #@e0
    .line 1913
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e2
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@e5
    move-result-object v17

    #@e6
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e9
    .line 1914
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@eb
    const-string/jumbo v17, "Error: Could not access the Package Manager.  Is the system running?"

    #@ee
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f1
    .line 1915
    const/16 v16, 0x1

    #@f3
    return v16

    #@f4
    .line 1920
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v7

    #@f5
    .line 1921
    .local v7, "e":Ljava/lang/SecurityException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f7
    new-instance v17, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v18, "Operation not allowed: "

    #@ff
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v17

    #@103
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@106
    move-result-object v18

    #@107
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v17

    #@10b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v17

    #@10f
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@112
    .line 1922
    const/16 v16, 0x1

    #@114
    return v16

    #@115
    .line 1916
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v4

    #@116
    .line 1917
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@118
    new-instance v17, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v18, "Bad argument: "

    #@120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v17

    #@124
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@127
    move-result-object v18

    #@128
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v17

    #@12c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v17

    #@130
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@133
    .line 1918
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@136
    .line 1919
    const/16 v16, 0x1

    #@138
    return v16
.end method

.method private runUninstall()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1516
    const/4 v3, 0x0

    #@1
    .line 1517
    .local v3, "flags":I
    const/4 v5, -0x1

    #@2
    .line 1520
    .local v5, "userId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v9

    #@6
    .local v9, "opt":Ljava/lang/String;
    if-eqz v9, :cond_3

    #@8
    .line 1521
    const-string/jumbo v0, "-k"

    #@b
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1522
    or-int/lit8 v3, v3, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1523
    :cond_0
    const-string/jumbo v0, "--user"

    #@17
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 1524
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@20
    move-result-object v10

    #@21
    .line 1525
    .local v10, "param":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1526
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result v5

    #@2b
    goto :goto_0

    #@2c
    .line 1528
    :cond_1
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@2f
    .line 1529
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Error: Invalid user: "

    #@39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 1530
    const/4 v0, 0x1

    #@49
    return v0

    #@4a
    .line 1533
    .end local v10    # "param":Ljava/lang/String;
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "Error: Unknown option: "

    #@54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@63
    .line 1534
    const/4 v0, 0x1

    #@64
    return v0

    #@65
    .line 1538
    :cond_3
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    .line 1539
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_4

    #@6b
    .line 1540
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6d
    const-string/jumbo v2, "Error: no package specified"

    #@70
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    .line 1541
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@76
    .line 1542
    const/4 v0, 0x1

    #@77
    return v0

    #@78
    .line 1545
    :cond_4
    const/4 v0, -0x1

    #@79
    if-ne v5, v0, :cond_6

    #@7b
    .line 1546
    const/4 v5, 0x0

    #@7c
    .line 1547
    or-int/lit8 v3, v3, 0x2

    #@7e
    .line 1571
    :cond_5
    :goto_1
    new-instance v11, Lcom/android/commands/pm/Pm$LocalIntentReceiver;

    #@80
    const/4 v0, 0x0

    #@81
    invoke-direct {v11, v0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;-><init>(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)V

    #@84
    .line 1572
    .local v11, "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@86
    .line 1573
    invoke-virtual {v11}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    #@89
    move-result-object v4

    #@8a
    .line 1572
    const/4 v2, 0x0

    #@8b
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    #@8e
    .line 1575
    invoke-virtual {v11}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    #@91
    move-result-object v12

    #@92
    .line 1576
    .local v12, "result":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    #@95
    .line 1577
    const/4 v2, 0x1

    #@96
    .line 1576
    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@99
    move-result v13

    #@9a
    .line 1578
    .local v13, "status":I
    if-nez v13, :cond_9

    #@9c
    .line 1579
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9e
    const-string/jumbo v2, "Success"

    #@a1
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a4
    .line 1580
    const/4 v0, 0x0

    #@a5
    return v0

    #@a6
    .line 1551
    .end local v11    # "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    .end local v12    # "result":Landroid/content/Intent;
    .end local v13    # "status":I
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@a8
    const/4 v2, 0x0

    #@a9
    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@ac
    move-result-object v7

    #@ad
    .line 1557
    .local v7, "info":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_7

    #@af
    .line 1558
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b1
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v4, "Failure - not installed for "

    #@b9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c8
    .line 1559
    const/4 v0, 0x1

    #@c9
    return v0

    #@ca
    .line 1552
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    #@cb
    .line 1553
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@cd
    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@d0
    move-result-object v2

    #@d1
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d4
    .line 1554
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d6
    const-string/jumbo v2, "Error: Could not access the Package Manager.  Is the system running?"

    #@d9
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@dc
    .line 1555
    const/4 v0, 0x1

    #@dd
    return v0

    #@de
    .line 1562
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_7
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@e2
    and-int/lit8 v0, v0, 0x1

    #@e4
    if-eqz v0, :cond_8

    #@e6
    const/4 v8, 0x1

    #@e7
    .line 1566
    .local v8, "isSystem":Z
    :goto_2
    if-eqz v8, :cond_5

    #@e9
    .line 1567
    or-int/lit8 v3, v3, 0x4

    #@eb
    goto :goto_1

    #@ec
    .line 1562
    .end local v8    # "isSystem":Z
    :cond_8
    const/4 v8, 0x0

    #@ed
    .restart local v8    # "isSystem":Z
    goto :goto_2

    #@ee
    .line 1582
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "isSystem":Z
    .restart local v11    # "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    .restart local v12    # "result":Landroid/content/Intent;
    .restart local v13    # "status":I
    :cond_9
    const-string/jumbo v0, "Pm"

    #@f1
    new-instance v2, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v4, "Failure details: "

    #@f9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v2

    #@105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v2

    #@109
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10c
    .line 1583
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10e
    new-instance v2, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v4, "Failure ["

    #@116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v2

    #@11a
    .line 1584
    const-string/jumbo v4, "android.content.pm.extra.STATUS_MESSAGE"

    #@11d
    invoke-virtual {v12, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v4

    #@121
    .line 1583
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v2

    #@125
    .line 1584
    const-string/jumbo v4, "]"

    #@128
    .line 1583
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v2

    #@12c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@133
    .line 1585
    const/4 v0, 0x1

    #@134
    return v0
.end method

.method private static showUsage()I
    .locals 2

    #@0
    .prologue
    .line 2064
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage: pm list packages [-f] [-d] [-e] [-s] [-3] [-i] [-u] [--user USER_ID] [FILTER]"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 2065
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "       pm list permission-groups"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 2066
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "       pm list permissions [-g] [-f] [-d] [-u] [GROUP]"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 2067
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "       pm list instrumentation [-f] [TARGET-PACKAGE]"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 2068
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "       pm list features"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 2069
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, "       pm list libraries"

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 2070
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "       pm list users"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 2071
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "       pm path PACKAGE"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 2072
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "       pm dump PACKAGE"

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 2073
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v1, "       pm install [-lrtsfd] [-i PACKAGE] [--user USER_ID] [PATH]"

    #@4d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 2074
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v1, "       pm install-create [-lrtsfdp] [-i PACKAGE] [-S BYTES]"

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 2075
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v1, "               [--install-location 0/1/2]"

    #@5d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 2076
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v1, "               [--force-uuid internal|UUID]"

    #@65
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 2077
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v1, "       pm install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH]"

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 2078
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@72
    const-string/jumbo v1, "       pm install-commit SESSION_ID"

    #@75
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 2079
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7a
    const-string/jumbo v1, "       pm install-abandon SESSION_ID"

    #@7d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 2080
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@82
    const-string/jumbo v1, "       pm uninstall [-k] [--user USER_ID] PACKAGE"

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 2081
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8a
    const-string/jumbo v1, "       pm set-installer PACKAGE INSTALLER"

    #@8d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@90
    .line 2082
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@92
    const-string/jumbo v1, "       pm move-package PACKAGE [internal|UUID]"

    #@95
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@98
    .line 2083
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9a
    const-string/jumbo v1, "       pm move-primary-storage [internal|UUID]"

    #@9d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 2084
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a2
    const-string/jumbo v1, "       pm clear [--user USER_ID] PACKAGE"

    #@a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a8
    .line 2085
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@aa
    const-string/jumbo v1, "       pm enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 2086
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b2
    const-string/jumbo v1, "       pm disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b8
    .line 2087
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    const-string/jumbo v1, "       pm disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    .line 2088
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c2
    const-string/jumbo v1, "       pm disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c8
    .line 2089
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ca
    const-string/jumbo v1, "       pm hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    .line 2090
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d2
    const-string/jumbo v1, "       pm unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d8
    .line 2091
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@da
    const-string/jumbo v1, "       pm grant [--user USER_ID] PACKAGE PERMISSION"

    #@dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e0
    .line 2092
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e2
    const-string/jumbo v1, "       pm revoke [--user USER_ID] PACKAGE PERMISSION"

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e8
    .line 2093
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ea
    const-string/jumbo v1, "       pm reset-permissions"

    #@ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f0
    .line 2094
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f2
    const-string/jumbo v1, "       pm set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}"

    #@f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f8
    .line 2095
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@fa
    const-string/jumbo v1, "       pm get-app-link [--user USER_ID] PACKAGE"

    #@fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@100
    .line 2096
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@102
    const-string/jumbo v1, "       pm set-install-location [0/auto] [1/internal] [2/external]"

    #@105
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@108
    .line 2097
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10a
    const-string/jumbo v1, "       pm get-install-location"

    #@10d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@110
    .line 2098
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@112
    const-string/jumbo v1, "       pm set-permission-enforced PERMISSION [true|false]"

    #@115
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@118
    .line 2099
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@11a
    const-string/jumbo v1, "       pm trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    #@11d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@120
    .line 2100
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@122
    const-string/jumbo v1, "       pm create-user [--profileOf USER_ID] [--managed] USER_NAME"

    #@125
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@128
    .line 2101
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12a
    const-string/jumbo v1, "       pm remove-user USER_ID"

    #@12d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@130
    .line 2102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@132
    const-string/jumbo v1, "       pm get-max-users"

    #@135
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@138
    .line 2103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13a
    const-string/jumbo v1, ""

    #@13d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@140
    .line 2104
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@142
    const-string/jumbo v1, "pm list packages: prints all packages, optionally only"

    #@145
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@148
    .line 2105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14a
    const-string/jumbo v1, "  those whose package name contains the text in FILTER.  Options:"

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@150
    .line 2106
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@152
    const-string/jumbo v1, "    -f: see their associated file."

    #@155
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@158
    .line 2107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15a
    const-string/jumbo v1, "    -d: filter to only show disbled packages."

    #@15d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@160
    .line 2108
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@162
    const-string/jumbo v1, "    -e: filter to only show enabled packages."

    #@165
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@168
    .line 2109
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@16a
    const-string/jumbo v1, "    -s: filter to only show system packages."

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@170
    .line 2110
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@172
    const-string/jumbo v1, "    -3: filter to only show third party packages."

    #@175
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@178
    .line 2111
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17a
    const-string/jumbo v1, "    -i: see the installer for the packages."

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@180
    .line 2112
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@182
    const-string/jumbo v1, "    -u: also include uninstalled packages."

    #@185
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@188
    .line 2113
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@18a
    const-string/jumbo v1, ""

    #@18d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@190
    .line 2114
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@192
    const-string/jumbo v1, "pm list permission-groups: prints all known permission groups."

    #@195
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@198
    .line 2115
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@19a
    const-string/jumbo v1, ""

    #@19d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a0
    .line 2116
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a2
    const-string/jumbo v1, "pm list permissions: prints all known permissions, optionally only"

    #@1a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a8
    .line 2117
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1aa
    const-string/jumbo v1, "  those in GROUP.  Options:"

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b0
    .line 2118
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b2
    const-string/jumbo v1, "    -g: organize by group."

    #@1b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b8
    .line 2119
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ba
    const-string/jumbo v1, "    -f: print all information."

    #@1bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c0
    .line 2120
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c2
    const-string/jumbo v1, "    -s: short summary."

    #@1c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c8
    .line 2121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ca
    const-string/jumbo v1, "    -d: only list dangerous permissions."

    #@1cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d0
    .line 2122
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1d2
    const-string/jumbo v1, "    -u: list only the permissions users will see."

    #@1d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d8
    .line 2123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1da
    const-string/jumbo v1, ""

    #@1dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e0
    .line 2124
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e2
    const-string/jumbo v1, "pm list instrumentation: use to list all test packages; optionally"

    #@1e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e8
    .line 2125
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ea
    const-string/jumbo v1, "  supply <TARGET-PACKAGE> to list the test packages for a particular"

    #@1ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f0
    .line 2126
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1f2
    const-string/jumbo v1, "  application.  Options:"

    #@1f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f8
    .line 2127
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1fa
    const-string/jumbo v1, "    -f: list the .apk file for the test package."

    #@1fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@200
    .line 2128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@202
    const-string/jumbo v1, ""

    #@205
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@208
    .line 2129
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@20a
    const-string/jumbo v1, "pm list features: prints all features of the system."

    #@20d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@210
    .line 2130
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@212
    const-string/jumbo v1, ""

    #@215
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@218
    .line 2131
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@21a
    const-string/jumbo v1, "pm list users: prints all users on the system."

    #@21d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@220
    .line 2132
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@222
    const-string/jumbo v1, ""

    #@225
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@228
    .line 2133
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22a
    const-string/jumbo v1, "pm path: print the path to the .apk of the given PACKAGE."

    #@22d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@230
    .line 2134
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@232
    const-string/jumbo v1, ""

    #@235
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@238
    .line 2135
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23a
    const-string/jumbo v1, "pm dump: print system state associated with the given PACKAGE."

    #@23d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@240
    .line 2136
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@242
    const-string/jumbo v1, ""

    #@245
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@248
    .line 2137
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@24a
    const-string/jumbo v1, "pm install: install a single legacy package"

    #@24d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@250
    .line 2138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@252
    const-string/jumbo v1, "pm install-create: create an install session"

    #@255
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@258
    .line 2139
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@25a
    const-string/jumbo v1, "    -l: forward lock application"

    #@25d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@260
    .line 2140
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@262
    const-string/jumbo v1, "    -r: replace existing application"

    #@265
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@268
    .line 2141
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26a
    const-string/jumbo v1, "    -t: allow test packages"

    #@26d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@270
    .line 2142
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@272
    const-string/jumbo v1, "    -i: specify the installer package name"

    #@275
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@278
    .line 2143
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27a
    const-string/jumbo v1, "    -s: install application on sdcard"

    #@27d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@280
    .line 2144
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@282
    const-string/jumbo v1, "    -f: install application on internal flash"

    #@285
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@288
    .line 2145
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28a
    const-string/jumbo v1, "    -d: allow version code downgrade"

    #@28d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@290
    .line 2146
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@292
    const-string/jumbo v1, "    -p: partial application install"

    #@295
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@298
    .line 2147
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29a
    const-string/jumbo v1, "    -g: grant all runtime permissions"

    #@29d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a0
    .line 2148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a2
    const-string/jumbo v1, "    -S: size in bytes of entire session"

    #@2a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a8
    .line 2149
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2aa
    const-string/jumbo v1, ""

    #@2ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b0
    .line 2150
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2b2
    const-string/jumbo v1, "pm install-write: write a package into existing session; path may"

    #@2b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b8
    .line 2151
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2ba
    const-string/jumbo v1, "  be \'-\' to read from stdin"

    #@2bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c0
    .line 2152
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c2
    const-string/jumbo v1, "    -S: size in bytes of package, required for stdin"

    #@2c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c8
    .line 2153
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2ca
    const-string/jumbo v1, ""

    #@2cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d0
    .line 2154
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d2
    const-string/jumbo v1, "pm install-commit: perform install of fully staged session"

    #@2d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d8
    .line 2155
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2da
    const-string/jumbo v1, "pm install-abandon: abandon session"

    #@2dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e0
    .line 2156
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2e2
    const-string/jumbo v1, ""

    #@2e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e8
    .line 2157
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2ea
    const-string/jumbo v1, "pm set-installer: set installer package name"

    #@2ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f0
    .line 2158
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2f2
    const-string/jumbo v1, ""

    #@2f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f8
    .line 2159
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2fa
    const-string/jumbo v1, "pm uninstall: removes a package from the system. Options:"

    #@2fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@300
    .line 2160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@302
    const-string/jumbo v1, "    -k: keep the data and cache directories around after package removal."

    #@305
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@308
    .line 2161
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@30a
    const-string/jumbo v1, ""

    #@30d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@310
    .line 2162
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@312
    const-string/jumbo v1, "pm clear: deletes all data associated with a package."

    #@315
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@318
    .line 2163
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@31a
    const-string/jumbo v1, ""

    #@31d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@320
    .line 2164
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@322
    const-string/jumbo v1, "pm enable, disable, disable-user, disable-until-used: these commands"

    #@325
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@328
    .line 2165
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32a
    const-string/jumbo v1, "  change the enabled state of a given package or component (written"

    #@32d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@330
    .line 2166
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@332
    const-string/jumbo v1, "  as \"package/class\")."

    #@335
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@338
    .line 2167
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@33a
    const-string/jumbo v1, ""

    #@33d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@340
    .line 2168
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@342
    const-string/jumbo v1, "pm grant, revoke: these commands either grant or revoke permissions"

    #@345
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@348
    .line 2169
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34a
    const-string/jumbo v1, "    to apps. The permissions must be declared as used in the app\'s"

    #@34d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@350
    .line 2170
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@352
    const-string/jumbo v1, "    manifest, be runtime permissions (protection level dangerous),"

    #@355
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@358
    .line 2171
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35a
    const-string/jumbo v1, "    and the app targeting SDK greater than Lollipop MR1."

    #@35d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@360
    .line 2172
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@362
    const-string/jumbo v1, ""

    #@365
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@368
    .line 2173
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@36a
    const-string/jumbo v1, "pm reset-permissions: revert all runtime permissions to their default state."

    #@36d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@370
    .line 2174
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@372
    const-string/jumbo v1, ""

    #@375
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@378
    .line 2175
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37a
    const-string/jumbo v1, "pm get-install-location: returns the current install location."

    #@37d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@380
    .line 2176
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@382
    const-string/jumbo v1, "    0 [auto]: Let system decide the best location"

    #@385
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@388
    .line 2177
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@38a
    const-string/jumbo v1, "    1 [internal]: Install on internal device storage"

    #@38d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@390
    .line 2178
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@392
    const-string/jumbo v1, "    2 [external]: Install on external media"

    #@395
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@398
    .line 2179
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@39a
    const-string/jumbo v1, ""

    #@39d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a0
    .line 2180
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a2
    const-string/jumbo v1, "pm set-install-location: changes the default install location."

    #@3a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a8
    .line 2181
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3aa
    const-string/jumbo v1, "  NOTE: this is only intended for debugging; using this can cause"

    #@3ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b0
    .line 2182
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3b2
    const-string/jumbo v1, "  applications to break and other undersireable behavior."

    #@3b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b8
    .line 2183
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3ba
    const-string/jumbo v1, "    0 [auto]: Let system decide the best location"

    #@3bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c0
    .line 2184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c2
    const-string/jumbo v1, "    1 [internal]: Install on internal device storage"

    #@3c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c8
    .line 2185
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3ca
    const-string/jumbo v1, "    2 [external]: Install on external media"

    #@3cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d0
    .line 2186
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d2
    const-string/jumbo v1, ""

    #@3d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d8
    .line 2187
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3da
    const-string/jumbo v1, "pm trim-caches: trim cache files to reach the given free space."

    #@3dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e0
    .line 2188
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3e2
    const-string/jumbo v1, ""

    #@3e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e8
    .line 2189
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3ea
    const-string/jumbo v1, "pm create-user: create a new user with the given USER_NAME,"

    #@3ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f0
    .line 2190
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3f2
    const-string/jumbo v1, "  printing the new user identifier of the user."

    #@3f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f8
    .line 2191
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3fa
    const-string/jumbo v1, ""

    #@3fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@400
    .line 2192
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@402
    const-string/jumbo v1, "pm remove-user: remove the user with the given USER_IDENTIFIER,"

    #@405
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@408
    .line 2193
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@40a
    const-string/jumbo v1, "  deleting all data associated with that user"

    #@40d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@410
    .line 2194
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@412
    const-string/jumbo v1, ""

    #@415
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@418
    .line 2195
    const/4 v0, 0x1

    #@419
    return v0
.end method


# virtual methods
.method public run([Ljava/lang/String;)I
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    .line 119
    const/4 v1, 0x0

    #@4
    .line 120
    .local v1, "validCommand":Z
    array-length v2, p1

    #@5
    if-ge v2, v5, :cond_0

    #@7
    .line 121
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 124
    :cond_0
    const-string/jumbo v2, "user"

    #@f
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@19
    .line 125
    const-string/jumbo v2, "package"

    #@1c
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@26
    .line 126
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@28
    if-nez v2, :cond_1

    #@2a
    .line 127
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c
    const-string/jumbo v3, "Error: Could not access the Package Manager.  Is the system running?"

    #@2f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 128
    return v5

    #@33
    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@35
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@3b
    .line 132
    iput-object p1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@3d
    .line 133
    aget-object v0, p1, v3

    #@3f
    .line 134
    .local v0, "op":Ljava/lang/String;
    iput v5, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@41
    .line 136
    const-string/jumbo v2, "list"

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 137
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runList()I

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 140
    :cond_2
    const-string/jumbo v2, "path"

    #@52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_3

    #@58
    .line 141
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runPath()I

    #@5b
    move-result v2

    #@5c
    return v2

    #@5d
    .line 144
    :cond_3
    const-string/jumbo v2, "dump"

    #@60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v2

    #@64
    if-eqz v2, :cond_4

    #@66
    .line 145
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runDump()I

    #@69
    move-result v2

    #@6a
    return v2

    #@6b
    .line 148
    :cond_4
    const-string/jumbo v2, "install"

    #@6e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_5

    #@74
    .line 149
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstall()I

    #@77
    move-result v2

    #@78
    return v2

    #@79
    .line 152
    :cond_5
    const-string/jumbo v2, "install-create"

    #@7c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_6

    #@82
    .line 153
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallCreate()I

    #@85
    move-result v2

    #@86
    return v2

    #@87
    .line 156
    :cond_6
    const-string/jumbo v2, "install-write"

    #@8a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v2

    #@8e
    if-eqz v2, :cond_7

    #@90
    .line 157
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallWrite()I

    #@93
    move-result v2

    #@94
    return v2

    #@95
    .line 160
    :cond_7
    const-string/jumbo v2, "install-commit"

    #@98
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_8

    #@9e
    .line 161
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallCommit()I

    #@a1
    move-result v2

    #@a2
    return v2

    #@a3
    .line 164
    :cond_8
    const-string/jumbo v2, "install-abandon"

    #@a6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v2

    #@aa
    if-nez v2, :cond_9

    #@ac
    const-string/jumbo v2, "install-destroy"

    #@af
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v2

    #@b3
    if-eqz v2, :cond_a

    #@b5
    .line 165
    :cond_9
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallAbandon()I

    #@b8
    move-result v2

    #@b9
    return v2

    #@ba
    .line 168
    :cond_a
    const-string/jumbo v2, "set-installer"

    #@bd
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v2

    #@c1
    if-eqz v2, :cond_b

    #@c3
    .line 169
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetInstaller()I

    #@c6
    move-result v2

    #@c7
    return v2

    #@c8
    .line 172
    :cond_b
    const-string/jumbo v2, "uninstall"

    #@cb
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v2

    #@cf
    if-eqz v2, :cond_c

    #@d1
    .line 173
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runUninstall()I

    #@d4
    move-result v2

    #@d5
    return v2

    #@d6
    .line 176
    :cond_c
    const-string/jumbo v2, "clear"

    #@d9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v2

    #@dd
    if-eqz v2, :cond_d

    #@df
    .line 177
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runClear()I

    #@e2
    move-result v2

    #@e3
    return v2

    #@e4
    .line 180
    :cond_d
    const-string/jumbo v2, "enable"

    #@e7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v2

    #@eb
    if-eqz v2, :cond_e

    #@ed
    .line 181
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@f0
    move-result v2

    #@f1
    return v2

    #@f2
    .line 184
    :cond_e
    const-string/jumbo v2, "disable"

    #@f5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v2

    #@f9
    if-eqz v2, :cond_f

    #@fb
    .line 185
    invoke-direct {p0, v4}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@fe
    move-result v2

    #@ff
    return v2

    #@100
    .line 188
    :cond_f
    const-string/jumbo v2, "disable-user"

    #@103
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v2

    #@107
    if-eqz v2, :cond_10

    #@109
    .line 189
    const/4 v2, 0x3

    #@10a
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@10d
    move-result v2

    #@10e
    return v2

    #@10f
    .line 192
    :cond_10
    const-string/jumbo v2, "disable-until-used"

    #@112
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@115
    move-result v2

    #@116
    if-eqz v2, :cond_11

    #@118
    .line 193
    const/4 v2, 0x4

    #@119
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@11c
    move-result v2

    #@11d
    return v2

    #@11e
    .line 196
    :cond_11
    const-string/jumbo v2, "hide"

    #@121
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v2

    #@125
    if-eqz v2, :cond_12

    #@127
    .line 197
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runSetHiddenSetting(Z)I

    #@12a
    move-result v2

    #@12b
    return v2

    #@12c
    .line 200
    :cond_12
    const-string/jumbo v2, "unhide"

    #@12f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@132
    move-result v2

    #@133
    if-eqz v2, :cond_13

    #@135
    .line 201
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runSetHiddenSetting(Z)I

    #@138
    move-result v2

    #@139
    return v2

    #@13a
    .line 204
    :cond_13
    const-string/jumbo v2, "grant"

    #@13d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@140
    move-result v2

    #@141
    if-eqz v2, :cond_14

    #@143
    .line 205
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)I

    #@146
    move-result v2

    #@147
    return v2

    #@148
    .line 208
    :cond_14
    const-string/jumbo v2, "revoke"

    #@14b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14e
    move-result v2

    #@14f
    if-eqz v2, :cond_15

    #@151
    .line 209
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)I

    #@154
    move-result v2

    #@155
    return v2

    #@156
    .line 212
    :cond_15
    const-string/jumbo v2, "reset-permissions"

    #@159
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15c
    move-result v2

    #@15d
    if-eqz v2, :cond_16

    #@15f
    .line 213
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runResetPermissions()I

    #@162
    move-result v2

    #@163
    return v2

    #@164
    .line 216
    :cond_16
    const-string/jumbo v2, "set-permission-enforced"

    #@167
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16a
    move-result v2

    #@16b
    if-eqz v2, :cond_17

    #@16d
    .line 217
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetPermissionEnforced()I

    #@170
    move-result v2

    #@171
    return v2

    #@172
    .line 220
    :cond_17
    const-string/jumbo v2, "set-app-link"

    #@175
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@178
    move-result v2

    #@179
    if-eqz v2, :cond_18

    #@17b
    .line 221
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetAppLink()I

    #@17e
    move-result v2

    #@17f
    return v2

    #@180
    .line 224
    :cond_18
    const-string/jumbo v2, "get-app-link"

    #@183
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@186
    move-result v2

    #@187
    if-eqz v2, :cond_19

    #@189
    .line 225
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runGetAppLink()I

    #@18c
    move-result v2

    #@18d
    return v2

    #@18e
    .line 228
    :cond_19
    const-string/jumbo v2, "set-install-location"

    #@191
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@194
    move-result v2

    #@195
    if-eqz v2, :cond_1a

    #@197
    .line 229
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetInstallLocation()I

    #@19a
    move-result v2

    #@19b
    return v2

    #@19c
    .line 232
    :cond_1a
    const-string/jumbo v2, "get-install-location"

    #@19f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a2
    move-result v2

    #@1a3
    if-eqz v2, :cond_1b

    #@1a5
    .line 233
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runGetInstallLocation()I

    #@1a8
    move-result v2

    #@1a9
    return v2

    #@1aa
    .line 236
    :cond_1b
    const-string/jumbo v2, "trim-caches"

    #@1ad
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b0
    move-result v2

    #@1b1
    if-eqz v2, :cond_1c

    #@1b3
    .line 237
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runTrimCaches()I

    #@1b6
    move-result v2

    #@1b7
    return v2

    #@1b8
    .line 240
    :cond_1c
    const-string/jumbo v2, "create-user"

    #@1bb
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1be
    move-result v2

    #@1bf
    if-eqz v2, :cond_1d

    #@1c1
    .line 241
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runCreateUser()I

    #@1c4
    move-result v2

    #@1c5
    return v2

    #@1c6
    .line 244
    :cond_1d
    const-string/jumbo v2, "remove-user"

    #@1c9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1cc
    move-result v2

    #@1cd
    if-eqz v2, :cond_1e

    #@1cf
    .line 245
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runRemoveUser()I

    #@1d2
    move-result v2

    #@1d3
    return v2

    #@1d4
    .line 248
    :cond_1e
    const-string/jumbo v2, "get-max-users"

    #@1d7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1da
    move-result v2

    #@1db
    if-eqz v2, :cond_1f

    #@1dd
    .line 249
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runGetMaxUsers()I

    #@1e0
    move-result v2

    #@1e1
    return v2

    #@1e2
    .line 252
    :cond_1f
    const-string/jumbo v2, "force-dex-opt"

    #@1e5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e8
    move-result v2

    #@1e9
    if-eqz v2, :cond_20

    #@1eb
    .line 253
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runForceDexOpt()I

    #@1ee
    move-result v2

    #@1ef
    return v2

    #@1f0
    .line 256
    :cond_20
    const-string/jumbo v2, "move-package"

    #@1f3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f6
    move-result v2

    #@1f7
    if-eqz v2, :cond_21

    #@1f9
    .line 257
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runMovePackage()I

    #@1fc
    move-result v2

    #@1fd
    return v2

    #@1fe
    .line 260
    :cond_21
    const-string/jumbo v2, "move-primary-storage"

    #@201
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@204
    move-result v2

    #@205
    if-eqz v2, :cond_22

    #@207
    .line 261
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runMovePrimaryStorage()I

    #@20a
    move-result v2

    #@20b
    return v2

    #@20c
    .line 265
    :cond_22
    :try_start_0
    array-length v2, p1

    #@20d
    if-ne v2, v5, :cond_24

    #@20f
    .line 266
    const/4 v2, 0x0

    #@210
    aget-object v2, p1, v2

    #@212
    const-string/jumbo v3, "-l"

    #@215
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@218
    move-result v2

    #@219
    if-eqz v2, :cond_23

    #@21b
    .line 267
    const/4 v1, 0x1

    #@21c
    .line 268
    const/4 v2, 0x0

    #@21d
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)I

    #@220
    move-result v2

    #@221
    return v2

    #@222
    .line 269
    :cond_23
    const/4 v2, 0x0

    #@223
    aget-object v2, p1, v2

    #@225
    const-string/jumbo v3, "-lf"

    #@228
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22b
    move-result v2

    #@22c
    if-eqz v2, :cond_25

    #@22e
    .line 270
    const/4 v1, 0x1

    #@22f
    .line 271
    const/4 v2, 0x1

    #@230
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)I

    #@233
    move-result v2

    #@234
    return v2

    #@235
    .line 273
    :cond_24
    array-length v2, p1

    #@236
    if-ne v2, v4, :cond_25

    #@238
    .line 274
    const/4 v2, 0x0

    #@239
    aget-object v2, p1, v2

    #@23b
    const-string/jumbo v3, "-p"

    #@23e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@241
    move-result v2

    #@242
    if-eqz v2, :cond_25

    #@244
    .line 275
    const/4 v1, 0x1

    #@245
    .line 276
    const/4 v2, 0x1

    #@246
    aget-object v2, p1, v2

    #@248
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24b
    move-result v2

    #@24c
    return v2

    #@24d
    .line 282
    :cond_25
    if-eqz v0, :cond_26

    #@24f
    .line 283
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@251
    new-instance v3, Ljava/lang/StringBuilder;

    #@253
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@256
    const-string/jumbo v4, "Error: unknown command \'"

    #@259
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v3

    #@25d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@260
    move-result-object v3

    #@261
    const-string/jumbo v4, "\'"

    #@264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v3

    #@268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26b
    move-result-object v3

    #@26c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26f
    .line 285
    :cond_26
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@272
    .line 279
    return v5

    #@273
    .line 280
    :catchall_0
    move-exception v2

    #@274
    .line 281
    if-nez v1, :cond_28

    #@276
    .line 282
    if-eqz v0, :cond_27

    #@278
    .line 283
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27a
    new-instance v4, Ljava/lang/StringBuilder;

    #@27c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27f
    const-string/jumbo v5, "Error: unknown command \'"

    #@282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v4

    #@286
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v4

    #@28a
    const-string/jumbo v5, "\'"

    #@28d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v4

    #@291
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@294
    move-result-object v4

    #@295
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@298
    .line 285
    :cond_27
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@29b
    .line 280
    :cond_28
    throw v2
.end method

.method public runCreateUser()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 1346
    const/4 v7, -0x1

    #@2
    .line 1347
    .local v7, "userId":I
    const/4 v2, 0x0

    #@3
    .line 1349
    .local v2, "flags":I
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v5

    #@7
    .local v5, "opt":Ljava/lang/String;
    if-eqz v5, :cond_3

    #@9
    .line 1350
    const-string/jumbo v8, "--profileOf"

    #@c
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v8

    #@10
    if-eqz v8, :cond_1

    #@12
    .line 1351
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    .line 1352
    .local v6, "optionData":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@18
    invoke-static {v6}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_0

    #@1e
    .line 1357
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v7

    #@22
    goto :goto_0

    #@23
    .line 1353
    :cond_0
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@25
    const-string/jumbo v9, "Error: no USER_ID specified"

    #@28
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 1354
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@2e
    .line 1355
    return v11

    #@2f
    .line 1359
    .end local v6    # "optionData":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "--managed"

    #@32
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_2

    #@38
    .line 1360
    or-int/lit8 v2, v2, 0x20

    #@3a
    goto :goto_0

    #@3b
    .line 1362
    :cond_2
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    new-instance v9, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v10, "Error: unknown option "

    #@45
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 1363
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@57
    .line 1364
    return v11

    #@58
    .line 1367
    :cond_3
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 1368
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_4

    #@5e
    .line 1369
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@60
    const-string/jumbo v9, "Error: no user name specified."

    #@63
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@66
    .line 1370
    return v11

    #@67
    .line 1372
    :cond_4
    move-object v4, v0

    #@68
    .line 1374
    .local v4, "name":Ljava/lang/String;
    const/4 v3, 0x0

    #@69
    .line 1375
    .local v3, "info":Landroid/content/pm/UserInfo;
    if-gez v7, :cond_5

    #@6b
    .line 1376
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@6d
    invoke-interface {v8, v4, v2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@70
    move-result-object v3

    #@71
    .line 1380
    .local v3, "info":Landroid/content/pm/UserInfo;
    :goto_1
    if-eqz v3, :cond_6

    #@73
    .line 1381
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@75
    new-instance v9, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v10, "Success: created user id "

    #@7d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    #@83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8e
    .line 1382
    return v11

    #@8f
    .line 1378
    .local v3, "info":Landroid/content/pm/UserInfo;
    :cond_5
    iget-object v8, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@91
    invoke-interface {v8, v4, v2, v7}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@94
    move-result-object v3

    #@95
    .local v3, "info":Landroid/content/pm/UserInfo;
    goto :goto_1

    #@96
    .line 1384
    :cond_6
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@98
    const-string/jumbo v9, "Error: couldn\'t create User."

    #@9b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9e
    .line 1385
    return v11

    #@9f
    .line 1387
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    #@a0
    .line 1388
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a2
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@a5
    move-result-object v9

    #@a6
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a9
    .line 1389
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ab
    const-string/jumbo v9, "Error: Could not access the Package Manager.  Is the system running?"

    #@ae
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b1
    .line 1390
    return v11
.end method

.method public runForceDexOpt()I
    .locals 3

    #@0
    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1453
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@6
    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1454
    const/4 v2, 0x0

    #@a
    return v2

    #@b
    .line 1455
    :catch_0
    move-exception v0

    #@c
    .line 1456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@f
    move-result-object v2

    #@10
    throw v2
.end method

.method public runGetMaxUsers()I
    .locals 3

    #@0
    .prologue
    .line 1446
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Maximum supported users: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 1447
    const/4 v0, 0x0

    #@1e
    return v0
.end method

.method public runListUsers()I
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1424
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@5
    move-result-object v0

    #@6
    .line 1426
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@8
    const/4 v6, 0x0

    #@9
    invoke-interface {v5, v6}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    #@c
    move-result-object v4

    #@d
    .line 1427
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_0

    #@f
    .line 1428
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@11
    const-string/jumbo v6, "Error: couldn\'t get users"

    #@14
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17
    .line 1429
    return v9

    #@18
    .line 1431
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v6, "Users:"

    #@1d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 1432
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@24
    move-result v5

    #@25
    if-ge v2, v5, :cond_2

    #@27
    .line 1433
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Landroid/content/pm/UserInfo;

    #@2d
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    #@2f
    const/4 v6, 0x0

    #@30
    invoke-interface {v0, v5, v6}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    const-string/jumbo v3, " running"

    #@39
    .line 1434
    .local v3, "running":Ljava/lang/String;
    :goto_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3b
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v7, "\t"

    #@43
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Landroid/content/pm/UserInfo;

    #@4d
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 1432
    add-int/lit8 v2, v2, 0x1

    #@62
    goto :goto_0

    #@63
    .line 1433
    .end local v3    # "running":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    .restart local v3    # "running":Ljava/lang/String;
    goto :goto_1

    #@67
    .line 1436
    .end local v3    # "running":Ljava/lang/String;
    :cond_2
    return v8

    #@68
    .line 1438
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "i":I
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v1

    #@69
    .line 1439
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6b
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@72
    .line 1440
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@74
    const-string/jumbo v6, "Error: Could not access the Package Manager.  Is the system running?"

    #@77
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7a
    .line 1441
    return v9
.end method

.method public runMovePackage()I
    .locals 8

    #@0
    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1462
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    .line 1463
    .local v4, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "internal"

    #@b
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 1464
    const/4 v4, 0x0

    #@12
    .line 1468
    .end local v4    # "volumeUuid":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@14
    invoke-interface {v5, v2, v4}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    .line 1470
    .local v1, "moveId":I
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@1a
    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@1d
    move-result v3

    #@1e
    .line 1471
    .local v3, "status":I
    :goto_0
    invoke-static {v3}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_1

    #@24
    .line 1472
    const-wide/16 v6, 0x3e8

    #@26
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    #@29
    .line 1473
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@2b
    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@2e
    move-result v3

    #@2f
    goto :goto_0

    #@30
    .line 1476
    :cond_1
    const/16 v5, -0x64

    #@32
    if-ne v3, v5, :cond_2

    #@34
    .line 1477
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@36
    const-string/jumbo v6, "Success"

    #@39
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 1478
    const/4 v5, 0x0

    #@3d
    return v5

    #@3e
    .line 1480
    :cond_2
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@40
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "Failure ["

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    const-string/jumbo v7, "]"

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 1481
    const/4 v5, 0x1

    #@5f
    return v5

    #@60
    .line 1483
    .end local v1    # "moveId":I
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    #@61
    .line 1484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@64
    move-result-object v5

    #@65
    throw v5
.end method

.method public runMovePrimaryStorage()I
    .locals 7

    #@0
    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 1490
    .local v3, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v4, "internal"

    #@7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1491
    const/4 v3, 0x0

    #@e
    .line 1495
    .end local v3    # "volumeUuid":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@10
    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    .line 1497
    .local v1, "moveId":I
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@16
    invoke-interface {v4, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@19
    move-result v2

    #@1a
    .line 1498
    .local v2, "status":I
    :goto_0
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_1

    #@20
    .line 1499
    const-wide/16 v4, 0x3e8

    #@22
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    #@25
    .line 1500
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@27
    invoke-interface {v4, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@2a
    move-result v2

    #@2b
    goto :goto_0

    #@2c
    .line 1503
    :cond_1
    const/16 v4, -0x64

    #@2e
    if-ne v2, v4, :cond_2

    #@30
    .line 1504
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v5, "Success"

    #@35
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1505
    const/4 v4, 0x0

    #@39
    return v4

    #@3a
    .line 1507
    :cond_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "Failure ["

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    const-string/jumbo v6, "]"

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 1508
    const/4 v4, 0x1

    #@5b
    return v4

    #@5c
    .line 1510
    .end local v1    # "moveId":I
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    #@5d
    .line 1511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@60
    move-result-object v4

    #@61
    throw v4
.end method

.method public runRemoveUser()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1396
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1397
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1398
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v5, "Error: no user id specified."

    #@c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 1399
    return v7

    #@10
    .line 1402
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v3

    #@14
    .line 1408
    .local v3, "userId":I
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@16
    invoke-interface {v4, v3}, Landroid/os/IUserManager;->removeUser(I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 1409
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v5, "Success: removed user"

    #@21
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 1410
    const/4 v4, 0x0

    #@25
    return v4

    #@26
    .line 1403
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    #@27
    .line 1404
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Error: user id \'"

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    const-string/jumbo v6, "\' is not a number."

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 1405
    return v7

    #@48
    .line 1412
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "userId":I
    :cond_1
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Error: couldn\'t remove user id "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@61
    .line 1413
    return v7

    #@62
    .line 1415
    :catch_1
    move-exception v1

    #@63
    .line 1416
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@65
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6c
    .line 1417
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6e
    const-string/jumbo v5, "Error: Could not access the Package Manager.  Is the system running?"

    #@71
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@74
    .line 1418
    return v7
.end method
