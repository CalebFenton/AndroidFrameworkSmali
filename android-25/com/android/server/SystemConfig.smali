.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$PermissionEntry;
    }
.end annotation


# static fields
.field private static final ALLOW_ALL:I = -0x1

.field private static final ALLOW_APP_CONFIGS:I = 0x8

.field private static final ALLOW_FEATURES:I = 0x1

.field private static final ALLOW_LIBS:I = 0x2

.field private static final ALLOW_PERMISSIONS:I = 0x4

.field static final TAG:Ljava/lang/String; = "SystemConfig"

.field static sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field final mAllowInDataUsageSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackupTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultVrComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mGlobalGids:[I

.field final mLinkedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mSystemUserBlacklistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemUserWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUnavailableFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 68
    new-instance v1, Landroid/util/SparseArray;

    #@9
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@c
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@e
    .line 73
    new-instance v1, Landroid/util/ArrayMap;

    #@10
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@13
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    #@15
    .line 77
    new-instance v1, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@1c
    .line 81
    new-instance v1, Landroid/util/ArraySet;

    #@1e
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@21
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@23
    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    #@25
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@28
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@2a
    .line 101
    new-instance v1, Landroid/util/ArraySet;

    #@2c
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@2f
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    #@31
    .line 105
    new-instance v1, Landroid/util/ArraySet;

    #@33
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@36
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    #@38
    .line 109
    new-instance v1, Landroid/util/ArraySet;

    #@3a
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@3d
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    #@3f
    .line 113
    new-instance v1, Landroid/util/ArraySet;

    #@41
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@44
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    #@46
    .line 116
    new-instance v1, Landroid/util/ArraySet;

    #@48
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@4b
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    #@4d
    .line 119
    new-instance v1, Landroid/util/ArraySet;

    #@4f
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@52
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    #@54
    .line 122
    new-instance v1, Landroid/util/ArraySet;

    #@56
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@59
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    #@5b
    .line 125
    new-instance v1, Landroid/util/ArraySet;

    #@5d
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@60
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    #@62
    .line 130
    new-instance v1, Landroid/util/ArrayMap;

    #@64
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@67
    .line 129
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    #@69
    .line 200
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@6c
    move-result-object v1

    #@6d
    .line 199
    new-array v2, v6, [Ljava/lang/String;

    #@6f
    .line 200
    const-string/jumbo v3, "etc"

    #@72
    aput-object v3, v2, v5

    #@74
    const-string/jumbo v3, "sysconfig"

    #@77
    aput-object v3, v2, v4

    #@79
    .line 199
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@80
    .line 203
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@83
    move-result-object v1

    #@84
    .line 202
    new-array v2, v6, [Ljava/lang/String;

    #@86
    .line 203
    const-string/jumbo v3, "etc"

    #@89
    aput-object v3, v2, v5

    #@8b
    const-string/jumbo v3, "permissions"

    #@8e
    aput-object v3, v2, v4

    #@90
    .line 202
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@97
    .line 205
    const/16 v0, 0xb

    #@99
    .line 207
    .local v0, "odmPermissionFlag":I
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    #@9c
    move-result-object v1

    #@9d
    .line 206
    new-array v2, v6, [Ljava/lang/String;

    #@9f
    .line 207
    const-string/jumbo v3, "etc"

    #@a2
    aput-object v3, v2, v5

    #@a4
    const-string/jumbo v3, "sysconfig"

    #@a7
    aput-object v3, v2, v4

    #@a9
    .line 206
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@b0
    .line 209
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    #@b3
    move-result-object v1

    #@b4
    .line 208
    new-array v2, v6, [Ljava/lang/String;

    #@b6
    .line 209
    const-string/jumbo v3, "etc"

    #@b9
    aput-object v3, v2, v5

    #@bb
    const-string/jumbo v3, "permissions"

    #@be
    aput-object v3, v2, v4

    #@c0
    .line 208
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@c3
    move-result-object v1

    #@c4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@c7
    .line 212
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    #@ca
    move-result-object v1

    #@cb
    .line 211
    new-array v2, v6, [Ljava/lang/String;

    #@cd
    .line 212
    const-string/jumbo v3, "etc"

    #@d0
    aput-object v3, v2, v5

    #@d2
    const-string/jumbo v3, "sysconfig"

    #@d5
    aput-object v3, v2, v4

    #@d7
    .line 211
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@da
    move-result-object v1

    #@db
    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@de
    .line 214
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    #@e1
    move-result-object v1

    #@e2
    .line 213
    new-array v2, v6, [Ljava/lang/String;

    #@e4
    .line 214
    const-string/jumbo v3, "etc"

    #@e7
    aput-object v3, v2, v5

    #@e9
    const-string/jumbo v3, "permissions"

    #@ec
    aput-object v3, v2, v4

    #@ee
    .line 213
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@f1
    move-result-object v1

    #@f2
    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@f5
    .line 197
    return-void
.end method

.method private addFeature(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/FeatureInfo;

    #@8
    .line 537
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v0, :cond_0

    #@a
    .line 538
    new-instance v0, Landroid/content/pm/FeatureInfo;

    #@c
    .end local v0    # "fi":Landroid/content/pm/FeatureInfo;
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    #@f
    .line 539
    .restart local v0    # "fi":Landroid/content/pm/FeatureInfo;
    iput-object p1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@11
    .line 540
    iput p2, v0, Landroid/content/pm/FeatureInfo;->version:I

    #@13
    .line 541
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 535
    :goto_0
    return-void

    #@19
    .line 543
    :cond_0
    iget v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    #@1b
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v1

    #@1f
    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    #@21
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .locals 2

    #@0
    .prologue
    .line 133
    const-class v1, Lcom/android/server/SystemConfig;

    #@2
    monitor-enter v1

    #@3
    .line 134
    :try_start_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 135
    new-instance v0, Lcom/android/server/SystemConfig;

    #@9
    invoke-direct {v0}, Lcom/android/server/SystemConfig;-><init>()V

    #@c
    sput-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    #@e
    .line 137
    :cond_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 133
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;I)V
    .locals 39
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "permissionFlag"    # I

    #@0
    .prologue
    .line 258
    const/16 v29, 0x0

    #@2
    .line 260
    .local v29, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v29, Ljava/io/FileReader;

    #@4
    .end local v29    # "permReader":Ljava/io/FileReader;
    move-object/from16 v0, v29

    #@6
    move-object/from16 v1, p1

    #@8
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 266
    .local v29, "permReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@e
    move-result v24

    #@f
    .line 269
    .local v24, "lowRam":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@12
    move-result-object v27

    #@13
    .line 270
    .local v27, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v27

    #@15
    move-object/from16 v1, v29

    #@17
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1a
    .line 273
    :cond_0
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d
    move-result v33

    #@1e
    .local v33, "type":I
    const/16 v36, 0x2

    #@20
    move/from16 v0, v33

    #@22
    move/from16 v1, v36

    #@24
    if-eq v0, v1, :cond_1

    #@26
    .line 274
    const/16 v36, 0x1

    #@28
    move/from16 v0, v33

    #@2a
    move/from16 v1, v36

    #@2c
    if-ne v0, v1, :cond_0

    #@2e
    .line 278
    :cond_1
    const/16 v36, 0x2

    #@30
    move/from16 v0, v33

    #@32
    move/from16 v1, v36

    #@34
    if-eq v0, v1, :cond_3

    #@36
    .line 279
    new-instance v36, Lorg/xmlpull/v1/XmlPullParserException;

    #@38
    const-string/jumbo v37, "No start tag found"

    #@3b
    invoke-direct/range {v36 .. v37}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v36
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 515
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    :catch_0
    move-exception v15

    #@40
    .line 516
    .local v15, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v36, "SystemConfig"

    #@43
    const-string/jumbo v37, "Got exception parsing permissions."

    #@46
    move-object/from16 v0, v36

    #@48
    move-object/from16 v1, v37

    #@4a
    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@50
    .line 525
    .end local v15    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@53
    move-result v36

    #@54
    if-eqz v36, :cond_2

    #@56
    .line 526
    const-string/jumbo v36, "android.software.file_based_encryption"

    #@59
    const/16 v37, 0x0

    #@5b
    move-object/from16 v0, p0

    #@5d
    move-object/from16 v1, v36

    #@5f
    move/from16 v2, v37

    #@61
    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    #@64
    .line 527
    const-string/jumbo v36, "android.software.securely_removes_users"

    #@67
    const/16 v37, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, v36

    #@6d
    move/from16 v2, v37

    #@6f
    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    #@72
    .line 530
    :cond_2
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@76
    move-object/from16 v36, v0

    #@78
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7b
    move-result-object v17

    #@7c
    .local v17, "featureName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@7f
    move-result v36

    #@80
    if-eqz v36, :cond_35

    #@82
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v16

    #@86
    check-cast v16, Ljava/lang/String;

    #@88
    .line 531
    .local v16, "featureName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8a
    move-object/from16 v1, v16

    #@8c
    invoke-direct {v0, v1}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    #@8f
    goto :goto_1

    #@90
    .line 261
    .end local v16    # "featureName":Ljava/lang/String;
    .end local v17    # "featureName$iterator":Ljava/util/Iterator;
    .end local v24    # "lowRam":Z
    .end local v29    # "permReader":Ljava/io/FileReader;
    :catch_1
    move-exception v13

    #@91
    .line 262
    .local v13, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v36, "SystemConfig"

    #@94
    new-instance v37, Ljava/lang/StringBuilder;

    #@96
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v38, "Couldn\'t find or open permissions file "

    #@9c
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v37

    #@a0
    move-object/from16 v0, v37

    #@a2
    move-object/from16 v1, p1

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v37

    #@a8
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v37

    #@ac
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 263
    return-void

    #@b0
    .line 282
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .restart local v24    # "lowRam":Z
    .restart local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29    # "permReader":Ljava/io/FileReader;
    .restart local v33    # "type":I
    :cond_3
    :try_start_3
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b3
    move-result-object v36

    #@b4
    const-string/jumbo v37, "permissions"

    #@b7
    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v36

    #@bb
    if-nez v36, :cond_4

    #@bd
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@c0
    move-result-object v36

    #@c1
    const-string/jumbo v37, "config"

    #@c4
    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v36

    #@c8
    if-eqz v36, :cond_5

    #@ca
    .line 287
    :cond_4
    const/16 v36, -0x1

    #@cc
    move/from16 v0, p2

    #@ce
    move/from16 v1, v36

    #@d0
    if-ne v0, v1, :cond_6

    #@d2
    const/4 v3, 0x1

    #@d3
    .line 288
    .local v3, "allowAll":Z
    :goto_2
    and-int/lit8 v36, p2, 0x2

    #@d5
    if-eqz v36, :cond_7

    #@d7
    const/4 v6, 0x1

    #@d8
    .line 289
    .local v6, "allowLibs":Z
    :goto_3
    and-int/lit8 v36, p2, 0x1

    #@da
    if-eqz v36, :cond_8

    #@dc
    const/4 v5, 0x1

    #@dd
    .line 290
    .local v5, "allowFeatures":Z
    :goto_4
    and-int/lit8 v36, p2, 0x4

    #@df
    if-eqz v36, :cond_9

    #@e1
    const/4 v7, 0x1

    #@e2
    .line 291
    .local v7, "allowPermissions":Z
    :goto_5
    and-int/lit8 v36, p2, 0x8

    #@e4
    if-eqz v36, :cond_a

    #@e6
    const/4 v4, 0x1

    #@e7
    .line 293
    .local v4, "allowAppConfigs":Z
    :goto_6
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@ea
    .line 294
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ed
    move-result v36

    #@ee
    const/16 v37, 0x1

    #@f0
    move/from16 v0, v36

    #@f2
    move/from16 v1, v37

    #@f4
    if-ne v0, v1, :cond_b

    #@f6
    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 283
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    :cond_5
    :try_start_4
    new-instance v36, Lorg/xmlpull/v1/XmlPullParserException;

    #@fd
    new-instance v37, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v38, "Unexpected start tag in "

    #@105
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v37

    #@109
    move-object/from16 v0, v37

    #@10b
    move-object/from16 v1, p1

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v37

    #@111
    .line 284
    const-string/jumbo v38, ": found "

    #@114
    .line 283
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v37

    #@118
    .line 284
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@11b
    move-result-object v38

    #@11c
    .line 283
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v37

    #@120
    .line 284
    const-string/jumbo v38, ", expected \'permissions\' or \'config\'"

    #@123
    .line 283
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v37

    #@127
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v37

    #@12b
    invoke-direct/range {v36 .. v37}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v36
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@12f
    .line 517
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    :catch_2
    move-exception v14

    #@130
    .line 518
    .local v14, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v36, "SystemConfig"

    #@133
    const-string/jumbo v37, "Got exception parsing permissions."

    #@136
    move-object/from16 v0, v36

    #@138
    move-object/from16 v1, v37

    #@13a
    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@13d
    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@140
    goto/16 :goto_0

    #@142
    .line 287
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v33    # "type":I
    :cond_6
    const/4 v3, 0x0

    #@143
    .restart local v3    # "allowAll":Z
    goto :goto_2

    #@144
    .line 288
    :cond_7
    const/4 v6, 0x0

    #@145
    .restart local v6    # "allowLibs":Z
    goto :goto_3

    #@146
    .line 289
    :cond_8
    const/4 v5, 0x0

    #@147
    .restart local v5    # "allowFeatures":Z
    goto :goto_4

    #@148
    .line 290
    :cond_9
    const/4 v7, 0x0

    #@149
    .restart local v7    # "allowPermissions":Z
    goto :goto_5

    #@14a
    .line 291
    :cond_a
    const/4 v4, 0x0

    #@14b
    .restart local v4    # "allowAppConfigs":Z
    goto :goto_6

    #@14c
    .line 298
    :cond_b
    :try_start_6
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@14f
    move-result-object v25

    #@150
    .line 299
    .local v25, "name":Ljava/lang/String;
    const-string/jumbo v36, "group"

    #@153
    move-object/from16 v0, v36

    #@155
    move-object/from16 v1, v25

    #@157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15a
    move-result v36

    #@15b
    if-eqz v36, :cond_d

    #@15d
    if-eqz v3, :cond_d

    #@15f
    .line 300
    const-string/jumbo v36, "gid"

    #@162
    const/16 v37, 0x0

    #@164
    move-object/from16 v0, v27

    #@166
    move-object/from16 v1, v37

    #@168
    move-object/from16 v2, v36

    #@16a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16d
    move-result-object v21

    #@16e
    .line 301
    .local v21, "gidStr":Ljava/lang/String;
    if-eqz v21, :cond_c

    #@170
    .line 302
    invoke-static/range {v21 .. v21}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    #@173
    move-result v20

    #@174
    .line 303
    .local v20, "gid":I
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    #@178
    move-object/from16 v36, v0

    #@17a
    move-object/from16 v0, v36

    #@17c
    move/from16 v1, v20

    #@17e
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@181
    move-result-object v36

    #@182
    move-object/from16 v0, v36

    #@184
    move-object/from16 v1, p0

    #@186
    iput-object v0, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    #@188
    .line 309
    .end local v20    # "gid":I
    :goto_7
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@18b
    goto/16 :goto_6

    #@18d
    .line 519
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v21    # "gidStr":Ljava/lang/String;
    .end local v25    # "name":Ljava/lang/String;
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    :catchall_0
    move-exception v36

    #@18e
    .line 520
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@191
    .line 519
    throw v36

    #@192
    .line 305
    .restart local v3    # "allowAll":Z
    .restart local v4    # "allowAppConfigs":Z
    .restart local v5    # "allowFeatures":Z
    .restart local v6    # "allowLibs":Z
    .restart local v7    # "allowPermissions":Z
    .restart local v21    # "gidStr":Ljava/lang/String;
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v33    # "type":I
    :cond_c
    :try_start_7
    const-string/jumbo v36, "SystemConfig"

    #@195
    new-instance v37, Ljava/lang/StringBuilder;

    #@197
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v38, "<group> without gid in "

    #@19d
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v37

    #@1a1
    move-object/from16 v0, v37

    #@1a3
    move-object/from16 v1, p1

    #@1a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v37

    #@1a9
    const-string/jumbo v38, " at "

    #@1ac
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v37

    #@1b0
    .line 306
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1b3
    move-result-object v38

    #@1b4
    .line 305
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v37

    #@1b8
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v37

    #@1bc
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1bf
    goto :goto_7

    #@1c0
    .line 311
    .end local v21    # "gidStr":Ljava/lang/String;
    :cond_d
    const-string/jumbo v36, "permission"

    #@1c3
    move-object/from16 v0, v36

    #@1c5
    move-object/from16 v1, v25

    #@1c7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ca
    move-result v36

    #@1cb
    if-eqz v36, :cond_f

    #@1cd
    if-eqz v7, :cond_f

    #@1cf
    .line 312
    const-string/jumbo v36, "name"

    #@1d2
    const/16 v37, 0x0

    #@1d4
    move-object/from16 v0, v27

    #@1d6
    move-object/from16 v1, v37

    #@1d8
    move-object/from16 v2, v36

    #@1da
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1dd
    move-result-object v28

    #@1de
    .line 313
    .local v28, "perm":Ljava/lang/String;
    if-nez v28, :cond_e

    #@1e0
    .line 314
    const-string/jumbo v36, "SystemConfig"

    #@1e3
    new-instance v37, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string/jumbo v38, "<permission> without name in "

    #@1eb
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v37

    #@1ef
    move-object/from16 v0, v37

    #@1f1
    move-object/from16 v1, p1

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v37

    #@1f7
    const-string/jumbo v38, " at "

    #@1fa
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v37

    #@1fe
    .line 315
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@201
    move-result-object v38

    #@202
    .line 314
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v37

    #@206
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@209
    move-result-object v37

    #@20a
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20d
    .line 316
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@210
    goto/16 :goto_6

    #@212
    .line 319
    :cond_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@215
    move-result-object v28

    #@216
    .line 320
    move-object/from16 v0, p0

    #@218
    move-object/from16 v1, v27

    #@21a
    move-object/from16 v2, v28

    #@21c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@21f
    goto/16 :goto_6

    #@221
    .line 322
    .end local v28    # "perm":Ljava/lang/String;
    :cond_f
    const-string/jumbo v36, "assign-permission"

    #@224
    move-object/from16 v0, v36

    #@226
    move-object/from16 v1, v25

    #@228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22b
    move-result v36

    #@22c
    if-eqz v36, :cond_14

    #@22e
    if-eqz v7, :cond_14

    #@230
    .line 323
    const-string/jumbo v36, "name"

    #@233
    const/16 v37, 0x0

    #@235
    move-object/from16 v0, v27

    #@237
    move-object/from16 v1, v37

    #@239
    move-object/from16 v2, v36

    #@23b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23e
    move-result-object v28

    #@23f
    .line 324
    .restart local v28    # "perm":Ljava/lang/String;
    if-nez v28, :cond_10

    #@241
    .line 325
    const-string/jumbo v36, "SystemConfig"

    #@244
    new-instance v37, Ljava/lang/StringBuilder;

    #@246
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v38, "<assign-permission> without name in "

    #@24c
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v37

    #@250
    move-object/from16 v0, v37

    #@252
    move-object/from16 v1, p1

    #@254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v37

    #@258
    const-string/jumbo v38, " at "

    #@25b
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v37

    #@25f
    .line 326
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@262
    move-result-object v38

    #@263
    .line 325
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v37

    #@267
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26a
    move-result-object v37

    #@26b
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26e
    .line 327
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@271
    goto/16 :goto_6

    #@273
    .line 330
    :cond_10
    const-string/jumbo v36, "uid"

    #@276
    const/16 v37, 0x0

    #@278
    move-object/from16 v0, v27

    #@27a
    move-object/from16 v1, v37

    #@27c
    move-object/from16 v2, v36

    #@27e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@281
    move-result-object v35

    #@282
    .line 331
    .local v35, "uidStr":Ljava/lang/String;
    if-nez v35, :cond_11

    #@284
    .line 332
    const-string/jumbo v36, "SystemConfig"

    #@287
    new-instance v37, Ljava/lang/StringBuilder;

    #@289
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@28c
    const-string/jumbo v38, "<assign-permission> without uid in "

    #@28f
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    move-result-object v37

    #@293
    move-object/from16 v0, v37

    #@295
    move-object/from16 v1, p1

    #@297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v37

    #@29b
    const-string/jumbo v38, " at "

    #@29e
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v37

    #@2a2
    .line 333
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2a5
    move-result-object v38

    #@2a6
    .line 332
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    move-result-object v37

    #@2aa
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ad
    move-result-object v37

    #@2ae
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b1
    .line 334
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b4
    goto/16 :goto_6

    #@2b6
    .line 337
    :cond_11
    invoke-static/range {v35 .. v35}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    #@2b9
    move-result v34

    #@2ba
    .line 338
    .local v34, "uid":I
    if-gez v34, :cond_12

    #@2bc
    .line 339
    const-string/jumbo v36, "SystemConfig"

    #@2bf
    new-instance v37, Ljava/lang/StringBuilder;

    #@2c1
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@2c4
    const-string/jumbo v38, "<assign-permission> with unknown uid \""

    #@2c7
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v37

    #@2cb
    move-object/from16 v0, v37

    #@2cd
    move-object/from16 v1, v35

    #@2cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d2
    move-result-object v37

    #@2d3
    .line 340
    const-string/jumbo v38, "  in "

    #@2d6
    .line 339
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v37

    #@2da
    move-object/from16 v0, v37

    #@2dc
    move-object/from16 v1, p1

    #@2de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v37

    #@2e2
    .line 340
    const-string/jumbo v38, " at "

    #@2e5
    .line 339
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v37

    #@2e9
    .line 341
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2ec
    move-result-object v38

    #@2ed
    .line 339
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v37

    #@2f1
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f4
    move-result-object v37

    #@2f5
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f8
    .line 342
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2fb
    goto/16 :goto_6

    #@2fd
    .line 345
    :cond_12
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@300
    move-result-object v28

    #@301
    .line 346
    move-object/from16 v0, p0

    #@303
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@305
    move-object/from16 v36, v0

    #@307
    move-object/from16 v0, v36

    #@309
    move/from16 v1, v34

    #@30b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@30e
    move-result-object v30

    #@30f
    check-cast v30, Landroid/util/ArraySet;

    #@311
    .line 347
    .local v30, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v30, :cond_13

    #@313
    .line 348
    new-instance v30, Landroid/util/ArraySet;

    #@315
    .end local v30    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    #@318
    .line 349
    .restart local v30    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@31c
    move-object/from16 v36, v0

    #@31e
    move-object/from16 v0, v36

    #@320
    move/from16 v1, v34

    #@322
    move-object/from16 v2, v30

    #@324
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@327
    .line 351
    :cond_13
    move-object/from16 v0, v30

    #@329
    move-object/from16 v1, v28

    #@32b
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@32e
    .line 352
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@331
    goto/16 :goto_6

    #@333
    .line 354
    .end local v28    # "perm":Ljava/lang/String;
    .end local v30    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v34    # "uid":I
    .end local v35    # "uidStr":Ljava/lang/String;
    :cond_14
    const-string/jumbo v36, "library"

    #@336
    move-object/from16 v0, v36

    #@338
    move-object/from16 v1, v25

    #@33a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33d
    move-result v36

    #@33e
    if-eqz v36, :cond_17

    #@340
    if-eqz v6, :cond_17

    #@342
    .line 355
    const-string/jumbo v36, "name"

    #@345
    const/16 v37, 0x0

    #@347
    move-object/from16 v0, v27

    #@349
    move-object/from16 v1, v37

    #@34b
    move-object/from16 v2, v36

    #@34d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@350
    move-result-object v23

    #@351
    .line 356
    .local v23, "lname":Ljava/lang/String;
    const-string/jumbo v36, "file"

    #@354
    const/16 v37, 0x0

    #@356
    move-object/from16 v0, v27

    #@358
    move-object/from16 v1, v37

    #@35a
    move-object/from16 v2, v36

    #@35c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@35f
    move-result-object v22

    #@360
    .line 357
    .local v22, "lfile":Ljava/lang/String;
    if-nez v23, :cond_15

    #@362
    .line 358
    const-string/jumbo v36, "SystemConfig"

    #@365
    new-instance v37, Ljava/lang/StringBuilder;

    #@367
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@36a
    const-string/jumbo v38, "<library> without name in "

    #@36d
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@370
    move-result-object v37

    #@371
    move-object/from16 v0, v37

    #@373
    move-object/from16 v1, p1

    #@375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@378
    move-result-object v37

    #@379
    const-string/jumbo v38, " at "

    #@37c
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37f
    move-result-object v37

    #@380
    .line 359
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@383
    move-result-object v38

    #@384
    .line 358
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@387
    move-result-object v37

    #@388
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38b
    move-result-object v37

    #@38c
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38f
    .line 367
    :goto_8
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@392
    goto/16 :goto_6

    #@394
    .line 360
    :cond_15
    if-nez v22, :cond_16

    #@396
    .line 361
    const-string/jumbo v36, "SystemConfig"

    #@399
    new-instance v37, Ljava/lang/StringBuilder;

    #@39b
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@39e
    const-string/jumbo v38, "<library> without file in "

    #@3a1
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a4
    move-result-object v37

    #@3a5
    move-object/from16 v0, v37

    #@3a7
    move-object/from16 v1, p1

    #@3a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v37

    #@3ad
    const-string/jumbo v38, " at "

    #@3b0
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b3
    move-result-object v37

    #@3b4
    .line 362
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3b7
    move-result-object v38

    #@3b8
    .line 361
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    move-result-object v37

    #@3bc
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bf
    move-result-object v37

    #@3c0
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c3
    goto :goto_8

    #@3c4
    .line 365
    :cond_16
    move-object/from16 v0, p0

    #@3c6
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    #@3c8
    move-object/from16 v36, v0

    #@3ca
    move-object/from16 v0, v36

    #@3cc
    move-object/from16 v1, v23

    #@3ce
    move-object/from16 v2, v22

    #@3d0
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d3
    goto :goto_8

    #@3d4
    .line 370
    .end local v22    # "lfile":Ljava/lang/String;
    .end local v23    # "lname":Ljava/lang/String;
    :cond_17
    const-string/jumbo v36, "feature"

    #@3d7
    move-object/from16 v0, v36

    #@3d9
    move-object/from16 v1, v25

    #@3db
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3de
    move-result v36

    #@3df
    if-eqz v36, :cond_1c

    #@3e1
    if-eqz v5, :cond_1c

    #@3e3
    .line 371
    const-string/jumbo v36, "name"

    #@3e6
    const/16 v37, 0x0

    #@3e8
    move-object/from16 v0, v27

    #@3ea
    move-object/from16 v1, v37

    #@3ec
    move-object/from16 v2, v36

    #@3ee
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3f1
    move-result-object v18

    #@3f2
    .line 372
    .local v18, "fname":Ljava/lang/String;
    const-string/jumbo v36, "version"

    #@3f5
    const/16 v37, 0x0

    #@3f7
    move-object/from16 v0, v27

    #@3f9
    move-object/from16 v1, v36

    #@3fb
    move/from16 v2, v37

    #@3fd
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@400
    move-result v19

    #@401
    .line 374
    .local v19, "fversion":I
    if-nez v24, :cond_19

    #@403
    .line 375
    const/4 v8, 0x1

    #@404
    .line 380
    .local v8, "allowed":Z
    :goto_9
    if-nez v18, :cond_1b

    #@406
    .line 381
    const-string/jumbo v36, "SystemConfig"

    #@409
    new-instance v37, Ljava/lang/StringBuilder;

    #@40b
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@40e
    const-string/jumbo v38, "<feature> without name in "

    #@411
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@414
    move-result-object v37

    #@415
    move-object/from16 v0, v37

    #@417
    move-object/from16 v1, p1

    #@419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41c
    move-result-object v37

    #@41d
    const-string/jumbo v38, " at "

    #@420
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@423
    move-result-object v37

    #@424
    .line 382
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@427
    move-result-object v38

    #@428
    .line 381
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v37

    #@42c
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42f
    move-result-object v37

    #@430
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@433
    .line 386
    :cond_18
    :goto_a
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@436
    goto/16 :goto_6

    #@438
    .line 377
    .end local v8    # "allowed":Z
    :cond_19
    const-string/jumbo v36, "notLowRam"

    #@43b
    const/16 v37, 0x0

    #@43d
    move-object/from16 v0, v27

    #@43f
    move-object/from16 v1, v37

    #@441
    move-object/from16 v2, v36

    #@443
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@446
    move-result-object v26

    #@447
    .line 378
    .local v26, "notLowRam":Ljava/lang/String;
    const-string/jumbo v36, "true"

    #@44a
    move-object/from16 v0, v36

    #@44c
    move-object/from16 v1, v26

    #@44e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@451
    move-result v36

    #@452
    if-eqz v36, :cond_1a

    #@454
    const/4 v8, 0x0

    #@455
    .restart local v8    # "allowed":Z
    goto :goto_9

    #@456
    .end local v8    # "allowed":Z
    :cond_1a
    const/4 v8, 0x1

    #@457
    .restart local v8    # "allowed":Z
    goto :goto_9

    #@458
    .line 383
    .end local v26    # "notLowRam":Ljava/lang/String;
    :cond_1b
    if-eqz v8, :cond_18

    #@45a
    .line 384
    move-object/from16 v0, p0

    #@45c
    move-object/from16 v1, v18

    #@45e
    move/from16 v2, v19

    #@460
    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    #@463
    goto :goto_a

    #@464
    .line 389
    .end local v8    # "allowed":Z
    .end local v18    # "fname":Ljava/lang/String;
    .end local v19    # "fversion":I
    :cond_1c
    const-string/jumbo v36, "unavailable-feature"

    #@467
    move-object/from16 v0, v36

    #@469
    move-object/from16 v1, v25

    #@46b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46e
    move-result v36

    #@46f
    if-eqz v36, :cond_1e

    #@471
    if-eqz v5, :cond_1e

    #@473
    .line 390
    const-string/jumbo v36, "name"

    #@476
    const/16 v37, 0x0

    #@478
    move-object/from16 v0, v27

    #@47a
    move-object/from16 v1, v37

    #@47c
    move-object/from16 v2, v36

    #@47e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@481
    move-result-object v18

    #@482
    .line 391
    .restart local v18    # "fname":Ljava/lang/String;
    if-nez v18, :cond_1d

    #@484
    .line 392
    const-string/jumbo v36, "SystemConfig"

    #@487
    new-instance v37, Ljava/lang/StringBuilder;

    #@489
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@48c
    const-string/jumbo v38, "<unavailable-feature> without name in "

    #@48f
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@492
    move-result-object v37

    #@493
    move-object/from16 v0, v37

    #@495
    move-object/from16 v1, p1

    #@497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49a
    move-result-object v37

    #@49b
    const-string/jumbo v38, " at "

    #@49e
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a1
    move-result-object v37

    #@4a2
    .line 393
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4a5
    move-result-object v38

    #@4a6
    .line 392
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a9
    move-result-object v37

    #@4aa
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ad
    move-result-object v37

    #@4ae
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b1
    .line 397
    :goto_b
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4b4
    goto/16 :goto_6

    #@4b6
    .line 395
    :cond_1d
    move-object/from16 v0, p0

    #@4b8
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@4ba
    move-object/from16 v36, v0

    #@4bc
    move-object/from16 v0, v36

    #@4be
    move-object/from16 v1, v18

    #@4c0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@4c3
    goto :goto_b

    #@4c4
    .line 400
    .end local v18    # "fname":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v36, "allow-in-power-save-except-idle"

    #@4c7
    move-object/from16 v0, v36

    #@4c9
    move-object/from16 v1, v25

    #@4cb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4ce
    move-result v36

    #@4cf
    if-eqz v36, :cond_20

    #@4d1
    if-eqz v3, :cond_20

    #@4d3
    .line 401
    const-string/jumbo v36, "package"

    #@4d6
    const/16 v37, 0x0

    #@4d8
    move-object/from16 v0, v27

    #@4da
    move-object/from16 v1, v37

    #@4dc
    move-object/from16 v2, v36

    #@4de
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e1
    move-result-object v31

    #@4e2
    .line 402
    .local v31, "pkgname":Ljava/lang/String;
    if-nez v31, :cond_1f

    #@4e4
    .line 403
    const-string/jumbo v36, "SystemConfig"

    #@4e7
    new-instance v37, Ljava/lang/StringBuilder;

    #@4e9
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@4ec
    const-string/jumbo v38, "<allow-in-power-save-except-idle> without package in "

    #@4ef
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f2
    move-result-object v37

    #@4f3
    move-object/from16 v0, v37

    #@4f5
    move-object/from16 v1, p1

    #@4f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4fa
    move-result-object v37

    #@4fb
    .line 404
    const-string/jumbo v38, " at "

    #@4fe
    .line 403
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@501
    move-result-object v37

    #@502
    .line 404
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@505
    move-result-object v38

    #@506
    .line 403
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@509
    move-result-object v37

    #@50a
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50d
    move-result-object v37

    #@50e
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@511
    .line 408
    :goto_c
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@514
    goto/16 :goto_6

    #@516
    .line 406
    :cond_1f
    move-object/from16 v0, p0

    #@518
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    #@51a
    move-object/from16 v36, v0

    #@51c
    move-object/from16 v0, v36

    #@51e
    move-object/from16 v1, v31

    #@520
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@523
    goto :goto_c

    #@524
    .line 411
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_20
    const-string/jumbo v36, "allow-in-power-save"

    #@527
    move-object/from16 v0, v36

    #@529
    move-object/from16 v1, v25

    #@52b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52e
    move-result v36

    #@52f
    if-eqz v36, :cond_22

    #@531
    if-eqz v3, :cond_22

    #@533
    .line 412
    const-string/jumbo v36, "package"

    #@536
    const/16 v37, 0x0

    #@538
    move-object/from16 v0, v27

    #@53a
    move-object/from16 v1, v37

    #@53c
    move-object/from16 v2, v36

    #@53e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@541
    move-result-object v31

    #@542
    .line 413
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_21

    #@544
    .line 414
    const-string/jumbo v36, "SystemConfig"

    #@547
    new-instance v37, Ljava/lang/StringBuilder;

    #@549
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@54c
    const-string/jumbo v38, "<allow-in-power-save> without package in "

    #@54f
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v37

    #@553
    move-object/from16 v0, v37

    #@555
    move-object/from16 v1, p1

    #@557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55a
    move-result-object v37

    #@55b
    const-string/jumbo v38, " at "

    #@55e
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@561
    move-result-object v37

    #@562
    .line 415
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@565
    move-result-object v38

    #@566
    .line 414
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@569
    move-result-object v37

    #@56a
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56d
    move-result-object v37

    #@56e
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@571
    .line 419
    :goto_d
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@574
    goto/16 :goto_6

    #@576
    .line 417
    :cond_21
    move-object/from16 v0, p0

    #@578
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    #@57a
    move-object/from16 v36, v0

    #@57c
    move-object/from16 v0, v36

    #@57e
    move-object/from16 v1, v31

    #@580
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@583
    goto :goto_d

    #@584
    .line 422
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_22
    const-string/jumbo v36, "allow-in-data-usage-save"

    #@587
    move-object/from16 v0, v36

    #@589
    move-object/from16 v1, v25

    #@58b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58e
    move-result v36

    #@58f
    if-eqz v36, :cond_24

    #@591
    if-eqz v3, :cond_24

    #@593
    .line 423
    const-string/jumbo v36, "package"

    #@596
    const/16 v37, 0x0

    #@598
    move-object/from16 v0, v27

    #@59a
    move-object/from16 v1, v37

    #@59c
    move-object/from16 v2, v36

    #@59e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a1
    move-result-object v31

    #@5a2
    .line 424
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_23

    #@5a4
    .line 425
    const-string/jumbo v36, "SystemConfig"

    #@5a7
    new-instance v37, Ljava/lang/StringBuilder;

    #@5a9
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@5ac
    const-string/jumbo v38, "<allow-in-data-usage-save> without package in "

    #@5af
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b2
    move-result-object v37

    #@5b3
    move-object/from16 v0, v37

    #@5b5
    move-object/from16 v1, p1

    #@5b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5ba
    move-result-object v37

    #@5bb
    .line 426
    const-string/jumbo v38, " at "

    #@5be
    .line 425
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c1
    move-result-object v37

    #@5c2
    .line 426
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5c5
    move-result-object v38

    #@5c6
    .line 425
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c9
    move-result-object v37

    #@5ca
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5cd
    move-result-object v37

    #@5ce
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5d1
    .line 430
    :goto_e
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5d4
    goto/16 :goto_6

    #@5d6
    .line 428
    :cond_23
    move-object/from16 v0, p0

    #@5d8
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    #@5da
    move-object/from16 v36, v0

    #@5dc
    move-object/from16 v0, v36

    #@5de
    move-object/from16 v1, v31

    #@5e0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5e3
    goto :goto_e

    #@5e4
    .line 433
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_24
    const-string/jumbo v36, "app-link"

    #@5e7
    move-object/from16 v0, v36

    #@5e9
    move-object/from16 v1, v25

    #@5eb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5ee
    move-result v36

    #@5ef
    if-eqz v36, :cond_26

    #@5f1
    if-eqz v4, :cond_26

    #@5f3
    .line 434
    const-string/jumbo v36, "package"

    #@5f6
    const/16 v37, 0x0

    #@5f8
    move-object/from16 v0, v27

    #@5fa
    move-object/from16 v1, v37

    #@5fc
    move-object/from16 v2, v36

    #@5fe
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@601
    move-result-object v31

    #@602
    .line 435
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_25

    #@604
    .line 436
    const-string/jumbo v36, "SystemConfig"

    #@607
    new-instance v37, Ljava/lang/StringBuilder;

    #@609
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@60c
    const-string/jumbo v38, "<app-link> without package in "

    #@60f
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@612
    move-result-object v37

    #@613
    move-object/from16 v0, v37

    #@615
    move-object/from16 v1, p1

    #@617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61a
    move-result-object v37

    #@61b
    const-string/jumbo v38, " at "

    #@61e
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@621
    move-result-object v37

    #@622
    .line 437
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@625
    move-result-object v38

    #@626
    .line 436
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@629
    move-result-object v37

    #@62a
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62d
    move-result-object v37

    #@62e
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@631
    .line 441
    :goto_f
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@634
    goto/16 :goto_6

    #@636
    .line 439
    :cond_25
    move-object/from16 v0, p0

    #@638
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    #@63a
    move-object/from16 v36, v0

    #@63c
    move-object/from16 v0, v36

    #@63e
    move-object/from16 v1, v31

    #@640
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@643
    goto :goto_f

    #@644
    .line 442
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_26
    const-string/jumbo v36, "system-user-whitelisted-app"

    #@647
    move-object/from16 v0, v36

    #@649
    move-object/from16 v1, v25

    #@64b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64e
    move-result v36

    #@64f
    if-eqz v36, :cond_28

    #@651
    if-eqz v4, :cond_28

    #@653
    .line 443
    const-string/jumbo v36, "package"

    #@656
    const/16 v37, 0x0

    #@658
    move-object/from16 v0, v27

    #@65a
    move-object/from16 v1, v37

    #@65c
    move-object/from16 v2, v36

    #@65e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@661
    move-result-object v31

    #@662
    .line 444
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_27

    #@664
    .line 445
    const-string/jumbo v36, "SystemConfig"

    #@667
    new-instance v37, Ljava/lang/StringBuilder;

    #@669
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@66c
    const-string/jumbo v38, "<system-user-whitelisted-app> without package in "

    #@66f
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@672
    move-result-object v37

    #@673
    move-object/from16 v0, v37

    #@675
    move-object/from16 v1, p1

    #@677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67a
    move-result-object v37

    #@67b
    .line 446
    const-string/jumbo v38, " at "

    #@67e
    .line 445
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@681
    move-result-object v37

    #@682
    .line 446
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@685
    move-result-object v38

    #@686
    .line 445
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@689
    move-result-object v37

    #@68a
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68d
    move-result-object v37

    #@68e
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@691
    .line 450
    :goto_10
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@694
    goto/16 :goto_6

    #@696
    .line 448
    :cond_27
    move-object/from16 v0, p0

    #@698
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    #@69a
    move-object/from16 v36, v0

    #@69c
    move-object/from16 v0, v36

    #@69e
    move-object/from16 v1, v31

    #@6a0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6a3
    goto :goto_10

    #@6a4
    .line 451
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_28
    const-string/jumbo v36, "system-user-blacklisted-app"

    #@6a7
    move-object/from16 v0, v36

    #@6a9
    move-object/from16 v1, v25

    #@6ab
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6ae
    move-result v36

    #@6af
    if-eqz v36, :cond_2a

    #@6b1
    if-eqz v4, :cond_2a

    #@6b3
    .line 452
    const-string/jumbo v36, "package"

    #@6b6
    const/16 v37, 0x0

    #@6b8
    move-object/from16 v0, v27

    #@6ba
    move-object/from16 v1, v37

    #@6bc
    move-object/from16 v2, v36

    #@6be
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6c1
    move-result-object v31

    #@6c2
    .line 453
    .restart local v31    # "pkgname":Ljava/lang/String;
    if-nez v31, :cond_29

    #@6c4
    .line 454
    const-string/jumbo v36, "SystemConfig"

    #@6c7
    new-instance v37, Ljava/lang/StringBuilder;

    #@6c9
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@6cc
    const-string/jumbo v38, "<system-user-blacklisted-app without package in "

    #@6cf
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d2
    move-result-object v37

    #@6d3
    move-object/from16 v0, v37

    #@6d5
    move-object/from16 v1, p1

    #@6d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6da
    move-result-object v37

    #@6db
    .line 455
    const-string/jumbo v38, " at "

    #@6de
    .line 454
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e1
    move-result-object v37

    #@6e2
    .line 455
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@6e5
    move-result-object v38

    #@6e6
    .line 454
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e9
    move-result-object v37

    #@6ea
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6ed
    move-result-object v37

    #@6ee
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6f1
    .line 459
    :goto_11
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6f4
    goto/16 :goto_6

    #@6f6
    .line 457
    :cond_29
    move-object/from16 v0, p0

    #@6f8
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    #@6fa
    move-object/from16 v36, v0

    #@6fc
    move-object/from16 v0, v36

    #@6fe
    move-object/from16 v1, v31

    #@700
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@703
    goto :goto_11

    #@704
    .line 460
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v36, "default-enabled-vr-app"

    #@707
    move-object/from16 v0, v36

    #@709
    move-object/from16 v1, v25

    #@70b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70e
    move-result v36

    #@70f
    if-eqz v36, :cond_2d

    #@711
    if-eqz v4, :cond_2d

    #@713
    .line 461
    const-string/jumbo v36, "package"

    #@716
    const/16 v37, 0x0

    #@718
    move-object/from16 v0, v27

    #@71a
    move-object/from16 v1, v37

    #@71c
    move-object/from16 v2, v36

    #@71e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@721
    move-result-object v31

    #@722
    .line 462
    .restart local v31    # "pkgname":Ljava/lang/String;
    const-string/jumbo v36, "class"

    #@725
    const/16 v37, 0x0

    #@727
    move-object/from16 v0, v27

    #@729
    move-object/from16 v1, v37

    #@72b
    move-object/from16 v2, v36

    #@72d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@730
    move-result-object v11

    #@731
    .line 463
    .local v11, "clsname":Ljava/lang/String;
    if-nez v31, :cond_2b

    #@733
    .line 464
    const-string/jumbo v36, "SystemConfig"

    #@736
    new-instance v37, Ljava/lang/StringBuilder;

    #@738
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@73b
    const-string/jumbo v38, "<default-enabled-vr-app without package in "

    #@73e
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@741
    move-result-object v37

    #@742
    move-object/from16 v0, v37

    #@744
    move-object/from16 v1, p1

    #@746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@749
    move-result-object v37

    #@74a
    .line 465
    const-string/jumbo v38, " at "

    #@74d
    .line 464
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@750
    move-result-object v37

    #@751
    .line 465
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@754
    move-result-object v38

    #@755
    .line 464
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@758
    move-result-object v37

    #@759
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75c
    move-result-object v37

    #@75d
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@760
    .line 472
    :goto_12
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@763
    goto/16 :goto_6

    #@765
    .line 466
    :cond_2b
    if-nez v11, :cond_2c

    #@767
    .line 467
    const-string/jumbo v36, "SystemConfig"

    #@76a
    new-instance v37, Ljava/lang/StringBuilder;

    #@76c
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@76f
    const-string/jumbo v38, "<default-enabled-vr-app without class in "

    #@772
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@775
    move-result-object v37

    #@776
    move-object/from16 v0, v37

    #@778
    move-object/from16 v1, p1

    #@77a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77d
    move-result-object v37

    #@77e
    .line 468
    const-string/jumbo v38, " at "

    #@781
    .line 467
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@784
    move-result-object v37

    #@785
    .line 468
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@788
    move-result-object v38

    #@789
    .line 467
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78c
    move-result-object v37

    #@78d
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@790
    move-result-object v37

    #@791
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@794
    goto :goto_12

    #@795
    .line 470
    :cond_2c
    move-object/from16 v0, p0

    #@797
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    #@799
    move-object/from16 v36, v0

    #@79b
    new-instance v37, Landroid/content/ComponentName;

    #@79d
    move-object/from16 v0, v37

    #@79f
    move-object/from16 v1, v31

    #@7a1
    invoke-direct {v0, v1, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7a4
    invoke-virtual/range {v36 .. v37}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@7a7
    goto :goto_12

    #@7a8
    .line 473
    .end local v11    # "clsname":Ljava/lang/String;
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v36, "backup-transport-whitelisted-service"

    #@7ab
    move-object/from16 v0, v36

    #@7ad
    move-object/from16 v1, v25

    #@7af
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b2
    move-result v36

    #@7b3
    if-eqz v36, :cond_30

    #@7b5
    if-eqz v5, :cond_30

    #@7b7
    .line 474
    const-string/jumbo v36, "service"

    #@7ba
    const/16 v37, 0x0

    #@7bc
    move-object/from16 v0, v27

    #@7be
    move-object/from16 v1, v37

    #@7c0
    move-object/from16 v2, v36

    #@7c2
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7c5
    move-result-object v32

    #@7c6
    .line 475
    .local v32, "serviceName":Ljava/lang/String;
    if-nez v32, :cond_2e

    #@7c8
    .line 476
    const-string/jumbo v36, "SystemConfig"

    #@7cb
    new-instance v37, Ljava/lang/StringBuilder;

    #@7cd
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@7d0
    const-string/jumbo v38, "<backup-transport-whitelisted-service> without service in "

    #@7d3
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d6
    move-result-object v37

    #@7d7
    move-object/from16 v0, v37

    #@7d9
    move-object/from16 v1, p1

    #@7db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7de
    move-result-object v37

    #@7df
    .line 477
    const-string/jumbo v38, " at "

    #@7e2
    .line 476
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e5
    move-result-object v37

    #@7e6
    .line 477
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@7e9
    move-result-object v38

    #@7ea
    .line 476
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ed
    move-result-object v37

    #@7ee
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f1
    move-result-object v37

    #@7f2
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f5
    .line 489
    :goto_13
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7f8
    goto/16 :goto_6

    #@7fa
    .line 479
    :cond_2e
    invoke-static/range {v32 .. v32}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@7fd
    move-result-object v12

    #@7fe
    .line 480
    .local v12, "cn":Landroid/content/ComponentName;
    if-nez v12, :cond_2f

    #@800
    .line 481
    const-string/jumbo v36, "SystemConfig"

    #@803
    .line 482
    new-instance v37, Ljava/lang/StringBuilder;

    #@805
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@808
    const-string/jumbo v38, "<backup-transport-whitelisted-service> with invalid service name "

    #@80b
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80e
    move-result-object v37

    #@80f
    move-object/from16 v0, v37

    #@811
    move-object/from16 v1, v32

    #@813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@816
    move-result-object v37

    #@817
    .line 483
    const-string/jumbo v38, " in "

    #@81a
    .line 482
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81d
    move-result-object v37

    #@81e
    move-object/from16 v0, v37

    #@820
    move-object/from16 v1, p1

    #@822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@825
    move-result-object v37

    #@826
    .line 484
    const-string/jumbo v38, " at "

    #@829
    .line 482
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82c
    move-result-object v37

    #@82d
    .line 484
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@830
    move-result-object v38

    #@831
    .line 482
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@834
    move-result-object v37

    #@835
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@838
    move-result-object v37

    #@839
    .line 481
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@83c
    goto :goto_13

    #@83d
    .line 486
    :cond_2f
    move-object/from16 v0, p0

    #@83f
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    #@841
    move-object/from16 v36, v0

    #@843
    move-object/from16 v0, v36

    #@845
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@848
    goto :goto_13

    #@849
    .line 490
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v32    # "serviceName":Ljava/lang/String;
    :cond_30
    const-string/jumbo v36, "disabled-until-used-preinstalled-carrier-associated-app"

    #@84c
    move-object/from16 v0, v36

    #@84e
    move-object/from16 v1, v25

    #@850
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@853
    move-result v36

    #@854
    if-eqz v36, :cond_34

    #@856
    if-eqz v4, :cond_34

    #@858
    .line 492
    const-string/jumbo v36, "package"

    #@85b
    const/16 v37, 0x0

    #@85d
    move-object/from16 v0, v27

    #@85f
    move-object/from16 v1, v37

    #@861
    move-object/from16 v2, v36

    #@863
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@866
    move-result-object v31

    #@867
    .line 493
    .restart local v31    # "pkgname":Ljava/lang/String;
    const-string/jumbo v36, "carrierAppPackage"

    #@86a
    const/16 v37, 0x0

    #@86c
    move-object/from16 v0, v27

    #@86e
    move-object/from16 v1, v37

    #@870
    move-object/from16 v2, v36

    #@872
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@875
    move-result-object v10

    #@876
    .line 494
    .local v10, "carrierPkgname":Ljava/lang/String;
    if-eqz v31, :cond_31

    #@878
    if-nez v10, :cond_32

    #@87a
    .line 495
    :cond_31
    const-string/jumbo v36, "SystemConfig"

    #@87d
    new-instance v37, Ljava/lang/StringBuilder;

    #@87f
    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    #@882
    const-string/jumbo v38, "<disabled-until-used-preinstalled-carrier-associated-app without package or carrierAppPackage in "

    #@885
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@888
    move-result-object v37

    #@889
    move-object/from16 v0, v37

    #@88b
    move-object/from16 v1, p1

    #@88d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@890
    move-result-object v37

    #@891
    .line 496
    const-string/jumbo v38, " at "

    #@894
    .line 495
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@897
    move-result-object v37

    #@898
    .line 497
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@89b
    move-result-object v38

    #@89c
    .line 495
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89f
    move-result-object v37

    #@8a0
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a3
    move-result-object v37

    #@8a4
    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8a7
    .line 509
    :goto_14
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@8aa
    goto/16 :goto_6

    #@8ac
    .line 500
    :cond_32
    move-object/from16 v0, p0

    #@8ae
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    #@8b0
    move-object/from16 v36, v0

    #@8b2
    move-object/from16 v0, v36

    #@8b4
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b7
    move-result-object v9

    #@8b8
    check-cast v9, Ljava/util/List;

    #@8ba
    .line 502
    .local v9, "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_33

    #@8bc
    .line 503
    new-instance v9, Ljava/util/ArrayList;

    #@8be
    .end local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@8c1
    .line 504
    .restart local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@8c3
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    #@8c5
    move-object/from16 v36, v0

    #@8c7
    move-object/from16 v0, v36

    #@8c9
    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8cc
    .line 507
    :cond_33
    move-object/from16 v0, v31

    #@8ce
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8d1
    goto :goto_14

    #@8d2
    .line 511
    .end local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "carrierPkgname":Ljava/lang/String;
    .end local v31    # "pkgname":Ljava/lang/String;
    :cond_34
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@8d5
    goto/16 :goto_6

    #@8d7
    .line 257
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v25    # "name":Ljava/lang/String;
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "type":I
    .restart local v17    # "featureName$iterator":Ljava/util/Iterator;
    :cond_35
    return-void
.end method

.method private removeFeature(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 549
    const-string/jumbo v0, "SystemConfig"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Removed unavailable feature "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 547
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllowInDataUsageSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getAllowInPowerSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getAvailableFeatures()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getBackupTransportWhitelist()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getDefaultVrComponents()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getGlobalGids()[I
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    #@2
    return-object v0
.end method

.method public getLinkedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getPermissions()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getSharedLibraries()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getSystemPermissions()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method public getSystemUserBlacklistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getSystemUserWhitelistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x3

    #@2
    .line 555
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v7, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 556
    new-instance v7, Ljava/lang/IllegalStateException;

    #@c
    new-instance v8, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v9, "Duplicate permission definition for "

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v7

    #@24
    .line 559
    :cond_0
    const-string/jumbo v7, "perUser"

    #@27
    const/4 v8, 0x0

    #@28
    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@2b
    move-result v3

    #@2c
    .line 560
    .local v3, "perUser":Z
    new-instance v4, Lcom/android/server/SystemConfig$PermissionEntry;

    #@2e
    invoke-direct {v4, p2, v3}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    #@31
    .line 561
    .local v4, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v7, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 563
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@39
    move-result v2

    #@3a
    .line 565
    .local v2, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3d
    move-result v6

    #@3e
    .local v6, "type":I
    const/4 v7, 0x1

    #@3f
    if-eq v6, v7, :cond_5

    #@41
    .line 566
    if-ne v6, v10, :cond_2

    #@43
    .line 567
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@46
    move-result v7

    #@47
    if-le v7, v2, :cond_5

    #@49
    .line 568
    :cond_2
    if-eq v6, v10, :cond_1

    #@4b
    .line 569
    const/4 v7, 0x4

    #@4c
    if-eq v6, v7, :cond_1

    #@4e
    .line 573
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 574
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    #@55
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_3

    #@5b
    .line 575
    const-string/jumbo v7, "gid"

    #@5e
    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 576
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@64
    .line 577
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    #@67
    move-result v0

    #@68
    .line 578
    .local v0, "gid":I
    iget-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    #@6a
    invoke-static {v7, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@6d
    move-result-object v7

    #@6e
    iput-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    #@70
    .line 584
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@73
    goto :goto_0

    #@74
    .line 580
    .restart local v1    # "gidStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "SystemConfig"

    #@77
    new-instance v8, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v9, "<group> without gid at "

    #@7f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    .line 581
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    .line 580
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    goto :goto_1

    #@93
    .line 554
    .end local v1    # "gidStr":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method readPermissions(Ljava/io/File;I)V
    .locals 8
    .param p1, "libraryDir"    # Ljava/io/File;
    .param p2, "permissionFlag"    # I

    #@0
    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 225
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_2

    #@12
    .line 226
    const-string/jumbo v2, "SystemConfig"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Directory "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, " cannot be read"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 227
    return-void

    #@34
    .line 220
    :cond_0
    const/4 v2, -0x1

    #@35
    if-ne p2, v2, :cond_1

    #@37
    .line 221
    const-string/jumbo v2, "SystemConfig"

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v4, "No directory "

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    const-string/jumbo v4, ", skipping"

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 223
    :cond_1
    return-void

    #@59
    .line 231
    :cond_2
    const/4 v1, 0x0

    #@5a
    .line 232
    .local v1, "platformFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@5d
    move-result-object v3

    #@5e
    const/4 v2, 0x0

    #@5f
    array-length v4, v3

    #@60
    .end local v1    # "platformFile":Ljava/io/File;
    :goto_0
    if-ge v2, v4, :cond_6

    #@62
    aget-object v0, v3, v2

    #@64
    .line 234
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    const-string/jumbo v6, "etc/permissions/platform.xml"

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_3

    #@71
    .line 235
    move-object v1, v0

    #@72
    .line 232
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@74
    goto :goto_0

    #@75
    .line 239
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    const-string/jumbo v6, ".xml"

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7f
    move-result v5

    #@80
    if-nez v5, :cond_4

    #@82
    .line 240
    const-string/jumbo v5, "SystemConfig"

    #@85
    new-instance v6, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v7, "Non-xml file "

    #@8d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    const-string/jumbo v7, " in "

    #@98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v6

    #@a0
    const-string/jumbo v7, " directory, ignoring"

    #@a3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    goto :goto_1

    #@af
    .line 243
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    #@b2
    move-result v5

    #@b3
    if-nez v5, :cond_5

    #@b5
    .line 244
    const-string/jumbo v5, "SystemConfig"

    #@b8
    new-instance v6, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v7, "Permissions library file "

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    const-string/jumbo v7, " cannot be read"

    #@cb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v6

    #@cf
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v6

    #@d3
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    goto :goto_1

    #@d7
    .line 248
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    #@da
    goto :goto_1

    #@db
    .line 252
    .end local v0    # "f":Ljava/io/File;
    :cond_6
    if-eqz v1, :cond_7

    #@dd
    .line 253
    invoke-direct {p0, v1, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    #@e0
    .line 217
    :cond_7
    return-void
.end method
