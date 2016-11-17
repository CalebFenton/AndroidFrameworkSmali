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
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 66
    new-instance v1, Landroid/util/SparseArray;

    #@9
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@c
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@e
    .line 71
    new-instance v1, Landroid/util/ArrayMap;

    #@10
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@13
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    #@15
    .line 75
    new-instance v1, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@1c
    .line 79
    new-instance v1, Landroid/util/ArraySet;

    #@1e
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@21
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@23
    .line 94
    new-instance v1, Landroid/util/ArrayMap;

    #@25
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@28
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@2a
    .line 99
    new-instance v1, Landroid/util/ArraySet;

    #@2c
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@2f
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    #@31
    .line 103
    new-instance v1, Landroid/util/ArraySet;

    #@33
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@36
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    #@38
    .line 107
    new-instance v1, Landroid/util/ArraySet;

    #@3a
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@3d
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    #@3f
    .line 111
    new-instance v1, Landroid/util/ArraySet;

    #@41
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@44
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    #@46
    .line 114
    new-instance v1, Landroid/util/ArraySet;

    #@48
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@4b
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    #@4d
    .line 117
    new-instance v1, Landroid/util/ArraySet;

    #@4f
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@52
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    #@54
    .line 120
    new-instance v1, Landroid/util/ArraySet;

    #@56
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@59
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    #@5b
    .line 123
    new-instance v1, Landroid/util/ArraySet;

    #@5d
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@60
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    #@62
    .line 189
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@65
    move-result-object v1

    #@66
    .line 188
    new-array v2, v6, [Ljava/lang/String;

    #@68
    .line 189
    const-string/jumbo v3, "etc"

    #@6b
    aput-object v3, v2, v5

    #@6d
    const-string/jumbo v3, "sysconfig"

    #@70
    aput-object v3, v2, v4

    #@72
    .line 188
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@79
    .line 192
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@7c
    move-result-object v1

    #@7d
    .line 191
    new-array v2, v6, [Ljava/lang/String;

    #@7f
    .line 192
    const-string/jumbo v3, "etc"

    #@82
    aput-object v3, v2, v5

    #@84
    const-string/jumbo v3, "permissions"

    #@87
    aput-object v3, v2, v4

    #@89
    .line 191
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@90
    .line 194
    const/16 v0, 0xb

    #@92
    .line 196
    .local v0, "odmPermissionFlag":I
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    #@95
    move-result-object v1

    #@96
    .line 195
    new-array v2, v6, [Ljava/lang/String;

    #@98
    .line 196
    const-string/jumbo v3, "etc"

    #@9b
    aput-object v3, v2, v5

    #@9d
    const-string/jumbo v3, "sysconfig"

    #@a0
    aput-object v3, v2, v4

    #@a2
    .line 195
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@a9
    .line 198
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    #@ac
    move-result-object v1

    #@ad
    .line 197
    new-array v2, v6, [Ljava/lang/String;

    #@af
    .line 198
    const-string/jumbo v3, "etc"

    #@b2
    aput-object v3, v2, v5

    #@b4
    const-string/jumbo v3, "permissions"

    #@b7
    aput-object v3, v2, v4

    #@b9
    .line 197
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@c0
    .line 201
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    #@c3
    move-result-object v1

    #@c4
    .line 200
    new-array v2, v6, [Ljava/lang/String;

    #@c6
    .line 201
    const-string/jumbo v3, "etc"

    #@c9
    aput-object v3, v2, v5

    #@cb
    const-string/jumbo v3, "sysconfig"

    #@ce
    aput-object v3, v2, v4

    #@d0
    .line 200
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@d7
    .line 203
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    #@da
    move-result-object v1

    #@db
    .line 202
    new-array v2, v6, [Ljava/lang/String;

    #@dd
    .line 203
    const-string/jumbo v3, "etc"

    #@e0
    aput-object v3, v2, v5

    #@e2
    const-string/jumbo v3, "permissions"

    #@e5
    aput-object v3, v2, v4

    #@e7
    .line 202
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    #@ee
    .line 186
    return-void
.end method

.method private addFeature(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/FeatureInfo;

    #@8
    .line 506
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v0, :cond_0

    #@a
    .line 507
    new-instance v0, Landroid/content/pm/FeatureInfo;

    #@c
    .end local v0    # "fi":Landroid/content/pm/FeatureInfo;
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    #@f
    .line 508
    .restart local v0    # "fi":Landroid/content/pm/FeatureInfo;
    iput-object p1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@11
    .line 509
    iput p2, v0, Landroid/content/pm/FeatureInfo;->version:I

    #@13
    .line 510
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 504
    :goto_0
    return-void

    #@19
    .line 512
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
    .line 126
    const-class v1, Lcom/android/server/SystemConfig;

    #@2
    monitor-enter v1

    #@3
    .line 127
    :try_start_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 128
    new-instance v0, Lcom/android/server/SystemConfig;

    #@9
    invoke-direct {v0}, Lcom/android/server/SystemConfig;-><init>()V

    #@c
    sput-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    #@e
    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 126
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;I)V
    .locals 37
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "permissionFlag"    # I

    #@0
    .prologue
    .line 247
    const/16 v27, 0x0

    #@2
    .line 249
    .local v27, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v27, Ljava/io/FileReader;

    #@4
    .end local v27    # "permReader":Ljava/io/FileReader;
    move-object/from16 v0, v27

    #@6
    move-object/from16 v1, p1

    #@8
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 255
    .local v27, "permReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@e
    move-result v22

    #@f
    .line 258
    .local v22, "lowRam":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@12
    move-result-object v25

    #@13
    .line 259
    .local v25, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v25

    #@15
    move-object/from16 v1, v27

    #@17
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1a
    .line 262
    :cond_0
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d
    move-result v31

    #@1e
    .local v31, "type":I
    const/16 v34, 0x2

    #@20
    move/from16 v0, v31

    #@22
    move/from16 v1, v34

    #@24
    if-eq v0, v1, :cond_1

    #@26
    .line 263
    const/16 v34, 0x1

    #@28
    move/from16 v0, v31

    #@2a
    move/from16 v1, v34

    #@2c
    if-ne v0, v1, :cond_0

    #@2e
    .line 267
    :cond_1
    const/16 v34, 0x2

    #@30
    move/from16 v0, v31

    #@32
    move/from16 v1, v34

    #@34
    if-eq v0, v1, :cond_3

    #@36
    .line 268
    new-instance v34, Lorg/xmlpull/v1/XmlPullParserException;

    #@38
    const-string/jumbo v35, "No start tag found"

    #@3b
    invoke-direct/range {v34 .. v35}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v34
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 484
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "type":I
    :catch_0
    move-exception v13

    #@40
    .line 485
    .local v13, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v34, "SystemConfig"

    #@43
    const-string/jumbo v35, "Got exception parsing permissions."

    #@46
    move-object/from16 v0, v34

    #@48
    move-object/from16 v1, v35

    #@4a
    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 489
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@50
    .line 494
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@53
    move-result v34

    #@54
    if-eqz v34, :cond_2

    #@56
    .line 495
    const-string/jumbo v34, "android.software.file_based_encryption"

    #@59
    const/16 v35, 0x0

    #@5b
    move-object/from16 v0, p0

    #@5d
    move-object/from16 v1, v34

    #@5f
    move/from16 v2, v35

    #@61
    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    #@64
    .line 496
    const-string/jumbo v34, "android.software.securely_removes_users"

    #@67
    const/16 v35, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, v34

    #@6d
    move/from16 v2, v35

    #@6f
    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    #@72
    .line 499
    :cond_2
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@76
    move-object/from16 v34, v0

    #@78
    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7b
    move-result-object v15

    #@7c
    .local v15, "featureName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@7f
    move-result v34

    #@80
    if-eqz v34, :cond_31

    #@82
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v14

    #@86
    check-cast v14, Ljava/lang/String;

    #@88
    .line 500
    .local v14, "featureName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8a
    invoke-direct {v0, v14}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    #@8d
    goto :goto_1

    #@8e
    .line 250
    .end local v14    # "featureName":Ljava/lang/String;
    .end local v15    # "featureName$iterator":Ljava/util/Iterator;
    .end local v22    # "lowRam":Z
    .end local v27    # "permReader":Ljava/io/FileReader;
    :catch_1
    move-exception v11

    #@8f
    .line 251
    .local v11, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v34, "SystemConfig"

    #@92
    new-instance v35, Ljava/lang/StringBuilder;

    #@94
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v36, "Couldn\'t find or open permissions file "

    #@9a
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v35

    #@9e
    move-object/from16 v0, v35

    #@a0
    move-object/from16 v1, p1

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v35

    #@a6
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v35

    #@aa
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 252
    return-void

    #@ae
    .line 271
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .restart local v22    # "lowRam":Z
    .restart local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27    # "permReader":Ljava/io/FileReader;
    .restart local v31    # "type":I
    :cond_3
    :try_start_3
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b1
    move-result-object v34

    #@b2
    const-string/jumbo v35, "permissions"

    #@b5
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v34

    #@b9
    if-nez v34, :cond_4

    #@bb
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@be
    move-result-object v34

    #@bf
    const-string/jumbo v35, "config"

    #@c2
    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v34

    #@c6
    if-eqz v34, :cond_5

    #@c8
    .line 276
    :cond_4
    const/16 v34, -0x1

    #@ca
    move/from16 v0, p2

    #@cc
    move/from16 v1, v34

    #@ce
    if-ne v0, v1, :cond_6

    #@d0
    const/4 v3, 0x1

    #@d1
    .line 277
    .local v3, "allowAll":Z
    :goto_2
    and-int/lit8 v34, p2, 0x2

    #@d3
    if-eqz v34, :cond_7

    #@d5
    const/4 v6, 0x1

    #@d6
    .line 278
    .local v6, "allowLibs":Z
    :goto_3
    and-int/lit8 v34, p2, 0x1

    #@d8
    if-eqz v34, :cond_8

    #@da
    const/4 v5, 0x1

    #@db
    .line 279
    .local v5, "allowFeatures":Z
    :goto_4
    and-int/lit8 v34, p2, 0x4

    #@dd
    if-eqz v34, :cond_9

    #@df
    const/4 v7, 0x1

    #@e0
    .line 280
    .local v7, "allowPermissions":Z
    :goto_5
    and-int/lit8 v34, p2, 0x8

    #@e2
    if-eqz v34, :cond_a

    #@e4
    const/4 v4, 0x1

    #@e5
    .line 282
    .local v4, "allowAppConfigs":Z
    :goto_6
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@e8
    .line 283
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@eb
    move-result v34

    #@ec
    const/16 v35, 0x1

    #@ee
    move/from16 v0, v34

    #@f0
    move/from16 v1, v35

    #@f2
    if-ne v0, v1, :cond_b

    #@f4
    .line 489
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f7
    goto/16 :goto_0

    #@f9
    .line 272
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    :cond_5
    :try_start_4
    new-instance v34, Lorg/xmlpull/v1/XmlPullParserException;

    #@fb
    new-instance v35, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v36, "Unexpected start tag in "

    #@103
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v35

    #@107
    move-object/from16 v0, v35

    #@109
    move-object/from16 v1, p1

    #@10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v35

    #@10f
    .line 273
    const-string/jumbo v36, ": found "

    #@112
    .line 272
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v35

    #@116
    .line 273
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@119
    move-result-object v36

    #@11a
    .line 272
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v35

    #@11e
    .line 273
    const-string/jumbo v36, ", expected \'permissions\' or \'config\'"

    #@121
    .line 272
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v35

    #@125
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v35

    #@129
    invoke-direct/range {v34 .. v35}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@12c
    throw v34
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@12d
    .line 486
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "type":I
    :catch_2
    move-exception v12

    #@12e
    .line 487
    .local v12, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v34, "SystemConfig"

    #@131
    const-string/jumbo v35, "Got exception parsing permissions."

    #@134
    move-object/from16 v0, v34

    #@136
    move-object/from16 v1, v35

    #@138
    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@13b
    .line 489
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13e
    goto/16 :goto_0

    #@140
    .line 276
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "type":I
    :cond_6
    const/4 v3, 0x0

    #@141
    .restart local v3    # "allowAll":Z
    goto :goto_2

    #@142
    .line 277
    :cond_7
    const/4 v6, 0x0

    #@143
    .restart local v6    # "allowLibs":Z
    goto :goto_3

    #@144
    .line 278
    :cond_8
    const/4 v5, 0x0

    #@145
    .restart local v5    # "allowFeatures":Z
    goto :goto_4

    #@146
    .line 279
    :cond_9
    const/4 v7, 0x0

    #@147
    .restart local v7    # "allowPermissions":Z
    goto :goto_5

    #@148
    .line 280
    :cond_a
    const/4 v4, 0x0

    #@149
    .restart local v4    # "allowAppConfigs":Z
    goto :goto_6

    #@14a
    .line 287
    :cond_b
    :try_start_6
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@14d
    move-result-object v23

    #@14e
    .line 288
    .local v23, "name":Ljava/lang/String;
    const-string/jumbo v34, "group"

    #@151
    move-object/from16 v0, v34

    #@153
    move-object/from16 v1, v23

    #@155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@158
    move-result v34

    #@159
    if-eqz v34, :cond_d

    #@15b
    if-eqz v3, :cond_d

    #@15d
    .line 289
    const-string/jumbo v34, "gid"

    #@160
    const/16 v35, 0x0

    #@162
    move-object/from16 v0, v25

    #@164
    move-object/from16 v1, v35

    #@166
    move-object/from16 v2, v34

    #@168
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16b
    move-result-object v19

    #@16c
    .line 290
    .local v19, "gidStr":Ljava/lang/String;
    if-eqz v19, :cond_c

    #@16e
    .line 291
    invoke-static/range {v19 .. v19}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    #@171
    move-result v18

    #@172
    .line 292
    .local v18, "gid":I
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    #@176
    move-object/from16 v34, v0

    #@178
    move-object/from16 v0, v34

    #@17a
    move/from16 v1, v18

    #@17c
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@17f
    move-result-object v34

    #@180
    move-object/from16 v0, v34

    #@182
    move-object/from16 v1, p0

    #@184
    iput-object v0, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    #@186
    .line 298
    .end local v18    # "gid":I
    :goto_7
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@189
    goto/16 :goto_6

    #@18b
    .line 488
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v19    # "gidStr":Ljava/lang/String;
    .end local v23    # "name":Ljava/lang/String;
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "type":I
    :catchall_0
    move-exception v34

    #@18c
    .line 489
    invoke-static/range {v27 .. v27}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@18f
    .line 488
    throw v34

    #@190
    .line 294
    .restart local v3    # "allowAll":Z
    .restart local v4    # "allowAppConfigs":Z
    .restart local v5    # "allowFeatures":Z
    .restart local v6    # "allowLibs":Z
    .restart local v7    # "allowPermissions":Z
    .restart local v19    # "gidStr":Ljava/lang/String;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31    # "type":I
    :cond_c
    :try_start_7
    const-string/jumbo v34, "SystemConfig"

    #@193
    new-instance v35, Ljava/lang/StringBuilder;

    #@195
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v36, "<group> without gid in "

    #@19b
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v35

    #@19f
    move-object/from16 v0, v35

    #@1a1
    move-object/from16 v1, p1

    #@1a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v35

    #@1a7
    const-string/jumbo v36, " at "

    #@1aa
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v35

    #@1ae
    .line 295
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1b1
    move-result-object v36

    #@1b2
    .line 294
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v35

    #@1b6
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v35

    #@1ba
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1bd
    goto :goto_7

    #@1be
    .line 300
    .end local v19    # "gidStr":Ljava/lang/String;
    :cond_d
    const-string/jumbo v34, "permission"

    #@1c1
    move-object/from16 v0, v34

    #@1c3
    move-object/from16 v1, v23

    #@1c5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c8
    move-result v34

    #@1c9
    if-eqz v34, :cond_f

    #@1cb
    if-eqz v7, :cond_f

    #@1cd
    .line 301
    const-string/jumbo v34, "name"

    #@1d0
    const/16 v35, 0x0

    #@1d2
    move-object/from16 v0, v25

    #@1d4
    move-object/from16 v1, v35

    #@1d6
    move-object/from16 v2, v34

    #@1d8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1db
    move-result-object v26

    #@1dc
    .line 302
    .local v26, "perm":Ljava/lang/String;
    if-nez v26, :cond_e

    #@1de
    .line 303
    const-string/jumbo v34, "SystemConfig"

    #@1e1
    new-instance v35, Ljava/lang/StringBuilder;

    #@1e3
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@1e6
    const-string/jumbo v36, "<permission> without name in "

    #@1e9
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v35

    #@1ed
    move-object/from16 v0, v35

    #@1ef
    move-object/from16 v1, p1

    #@1f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v35

    #@1f5
    const-string/jumbo v36, " at "

    #@1f8
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v35

    #@1fc
    .line 304
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@1ff
    move-result-object v36

    #@200
    .line 303
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v35

    #@204
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v35

    #@208
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20b
    .line 305
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20e
    goto/16 :goto_6

    #@210
    .line 308
    :cond_e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@213
    move-result-object v26

    #@214
    .line 309
    move-object/from16 v0, p0

    #@216
    move-object/from16 v1, v25

    #@218
    move-object/from16 v2, v26

    #@21a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@21d
    goto/16 :goto_6

    #@21f
    .line 311
    .end local v26    # "perm":Ljava/lang/String;
    :cond_f
    const-string/jumbo v34, "assign-permission"

    #@222
    move-object/from16 v0, v34

    #@224
    move-object/from16 v1, v23

    #@226
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@229
    move-result v34

    #@22a
    if-eqz v34, :cond_14

    #@22c
    if-eqz v7, :cond_14

    #@22e
    .line 312
    const-string/jumbo v34, "name"

    #@231
    const/16 v35, 0x0

    #@233
    move-object/from16 v0, v25

    #@235
    move-object/from16 v1, v35

    #@237
    move-object/from16 v2, v34

    #@239
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23c
    move-result-object v26

    #@23d
    .line 313
    .restart local v26    # "perm":Ljava/lang/String;
    if-nez v26, :cond_10

    #@23f
    .line 314
    const-string/jumbo v34, "SystemConfig"

    #@242
    new-instance v35, Ljava/lang/StringBuilder;

    #@244
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@247
    const-string/jumbo v36, "<assign-permission> without name in "

    #@24a
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v35

    #@24e
    move-object/from16 v0, v35

    #@250
    move-object/from16 v1, p1

    #@252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v35

    #@256
    const-string/jumbo v36, " at "

    #@259
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v35

    #@25d
    .line 315
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@260
    move-result-object v36

    #@261
    .line 314
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v35

    #@265
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@268
    move-result-object v35

    #@269
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26c
    .line 316
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@26f
    goto/16 :goto_6

    #@271
    .line 319
    :cond_10
    const-string/jumbo v34, "uid"

    #@274
    const/16 v35, 0x0

    #@276
    move-object/from16 v0, v25

    #@278
    move-object/from16 v1, v35

    #@27a
    move-object/from16 v2, v34

    #@27c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27f
    move-result-object v33

    #@280
    .line 320
    .local v33, "uidStr":Ljava/lang/String;
    if-nez v33, :cond_11

    #@282
    .line 321
    const-string/jumbo v34, "SystemConfig"

    #@285
    new-instance v35, Ljava/lang/StringBuilder;

    #@287
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@28a
    const-string/jumbo v36, "<assign-permission> without uid in "

    #@28d
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v35

    #@291
    move-object/from16 v0, v35

    #@293
    move-object/from16 v1, p1

    #@295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v35

    #@299
    const-string/jumbo v36, " at "

    #@29c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v35

    #@2a0
    .line 322
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2a3
    move-result-object v36

    #@2a4
    .line 321
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v35

    #@2a8
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ab
    move-result-object v35

    #@2ac
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2af
    .line 323
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b2
    goto/16 :goto_6

    #@2b4
    .line 326
    :cond_11
    invoke-static/range {v33 .. v33}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    #@2b7
    move-result v32

    #@2b8
    .line 327
    .local v32, "uid":I
    if-gez v32, :cond_12

    #@2ba
    .line 328
    const-string/jumbo v34, "SystemConfig"

    #@2bd
    new-instance v35, Ljava/lang/StringBuilder;

    #@2bf
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@2c2
    const-string/jumbo v36, "<assign-permission> with unknown uid \""

    #@2c5
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v35

    #@2c9
    move-object/from16 v0, v35

    #@2cb
    move-object/from16 v1, v33

    #@2cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v35

    #@2d1
    .line 329
    const-string/jumbo v36, "  in "

    #@2d4
    .line 328
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v35

    #@2d8
    move-object/from16 v0, v35

    #@2da
    move-object/from16 v1, p1

    #@2dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2df
    move-result-object v35

    #@2e0
    .line 329
    const-string/jumbo v36, " at "

    #@2e3
    .line 328
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v35

    #@2e7
    .line 330
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2ea
    move-result-object v36

    #@2eb
    .line 328
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v35

    #@2ef
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v35

    #@2f3
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f6
    .line 331
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2f9
    goto/16 :goto_6

    #@2fb
    .line 334
    :cond_12
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2fe
    move-result-object v26

    #@2ff
    .line 335
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@303
    move-object/from16 v34, v0

    #@305
    move-object/from16 v0, v34

    #@307
    move/from16 v1, v32

    #@309
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@30c
    move-result-object v28

    #@30d
    check-cast v28, Landroid/util/ArraySet;

    #@30f
    .line 336
    .local v28, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v28, :cond_13

    #@311
    .line 337
    new-instance v28, Landroid/util/ArraySet;

    #@313
    .end local v28    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    #@316
    .line 338
    .restart local v28    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@318
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@31a
    move-object/from16 v34, v0

    #@31c
    move-object/from16 v0, v34

    #@31e
    move/from16 v1, v32

    #@320
    move-object/from16 v2, v28

    #@322
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@325
    .line 340
    :cond_13
    move-object/from16 v0, v28

    #@327
    move-object/from16 v1, v26

    #@329
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@32c
    .line 341
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@32f
    goto/16 :goto_6

    #@331
    .line 343
    .end local v26    # "perm":Ljava/lang/String;
    .end local v28    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v32    # "uid":I
    .end local v33    # "uidStr":Ljava/lang/String;
    :cond_14
    const-string/jumbo v34, "library"

    #@334
    move-object/from16 v0, v34

    #@336
    move-object/from16 v1, v23

    #@338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33b
    move-result v34

    #@33c
    if-eqz v34, :cond_17

    #@33e
    if-eqz v6, :cond_17

    #@340
    .line 344
    const-string/jumbo v34, "name"

    #@343
    const/16 v35, 0x0

    #@345
    move-object/from16 v0, v25

    #@347
    move-object/from16 v1, v35

    #@349
    move-object/from16 v2, v34

    #@34b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@34e
    move-result-object v21

    #@34f
    .line 345
    .local v21, "lname":Ljava/lang/String;
    const-string/jumbo v34, "file"

    #@352
    const/16 v35, 0x0

    #@354
    move-object/from16 v0, v25

    #@356
    move-object/from16 v1, v35

    #@358
    move-object/from16 v2, v34

    #@35a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@35d
    move-result-object v20

    #@35e
    .line 346
    .local v20, "lfile":Ljava/lang/String;
    if-nez v21, :cond_15

    #@360
    .line 347
    const-string/jumbo v34, "SystemConfig"

    #@363
    new-instance v35, Ljava/lang/StringBuilder;

    #@365
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@368
    const-string/jumbo v36, "<library> without name in "

    #@36b
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36e
    move-result-object v35

    #@36f
    move-object/from16 v0, v35

    #@371
    move-object/from16 v1, p1

    #@373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@376
    move-result-object v35

    #@377
    const-string/jumbo v36, " at "

    #@37a
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37d
    move-result-object v35

    #@37e
    .line 348
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@381
    move-result-object v36

    #@382
    .line 347
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@385
    move-result-object v35

    #@386
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@389
    move-result-object v35

    #@38a
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38d
    .line 356
    :goto_8
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@390
    goto/16 :goto_6

    #@392
    .line 349
    :cond_15
    if-nez v20, :cond_16

    #@394
    .line 350
    const-string/jumbo v34, "SystemConfig"

    #@397
    new-instance v35, Ljava/lang/StringBuilder;

    #@399
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@39c
    const-string/jumbo v36, "<library> without file in "

    #@39f
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v35

    #@3a3
    move-object/from16 v0, v35

    #@3a5
    move-object/from16 v1, p1

    #@3a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3aa
    move-result-object v35

    #@3ab
    const-string/jumbo v36, " at "

    #@3ae
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b1
    move-result-object v35

    #@3b2
    .line 351
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3b5
    move-result-object v36

    #@3b6
    .line 350
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v35

    #@3ba
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bd
    move-result-object v35

    #@3be
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c1
    goto :goto_8

    #@3c2
    .line 354
    :cond_16
    move-object/from16 v0, p0

    #@3c4
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    #@3c6
    move-object/from16 v34, v0

    #@3c8
    move-object/from16 v0, v34

    #@3ca
    move-object/from16 v1, v21

    #@3cc
    move-object/from16 v2, v20

    #@3ce
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d1
    goto :goto_8

    #@3d2
    .line 359
    .end local v20    # "lfile":Ljava/lang/String;
    .end local v21    # "lname":Ljava/lang/String;
    :cond_17
    const-string/jumbo v34, "feature"

    #@3d5
    move-object/from16 v0, v34

    #@3d7
    move-object/from16 v1, v23

    #@3d9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3dc
    move-result v34

    #@3dd
    if-eqz v34, :cond_1c

    #@3df
    if-eqz v5, :cond_1c

    #@3e1
    .line 360
    const-string/jumbo v34, "name"

    #@3e4
    const/16 v35, 0x0

    #@3e6
    move-object/from16 v0, v25

    #@3e8
    move-object/from16 v1, v35

    #@3ea
    move-object/from16 v2, v34

    #@3ec
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3ef
    move-result-object v16

    #@3f0
    .line 361
    .local v16, "fname":Ljava/lang/String;
    const-string/jumbo v34, "version"

    #@3f3
    const/16 v35, 0x0

    #@3f5
    move-object/from16 v0, v25

    #@3f7
    move-object/from16 v1, v34

    #@3f9
    move/from16 v2, v35

    #@3fb
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3fe
    move-result v17

    #@3ff
    .line 363
    .local v17, "fversion":I
    if-nez v22, :cond_19

    #@401
    .line 364
    const/4 v8, 0x1

    #@402
    .line 369
    .local v8, "allowed":Z
    :goto_9
    if-nez v16, :cond_1b

    #@404
    .line 370
    const-string/jumbo v34, "SystemConfig"

    #@407
    new-instance v35, Ljava/lang/StringBuilder;

    #@409
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@40c
    const-string/jumbo v36, "<feature> without name in "

    #@40f
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@412
    move-result-object v35

    #@413
    move-object/from16 v0, v35

    #@415
    move-object/from16 v1, p1

    #@417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41a
    move-result-object v35

    #@41b
    const-string/jumbo v36, " at "

    #@41e
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@421
    move-result-object v35

    #@422
    .line 371
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@425
    move-result-object v36

    #@426
    .line 370
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@429
    move-result-object v35

    #@42a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42d
    move-result-object v35

    #@42e
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@431
    .line 375
    :cond_18
    :goto_a
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@434
    goto/16 :goto_6

    #@436
    .line 366
    .end local v8    # "allowed":Z
    :cond_19
    const-string/jumbo v34, "notLowRam"

    #@439
    const/16 v35, 0x0

    #@43b
    move-object/from16 v0, v25

    #@43d
    move-object/from16 v1, v35

    #@43f
    move-object/from16 v2, v34

    #@441
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@444
    move-result-object v24

    #@445
    .line 367
    .local v24, "notLowRam":Ljava/lang/String;
    const-string/jumbo v34, "true"

    #@448
    move-object/from16 v0, v34

    #@44a
    move-object/from16 v1, v24

    #@44c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44f
    move-result v34

    #@450
    if-eqz v34, :cond_1a

    #@452
    const/4 v8, 0x0

    #@453
    .restart local v8    # "allowed":Z
    goto :goto_9

    #@454
    .end local v8    # "allowed":Z
    :cond_1a
    const/4 v8, 0x1

    #@455
    .restart local v8    # "allowed":Z
    goto :goto_9

    #@456
    .line 372
    .end local v24    # "notLowRam":Ljava/lang/String;
    :cond_1b
    if-eqz v8, :cond_18

    #@458
    .line 373
    move-object/from16 v0, p0

    #@45a
    move-object/from16 v1, v16

    #@45c
    move/from16 v2, v17

    #@45e
    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    #@461
    goto :goto_a

    #@462
    .line 378
    .end local v8    # "allowed":Z
    .end local v16    # "fname":Ljava/lang/String;
    .end local v17    # "fversion":I
    :cond_1c
    const-string/jumbo v34, "unavailable-feature"

    #@465
    move-object/from16 v0, v34

    #@467
    move-object/from16 v1, v23

    #@469
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46c
    move-result v34

    #@46d
    if-eqz v34, :cond_1e

    #@46f
    if-eqz v5, :cond_1e

    #@471
    .line 379
    const-string/jumbo v34, "name"

    #@474
    const/16 v35, 0x0

    #@476
    move-object/from16 v0, v25

    #@478
    move-object/from16 v1, v35

    #@47a
    move-object/from16 v2, v34

    #@47c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@47f
    move-result-object v16

    #@480
    .line 380
    .restart local v16    # "fname":Ljava/lang/String;
    if-nez v16, :cond_1d

    #@482
    .line 381
    const-string/jumbo v34, "SystemConfig"

    #@485
    new-instance v35, Ljava/lang/StringBuilder;

    #@487
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@48a
    const-string/jumbo v36, "<unavailable-feature> without name in "

    #@48d
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@490
    move-result-object v35

    #@491
    move-object/from16 v0, v35

    #@493
    move-object/from16 v1, p1

    #@495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@498
    move-result-object v35

    #@499
    const-string/jumbo v36, " at "

    #@49c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v35

    #@4a0
    .line 382
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4a3
    move-result-object v36

    #@4a4
    .line 381
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a7
    move-result-object v35

    #@4a8
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ab
    move-result-object v35

    #@4ac
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4af
    .line 386
    :goto_b
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4b2
    goto/16 :goto_6

    #@4b4
    .line 384
    :cond_1d
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@4b8
    move-object/from16 v34, v0

    #@4ba
    move-object/from16 v0, v34

    #@4bc
    move-object/from16 v1, v16

    #@4be
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@4c1
    goto :goto_b

    #@4c2
    .line 389
    .end local v16    # "fname":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v34, "allow-in-power-save-except-idle"

    #@4c5
    move-object/from16 v0, v34

    #@4c7
    move-object/from16 v1, v23

    #@4c9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4cc
    move-result v34

    #@4cd
    if-eqz v34, :cond_20

    #@4cf
    if-eqz v3, :cond_20

    #@4d1
    .line 390
    const-string/jumbo v34, "package"

    #@4d4
    const/16 v35, 0x0

    #@4d6
    move-object/from16 v0, v25

    #@4d8
    move-object/from16 v1, v35

    #@4da
    move-object/from16 v2, v34

    #@4dc
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4df
    move-result-object v29

    #@4e0
    .line 391
    .local v29, "pkgname":Ljava/lang/String;
    if-nez v29, :cond_1f

    #@4e2
    .line 392
    const-string/jumbo v34, "SystemConfig"

    #@4e5
    new-instance v35, Ljava/lang/StringBuilder;

    #@4e7
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@4ea
    const-string/jumbo v36, "<allow-in-power-save-except-idle> without package in "

    #@4ed
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f0
    move-result-object v35

    #@4f1
    move-object/from16 v0, v35

    #@4f3
    move-object/from16 v1, p1

    #@4f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f8
    move-result-object v35

    #@4f9
    .line 393
    const-string/jumbo v36, " at "

    #@4fc
    .line 392
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ff
    move-result-object v35

    #@500
    .line 393
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@503
    move-result-object v36

    #@504
    .line 392
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@507
    move-result-object v35

    #@508
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50b
    move-result-object v35

    #@50c
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50f
    .line 397
    :goto_c
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@512
    goto/16 :goto_6

    #@514
    .line 395
    :cond_1f
    move-object/from16 v0, p0

    #@516
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    #@518
    move-object/from16 v34, v0

    #@51a
    move-object/from16 v0, v34

    #@51c
    move-object/from16 v1, v29

    #@51e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@521
    goto :goto_c

    #@522
    .line 400
    .end local v29    # "pkgname":Ljava/lang/String;
    :cond_20
    const-string/jumbo v34, "allow-in-power-save"

    #@525
    move-object/from16 v0, v34

    #@527
    move-object/from16 v1, v23

    #@529
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52c
    move-result v34

    #@52d
    if-eqz v34, :cond_22

    #@52f
    if-eqz v3, :cond_22

    #@531
    .line 401
    const-string/jumbo v34, "package"

    #@534
    const/16 v35, 0x0

    #@536
    move-object/from16 v0, v25

    #@538
    move-object/from16 v1, v35

    #@53a
    move-object/from16 v2, v34

    #@53c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53f
    move-result-object v29

    #@540
    .line 402
    .restart local v29    # "pkgname":Ljava/lang/String;
    if-nez v29, :cond_21

    #@542
    .line 403
    const-string/jumbo v34, "SystemConfig"

    #@545
    new-instance v35, Ljava/lang/StringBuilder;

    #@547
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@54a
    const-string/jumbo v36, "<allow-in-power-save> without package in "

    #@54d
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@550
    move-result-object v35

    #@551
    move-object/from16 v0, v35

    #@553
    move-object/from16 v1, p1

    #@555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@558
    move-result-object v35

    #@559
    const-string/jumbo v36, " at "

    #@55c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55f
    move-result-object v35

    #@560
    .line 404
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@563
    move-result-object v36

    #@564
    .line 403
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@567
    move-result-object v35

    #@568
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56b
    move-result-object v35

    #@56c
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@56f
    .line 408
    :goto_d
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@572
    goto/16 :goto_6

    #@574
    .line 406
    :cond_21
    move-object/from16 v0, p0

    #@576
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    #@578
    move-object/from16 v34, v0

    #@57a
    move-object/from16 v0, v34

    #@57c
    move-object/from16 v1, v29

    #@57e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@581
    goto :goto_d

    #@582
    .line 411
    .end local v29    # "pkgname":Ljava/lang/String;
    :cond_22
    const-string/jumbo v34, "allow-in-data-usage-save"

    #@585
    move-object/from16 v0, v34

    #@587
    move-object/from16 v1, v23

    #@589
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58c
    move-result v34

    #@58d
    if-eqz v34, :cond_24

    #@58f
    if-eqz v3, :cond_24

    #@591
    .line 412
    const-string/jumbo v34, "package"

    #@594
    const/16 v35, 0x0

    #@596
    move-object/from16 v0, v25

    #@598
    move-object/from16 v1, v35

    #@59a
    move-object/from16 v2, v34

    #@59c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@59f
    move-result-object v29

    #@5a0
    .line 413
    .restart local v29    # "pkgname":Ljava/lang/String;
    if-nez v29, :cond_23

    #@5a2
    .line 414
    const-string/jumbo v34, "SystemConfig"

    #@5a5
    new-instance v35, Ljava/lang/StringBuilder;

    #@5a7
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@5aa
    const-string/jumbo v36, "<allow-in-data-usage-save> without package in "

    #@5ad
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b0
    move-result-object v35

    #@5b1
    move-object/from16 v0, v35

    #@5b3
    move-object/from16 v1, p1

    #@5b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b8
    move-result-object v35

    #@5b9
    .line 415
    const-string/jumbo v36, " at "

    #@5bc
    .line 414
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bf
    move-result-object v35

    #@5c0
    .line 415
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5c3
    move-result-object v36

    #@5c4
    .line 414
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c7
    move-result-object v35

    #@5c8
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5cb
    move-result-object v35

    #@5cc
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5cf
    .line 419
    :goto_e
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5d2
    goto/16 :goto_6

    #@5d4
    .line 417
    :cond_23
    move-object/from16 v0, p0

    #@5d6
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    #@5d8
    move-object/from16 v34, v0

    #@5da
    move-object/from16 v0, v34

    #@5dc
    move-object/from16 v1, v29

    #@5de
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5e1
    goto :goto_e

    #@5e2
    .line 422
    .end local v29    # "pkgname":Ljava/lang/String;
    :cond_24
    const-string/jumbo v34, "app-link"

    #@5e5
    move-object/from16 v0, v34

    #@5e7
    move-object/from16 v1, v23

    #@5e9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5ec
    move-result v34

    #@5ed
    if-eqz v34, :cond_26

    #@5ef
    if-eqz v4, :cond_26

    #@5f1
    .line 423
    const-string/jumbo v34, "package"

    #@5f4
    const/16 v35, 0x0

    #@5f6
    move-object/from16 v0, v25

    #@5f8
    move-object/from16 v1, v35

    #@5fa
    move-object/from16 v2, v34

    #@5fc
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5ff
    move-result-object v29

    #@600
    .line 424
    .restart local v29    # "pkgname":Ljava/lang/String;
    if-nez v29, :cond_25

    #@602
    .line 425
    const-string/jumbo v34, "SystemConfig"

    #@605
    new-instance v35, Ljava/lang/StringBuilder;

    #@607
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@60a
    const-string/jumbo v36, "<app-link> without package in "

    #@60d
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@610
    move-result-object v35

    #@611
    move-object/from16 v0, v35

    #@613
    move-object/from16 v1, p1

    #@615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@618
    move-result-object v35

    #@619
    const-string/jumbo v36, " at "

    #@61c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61f
    move-result-object v35

    #@620
    .line 426
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@623
    move-result-object v36

    #@624
    .line 425
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@627
    move-result-object v35

    #@628
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62b
    move-result-object v35

    #@62c
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62f
    .line 430
    :goto_f
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@632
    goto/16 :goto_6

    #@634
    .line 428
    :cond_25
    move-object/from16 v0, p0

    #@636
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    #@638
    move-object/from16 v34, v0

    #@63a
    move-object/from16 v0, v34

    #@63c
    move-object/from16 v1, v29

    #@63e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@641
    goto :goto_f

    #@642
    .line 431
    .end local v29    # "pkgname":Ljava/lang/String;
    :cond_26
    const-string/jumbo v34, "system-user-whitelisted-app"

    #@645
    move-object/from16 v0, v34

    #@647
    move-object/from16 v1, v23

    #@649
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64c
    move-result v34

    #@64d
    if-eqz v34, :cond_28

    #@64f
    if-eqz v4, :cond_28

    #@651
    .line 432
    const-string/jumbo v34, "package"

    #@654
    const/16 v35, 0x0

    #@656
    move-object/from16 v0, v25

    #@658
    move-object/from16 v1, v35

    #@65a
    move-object/from16 v2, v34

    #@65c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@65f
    move-result-object v29

    #@660
    .line 433
    .restart local v29    # "pkgname":Ljava/lang/String;
    if-nez v29, :cond_27

    #@662
    .line 434
    const-string/jumbo v34, "SystemConfig"

    #@665
    new-instance v35, Ljava/lang/StringBuilder;

    #@667
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@66a
    const-string/jumbo v36, "<system-user-whitelisted-app> without package in "

    #@66d
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@670
    move-result-object v35

    #@671
    move-object/from16 v0, v35

    #@673
    move-object/from16 v1, p1

    #@675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@678
    move-result-object v35

    #@679
    .line 435
    const-string/jumbo v36, " at "

    #@67c
    .line 434
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67f
    move-result-object v35

    #@680
    .line 435
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@683
    move-result-object v36

    #@684
    .line 434
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@687
    move-result-object v35

    #@688
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68b
    move-result-object v35

    #@68c
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68f
    .line 439
    :goto_10
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@692
    goto/16 :goto_6

    #@694
    .line 437
    :cond_27
    move-object/from16 v0, p0

    #@696
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    #@698
    move-object/from16 v34, v0

    #@69a
    move-object/from16 v0, v34

    #@69c
    move-object/from16 v1, v29

    #@69e
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6a1
    goto :goto_10

    #@6a2
    .line 440
    .end local v29    # "pkgname":Ljava/lang/String;
    :cond_28
    const-string/jumbo v34, "system-user-blacklisted-app"

    #@6a5
    move-object/from16 v0, v34

    #@6a7
    move-object/from16 v1, v23

    #@6a9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6ac
    move-result v34

    #@6ad
    if-eqz v34, :cond_2a

    #@6af
    if-eqz v4, :cond_2a

    #@6b1
    .line 441
    const-string/jumbo v34, "package"

    #@6b4
    const/16 v35, 0x0

    #@6b6
    move-object/from16 v0, v25

    #@6b8
    move-object/from16 v1, v35

    #@6ba
    move-object/from16 v2, v34

    #@6bc
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6bf
    move-result-object v29

    #@6c0
    .line 442
    .restart local v29    # "pkgname":Ljava/lang/String;
    if-nez v29, :cond_29

    #@6c2
    .line 443
    const-string/jumbo v34, "SystemConfig"

    #@6c5
    new-instance v35, Ljava/lang/StringBuilder;

    #@6c7
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@6ca
    const-string/jumbo v36, "<system-user-blacklisted-app without package in "

    #@6cd
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d0
    move-result-object v35

    #@6d1
    move-object/from16 v0, v35

    #@6d3
    move-object/from16 v1, p1

    #@6d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d8
    move-result-object v35

    #@6d9
    .line 444
    const-string/jumbo v36, " at "

    #@6dc
    .line 443
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6df
    move-result-object v35

    #@6e0
    .line 444
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@6e3
    move-result-object v36

    #@6e4
    .line 443
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e7
    move-result-object v35

    #@6e8
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6eb
    move-result-object v35

    #@6ec
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6ef
    .line 448
    :goto_11
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6f2
    goto/16 :goto_6

    #@6f4
    .line 446
    :cond_29
    move-object/from16 v0, p0

    #@6f6
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    #@6f8
    move-object/from16 v34, v0

    #@6fa
    move-object/from16 v0, v34

    #@6fc
    move-object/from16 v1, v29

    #@6fe
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@701
    goto :goto_11

    #@702
    .line 449
    .end local v29    # "pkgname":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v34, "default-enabled-vr-app"

    #@705
    move-object/from16 v0, v34

    #@707
    move-object/from16 v1, v23

    #@709
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70c
    move-result v34

    #@70d
    if-eqz v34, :cond_2d

    #@70f
    if-eqz v4, :cond_2d

    #@711
    .line 450
    const-string/jumbo v34, "package"

    #@714
    const/16 v35, 0x0

    #@716
    move-object/from16 v0, v25

    #@718
    move-object/from16 v1, v35

    #@71a
    move-object/from16 v2, v34

    #@71c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@71f
    move-result-object v29

    #@720
    .line 451
    .restart local v29    # "pkgname":Ljava/lang/String;
    const-string/jumbo v34, "class"

    #@723
    const/16 v35, 0x0

    #@725
    move-object/from16 v0, v25

    #@727
    move-object/from16 v1, v35

    #@729
    move-object/from16 v2, v34

    #@72b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@72e
    move-result-object v9

    #@72f
    .line 452
    .local v9, "clsname":Ljava/lang/String;
    if-nez v29, :cond_2b

    #@731
    .line 453
    const-string/jumbo v34, "SystemConfig"

    #@734
    new-instance v35, Ljava/lang/StringBuilder;

    #@736
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@739
    const-string/jumbo v36, "<default-enabled-vr-app without package in "

    #@73c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73f
    move-result-object v35

    #@740
    move-object/from16 v0, v35

    #@742
    move-object/from16 v1, p1

    #@744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@747
    move-result-object v35

    #@748
    .line 454
    const-string/jumbo v36, " at "

    #@74b
    .line 453
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74e
    move-result-object v35

    #@74f
    .line 454
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@752
    move-result-object v36

    #@753
    .line 453
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@756
    move-result-object v35

    #@757
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75a
    move-result-object v35

    #@75b
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75e
    .line 461
    :goto_12
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@761
    goto/16 :goto_6

    #@763
    .line 455
    :cond_2b
    if-nez v9, :cond_2c

    #@765
    .line 456
    const-string/jumbo v34, "SystemConfig"

    #@768
    new-instance v35, Ljava/lang/StringBuilder;

    #@76a
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@76d
    const-string/jumbo v36, "<default-enabled-vr-app without class in "

    #@770
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@773
    move-result-object v35

    #@774
    move-object/from16 v0, v35

    #@776
    move-object/from16 v1, p1

    #@778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77b
    move-result-object v35

    #@77c
    .line 457
    const-string/jumbo v36, " at "

    #@77f
    .line 456
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@782
    move-result-object v35

    #@783
    .line 457
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@786
    move-result-object v36

    #@787
    .line 456
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78a
    move-result-object v35

    #@78b
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78e
    move-result-object v35

    #@78f
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@792
    goto :goto_12

    #@793
    .line 459
    :cond_2c
    move-object/from16 v0, p0

    #@795
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    #@797
    move-object/from16 v34, v0

    #@799
    new-instance v35, Landroid/content/ComponentName;

    #@79b
    move-object/from16 v0, v35

    #@79d
    move-object/from16 v1, v29

    #@79f
    invoke-direct {v0, v1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7a2
    invoke-virtual/range {v34 .. v35}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@7a5
    goto :goto_12

    #@7a6
    .line 462
    .end local v9    # "clsname":Ljava/lang/String;
    .end local v29    # "pkgname":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v34, "backup-transport-whitelisted-service"

    #@7a9
    move-object/from16 v0, v34

    #@7ab
    move-object/from16 v1, v23

    #@7ad
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b0
    move-result v34

    #@7b1
    if-eqz v34, :cond_30

    #@7b3
    if-eqz v5, :cond_30

    #@7b5
    .line 463
    const-string/jumbo v34, "service"

    #@7b8
    const/16 v35, 0x0

    #@7ba
    move-object/from16 v0, v25

    #@7bc
    move-object/from16 v1, v35

    #@7be
    move-object/from16 v2, v34

    #@7c0
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7c3
    move-result-object v30

    #@7c4
    .line 464
    .local v30, "serviceName":Ljava/lang/String;
    if-nez v30, :cond_2e

    #@7c6
    .line 465
    const-string/jumbo v34, "SystemConfig"

    #@7c9
    new-instance v35, Ljava/lang/StringBuilder;

    #@7cb
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@7ce
    const-string/jumbo v36, "<backup-transport-whitelisted-service> without service in "

    #@7d1
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d4
    move-result-object v35

    #@7d5
    move-object/from16 v0, v35

    #@7d7
    move-object/from16 v1, p1

    #@7d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7dc
    move-result-object v35

    #@7dd
    .line 466
    const-string/jumbo v36, " at "

    #@7e0
    .line 465
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e3
    move-result-object v35

    #@7e4
    .line 466
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@7e7
    move-result-object v36

    #@7e8
    .line 465
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7eb
    move-result-object v35

    #@7ec
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7ef
    move-result-object v35

    #@7f0
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f3
    .line 478
    :goto_13
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7f6
    goto/16 :goto_6

    #@7f8
    .line 468
    :cond_2e
    invoke-static/range {v30 .. v30}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@7fb
    move-result-object v10

    #@7fc
    .line 469
    .local v10, "cn":Landroid/content/ComponentName;
    if-nez v10, :cond_2f

    #@7fe
    .line 470
    const-string/jumbo v34, "SystemConfig"

    #@801
    .line 471
    new-instance v35, Ljava/lang/StringBuilder;

    #@803
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@806
    const-string/jumbo v36, "<backup-transport-whitelisted-service> with invalid service name "

    #@809
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80c
    move-result-object v35

    #@80d
    move-object/from16 v0, v35

    #@80f
    move-object/from16 v1, v30

    #@811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@814
    move-result-object v35

    #@815
    .line 472
    const-string/jumbo v36, " in "

    #@818
    .line 471
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81b
    move-result-object v35

    #@81c
    move-object/from16 v0, v35

    #@81e
    move-object/from16 v1, p1

    #@820
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@823
    move-result-object v35

    #@824
    .line 473
    const-string/jumbo v36, " at "

    #@827
    .line 471
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82a
    move-result-object v35

    #@82b
    .line 473
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@82e
    move-result-object v36

    #@82f
    .line 471
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@832
    move-result-object v35

    #@833
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@836
    move-result-object v35

    #@837
    .line 470
    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@83a
    goto :goto_13

    #@83b
    .line 475
    :cond_2f
    move-object/from16 v0, p0

    #@83d
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    #@83f
    move-object/from16 v34, v0

    #@841
    move-object/from16 v0, v34

    #@843
    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@846
    goto :goto_13

    #@847
    .line 480
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v30    # "serviceName":Ljava/lang/String;
    :cond_30
    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@84a
    goto/16 :goto_6

    #@84c
    .line 246
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v23    # "name":Ljava/lang/String;
    .end local v25    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "type":I
    .restart local v15    # "featureName$iterator":Ljava/util/Iterator;
    :cond_31
    return-void
.end method

.method private removeFeature(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 518
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
    .line 516
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
    .line 163
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
    .line 159
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
    .line 155
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
    .line 147
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
    .line 183
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
    .line 179
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getGlobalGids()[I
    .locals 1

    #@0
    .prologue
    .line 135
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
    .line 167
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
    .line 151
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
    .line 143
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
    .line 139
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
    .line 175
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
    .line 171
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
    .line 524
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v7, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 525
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
    .line 528
    :cond_0
    const-string/jumbo v7, "perUser"

    #@27
    const/4 v8, 0x0

    #@28
    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@2b
    move-result v3

    #@2c
    .line 529
    .local v3, "perUser":Z
    new-instance v4, Lcom/android/server/SystemConfig$PermissionEntry;

    #@2e
    invoke-direct {v4, p2, v3}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    #@31
    .line 530
    .local v4, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v7, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 532
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@39
    move-result v2

    #@3a
    .line 534
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
    .line 535
    if-ne v6, v10, :cond_2

    #@43
    .line 536
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@46
    move-result v7

    #@47
    if-le v7, v2, :cond_5

    #@49
    .line 537
    :cond_2
    if-eq v6, v10, :cond_1

    #@4b
    .line 538
    const/4 v7, 0x4

    #@4c
    if-eq v6, v7, :cond_1

    #@4e
    .line 542
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 543
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    #@55
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_3

    #@5b
    .line 544
    const-string/jumbo v7, "gid"

    #@5e
    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 545
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@64
    .line 546
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    #@67
    move-result v0

    #@68
    .line 547
    .local v0, "gid":I
    iget-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    #@6a
    invoke-static {v7, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@6d
    move-result-object v7

    #@6e
    iput-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    #@70
    .line 553
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@73
    goto :goto_0

    #@74
    .line 549
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
    .line 550
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    .line 549
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
    .line 523
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
    .line 208
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
    .line 214
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_2

    #@12
    .line 215
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
    .line 216
    return-void

    #@34
    .line 209
    :cond_0
    const/4 v2, -0x1

    #@35
    if-ne p2, v2, :cond_1

    #@37
    .line 210
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
    .line 212
    :cond_1
    return-void

    #@59
    .line 220
    :cond_2
    const/4 v1, 0x0

    #@5a
    .line 221
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
    .line 223
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
    .line 224
    move-object v1, v0

    #@72
    .line 221
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@74
    goto :goto_0

    #@75
    .line 228
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
    .line 229
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
    .line 232
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    #@b2
    move-result v5

    #@b3
    if-nez v5, :cond_5

    #@b5
    .line 233
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
    .line 237
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    #@da
    goto :goto_1

    #@db
    .line 241
    .end local v0    # "f":Ljava/io/File;
    :cond_6
    if-eqz v1, :cond_7

    #@dd
    .line 242
    invoke-direct {p0, v1, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    #@e0
    .line 206
    :cond_7
    return-void
.end method
