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
.field static final TAG:Ljava/lang/String; = "SystemConfig"

.field static sInstance:Lcom/android/server/SystemConfig;


# instance fields
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

.field final mFixedImeApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
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
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 56
    new-instance v0, Landroid/util/SparseArray;

    #@8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@d
    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    #@f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    #@14
    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    #@16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@1b
    .line 69
    new-instance v0, Landroid/util/ArraySet;

    #@1d
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@22
    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    #@24
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@29
    .line 89
    new-instance v0, Landroid/util/ArraySet;

    #@2b
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    #@30
    .line 93
    new-instance v0, Landroid/util/ArraySet;

    #@32
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@35
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    #@37
    .line 96
    new-instance v0, Landroid/util/ArraySet;

    #@39
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@3c
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mFixedImeApps:Landroid/util/ArraySet;

    #@3e
    .line 100
    new-instance v0, Landroid/util/ArraySet;

    #@40
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@43
    iput-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    #@45
    .line 150
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@48
    move-result-object v0

    #@49
    .line 149
    new-array v1, v5, [Ljava/lang/String;

    #@4b
    .line 150
    const-string/jumbo v2, "etc"

    #@4e
    aput-object v2, v1, v3

    #@50
    const-string/jumbo v2, "sysconfig"

    #@53
    aput-object v2, v1, v4

    #@55
    .line 149
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    #@5c
    .line 153
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@5f
    move-result-object v0

    #@60
    .line 152
    new-array v1, v5, [Ljava/lang/String;

    #@62
    .line 153
    const-string/jumbo v2, "etc"

    #@65
    aput-object v2, v1, v3

    #@67
    const-string/jumbo v2, "permissions"

    #@6a
    aput-object v2, v1, v4

    #@6c
    .line 152
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    #@73
    .line 156
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    #@76
    move-result-object v0

    #@77
    .line 155
    new-array v1, v5, [Ljava/lang/String;

    #@79
    .line 156
    const-string/jumbo v2, "etc"

    #@7c
    aput-object v2, v1, v3

    #@7e
    const-string/jumbo v2, "sysconfig"

    #@81
    aput-object v2, v1, v4

    #@83
    .line 155
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    #@8a
    .line 158
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    #@8d
    move-result-object v0

    #@8e
    .line 157
    new-array v1, v5, [Ljava/lang/String;

    #@90
    .line 158
    const-string/jumbo v2, "etc"

    #@93
    aput-object v2, v1, v3

    #@95
    const-string/jumbo v2, "permissions"

    #@98
    aput-object v2, v1, v4

    #@9a
    .line 157
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    #@a1
    .line 147
    return-void
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .locals 2

    #@0
    .prologue
    .line 103
    const-class v1, Lcom/android/server/SystemConfig;

    #@2
    monitor-enter v1

    #@3
    .line 104
    :try_start_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 105
    new-instance v0, Lcom/android/server/SystemConfig;

    #@9
    invoke-direct {v0}, Lcom/android/server/SystemConfig;-><init>()V

    #@c
    sput-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    #@e
    .line 107
    :cond_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 103
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;Z)V
    .locals 28
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    #@0
    .prologue
    .line 202
    const/16 v19, 0x0

    #@2
    .line 204
    .local v19, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v19, Ljava/io/FileReader;

    #@4
    .end local v19    # "permReader":Ljava/io/FileReader;
    move-object/from16 v0, v19

    #@6
    move-object/from16 v1, p1

    #@8
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 210
    .local v19, "permReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@e
    move-result v14

    #@f
    .line 213
    .local v14, "lowRam":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@12
    move-result-object v17

    #@13
    .line 214
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v17

    #@15
    move-object/from16 v1, v19

    #@17
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@1a
    .line 217
    :cond_0
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d
    move-result v22

    #@1e
    .local v22, "type":I
    const/16 v25, 0x2

    #@20
    move/from16 v0, v22

    #@22
    move/from16 v1, v25

    #@24
    if-eq v0, v1, :cond_1

    #@26
    .line 218
    const/16 v25, 0x1

    #@28
    move/from16 v0, v22

    #@2a
    move/from16 v1, v25

    #@2c
    if-ne v0, v1, :cond_0

    #@2e
    .line 222
    :cond_1
    const/16 v25, 0x2

    #@30
    move/from16 v0, v22

    #@32
    move/from16 v1, v25

    #@34
    if-eq v0, v1, :cond_3

    #@36
    .line 223
    new-instance v25, Lorg/xmlpull/v1/XmlPullParserException;

    #@38
    const-string/jumbo v26, "No start tag found"

    #@3b
    invoke-direct/range {v25 .. v26}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v25
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 389
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "type":I
    :catch_0
    move-exception v6

    #@40
    .line 390
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v25, "SystemConfig"

    #@43
    const-string/jumbo v26, "Got exception parsing permissions."

    #@46
    move-object/from16 v0, v25

    #@48
    move-object/from16 v1, v26

    #@4a
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 394
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@50
    .line 397
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@54
    move-object/from16 v25, v0

    #@56
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v9

    #@5a
    .local v9, "fname$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v25

    #@5e
    if-eqz v25, :cond_29

    #@60
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v8

    #@64
    check-cast v8, Ljava/lang/String;

    #@66
    .line 398
    .local v8, "fname":Ljava/lang/String;
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@6a
    move-object/from16 v25, v0

    #@6c
    move-object/from16 v0, v25

    #@6e
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v25

    #@72
    if-eqz v25, :cond_2

    #@74
    .line 399
    const-string/jumbo v25, "SystemConfig"

    #@77
    new-instance v26, Ljava/lang/StringBuilder;

    #@79
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v27, "Removed unavailable feature "

    #@7f
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v26

    #@83
    move-object/from16 v0, v26

    #@85
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v26

    #@89
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v26

    #@8d
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    goto :goto_1

    #@91
    .line 205
    .end local v8    # "fname":Ljava/lang/String;
    .end local v9    # "fname$iterator":Ljava/util/Iterator;
    .end local v14    # "lowRam":Z
    .end local v19    # "permReader":Ljava/io/FileReader;
    :catch_1
    move-exception v4

    #@92
    .line 206
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v25, "SystemConfig"

    #@95
    new-instance v26, Ljava/lang/StringBuilder;

    #@97
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v27, "Couldn\'t find or open permissions file "

    #@9d
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v26

    #@a1
    move-object/from16 v0, v26

    #@a3
    move-object/from16 v1, p1

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v26

    #@a9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v26

    #@ad
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 207
    return-void

    #@b1
    .line 226
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "lowRam":Z
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "permReader":Ljava/io/FileReader;
    .restart local v22    # "type":I
    :cond_3
    :try_start_3
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b4
    move-result-object v25

    #@b5
    const-string/jumbo v26, "permissions"

    #@b8
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v25

    #@bc
    if-nez v25, :cond_4

    #@be
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@c1
    move-result-object v25

    #@c2
    const-string/jumbo v26, "config"

    #@c5
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v25

    #@c9
    if-eqz v25, :cond_5

    #@cb
    .line 232
    :cond_4
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@ce
    .line 233
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d1
    move-result v25

    #@d2
    const/16 v26, 0x1

    #@d4
    move/from16 v0, v25

    #@d6
    move/from16 v1, v26

    #@d8
    if-ne v0, v1, :cond_6

    #@da
    .line 394
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@dd
    goto/16 :goto_0

    #@df
    .line 227
    :cond_5
    :try_start_4
    new-instance v25, Lorg/xmlpull/v1/XmlPullParserException;

    #@e1
    new-instance v26, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v27, "Unexpected start tag in "

    #@e9
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v26

    #@ed
    move-object/from16 v0, v26

    #@ef
    move-object/from16 v1, p1

    #@f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v26

    #@f5
    .line 228
    const-string/jumbo v27, ": found "

    #@f8
    .line 227
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v26

    #@fc
    .line 228
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@ff
    move-result-object v27

    #@100
    .line 227
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v26

    #@104
    .line 228
    const-string/jumbo v27, ", expected \'permissions\' or \'config\'"

    #@107
    .line 227
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v26

    #@10b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v26

    #@10f
    invoke-direct/range {v25 .. v26}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@112
    throw v25
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@113
    .line 391
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "type":I
    :catch_2
    move-exception v5

    #@114
    .line 392
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v25, "SystemConfig"

    #@117
    const-string/jumbo v26, "Got exception parsing permissions."

    #@11a
    move-object/from16 v0, v25

    #@11c
    move-object/from16 v1, v26

    #@11e
    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@121
    .line 394
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@124
    goto/16 :goto_0

    #@126
    .line 237
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "type":I
    :cond_6
    :try_start_6
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@129
    move-result-object v15

    #@12a
    .line 238
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v25, "group"

    #@12d
    move-object/from16 v0, v25

    #@12f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@132
    move-result v25

    #@133
    if-eqz v25, :cond_7

    #@135
    if-eqz p2, :cond_c

    #@137
    .line 250
    :cond_7
    const-string/jumbo v25, "permission"

    #@13a
    move-object/from16 v0, v25

    #@13c
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v25

    #@140
    if-eqz v25, :cond_8

    #@142
    if-eqz p2, :cond_e

    #@144
    .line 261
    :cond_8
    const-string/jumbo v25, "assign-permission"

    #@147
    move-object/from16 v0, v25

    #@149
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14c
    move-result v25

    #@14d
    if-eqz v25, :cond_9

    #@14f
    if-eqz p2, :cond_10

    #@151
    .line 293
    :cond_9
    const-string/jumbo v25, "library"

    #@154
    move-object/from16 v0, v25

    #@156
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@159
    move-result v25

    #@15a
    if-eqz v25, :cond_a

    #@15c
    if-eqz p2, :cond_15

    #@15e
    .line 309
    :cond_a
    const-string/jumbo v25, "feature"

    #@161
    move-object/from16 v0, v25

    #@163
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v25

    #@167
    if-eqz v25, :cond_1b

    #@169
    .line 310
    const-string/jumbo v25, "name"

    #@16c
    const/16 v26, 0x0

    #@16e
    move-object/from16 v0, v17

    #@170
    move-object/from16 v1, v26

    #@172
    move-object/from16 v2, v25

    #@174
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@177
    move-result-object v8

    #@178
    .line 312
    .restart local v8    # "fname":Ljava/lang/String;
    if-nez v14, :cond_18

    #@17a
    .line 313
    const/4 v3, 0x1

    #@17b
    .line 318
    .local v3, "allowed":Z
    :goto_3
    if-nez v8, :cond_1a

    #@17d
    .line 319
    const-string/jumbo v25, "SystemConfig"

    #@180
    new-instance v26, Ljava/lang/StringBuilder;

    #@182
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v27, "<feature> without name in "

    #@188
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v26

    #@18c
    move-object/from16 v0, v26

    #@18e
    move-object/from16 v1, p1

    #@190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v26

    #@194
    const-string/jumbo v27, " at "

    #@197
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v26

    #@19b
    .line 320
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@19e
    move-result-object v27

    #@19f
    .line 319
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v26

    #@1a3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a6
    move-result-object v26

    #@1a7
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1aa
    .line 327
    :cond_b
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1ad
    goto/16 :goto_2

    #@1af
    .line 393
    .end local v3    # "allowed":Z
    .end local v8    # "fname":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "type":I
    :catchall_0
    move-exception v25

    #@1b0
    .line 394
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b3
    .line 393
    throw v25

    #@1b4
    .line 239
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "type":I
    :cond_c
    :try_start_7
    const-string/jumbo v25, "gid"

    #@1b7
    const/16 v26, 0x0

    #@1b9
    move-object/from16 v0, v17

    #@1bb
    move-object/from16 v1, v26

    #@1bd
    move-object/from16 v2, v25

    #@1bf
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c2
    move-result-object v11

    #@1c3
    .line 240
    .local v11, "gidStr":Ljava/lang/String;
    if-eqz v11, :cond_d

    #@1c5
    .line 241
    invoke-static {v11}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    #@1c8
    move-result v10

    #@1c9
    .line 242
    .local v10, "gid":I
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    #@1cd
    move-object/from16 v25, v0

    #@1cf
    move-object/from16 v0, v25

    #@1d1
    invoke-static {v0, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@1d4
    move-result-object v25

    #@1d5
    move-object/from16 v0, v25

    #@1d7
    move-object/from16 v1, p0

    #@1d9
    iput-object v0, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    #@1db
    .line 248
    .end local v10    # "gid":I
    :goto_5
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1de
    goto/16 :goto_2

    #@1e0
    .line 244
    :cond_d
    const-string/jumbo v25, "SystemConfig"

    #@1e3
    new-instance v26, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string/jumbo v27, "<group> without gid in "

    #@1eb
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v26

    #@1ef
    move-object/from16 v0, v26

    #@1f1
    move-object/from16 v1, p1

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v26

    #@1f7
    const-string/jumbo v27, " at "

    #@1fa
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v26

    #@1fe
    .line 245
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@201
    move-result-object v27

    #@202
    .line 244
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v26

    #@206
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@209
    move-result-object v26

    #@20a
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20d
    goto :goto_5

    #@20e
    .line 251
    .end local v11    # "gidStr":Ljava/lang/String;
    :cond_e
    const-string/jumbo v25, "name"

    #@211
    const/16 v26, 0x0

    #@213
    move-object/from16 v0, v17

    #@215
    move-object/from16 v1, v26

    #@217
    move-object/from16 v2, v25

    #@219
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21c
    move-result-object v18

    #@21d
    .line 252
    .local v18, "perm":Ljava/lang/String;
    if-nez v18, :cond_f

    #@21f
    .line 253
    const-string/jumbo v25, "SystemConfig"

    #@222
    new-instance v26, Ljava/lang/StringBuilder;

    #@224
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@227
    const-string/jumbo v27, "<permission> without name in "

    #@22a
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v26

    #@22e
    move-object/from16 v0, v26

    #@230
    move-object/from16 v1, p1

    #@232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v26

    #@236
    const-string/jumbo v27, " at "

    #@239
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v26

    #@23d
    .line 254
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@240
    move-result-object v27

    #@241
    .line 253
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v26

    #@245
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@248
    move-result-object v26

    #@249
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24c
    .line 255
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@24f
    goto/16 :goto_2

    #@251
    .line 258
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@254
    move-result-object v18

    #@255
    .line 259
    move-object/from16 v0, p0

    #@257
    move-object/from16 v1, v17

    #@259
    move-object/from16 v2, v18

    #@25b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@25e
    goto/16 :goto_2

    #@260
    .line 262
    .end local v18    # "perm":Ljava/lang/String;
    :cond_10
    const-string/jumbo v25, "name"

    #@263
    const/16 v26, 0x0

    #@265
    move-object/from16 v0, v17

    #@267
    move-object/from16 v1, v26

    #@269
    move-object/from16 v2, v25

    #@26b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26e
    move-result-object v18

    #@26f
    .line 263
    .restart local v18    # "perm":Ljava/lang/String;
    if-nez v18, :cond_11

    #@271
    .line 264
    const-string/jumbo v25, "SystemConfig"

    #@274
    new-instance v26, Ljava/lang/StringBuilder;

    #@276
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@279
    const-string/jumbo v27, "<assign-permission> without name in "

    #@27c
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v26

    #@280
    move-object/from16 v0, v26

    #@282
    move-object/from16 v1, p1

    #@284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v26

    #@288
    const-string/jumbo v27, " at "

    #@28b
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v26

    #@28f
    .line 265
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@292
    move-result-object v27

    #@293
    .line 264
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v26

    #@297
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29a
    move-result-object v26

    #@29b
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29e
    .line 266
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2a1
    goto/16 :goto_2

    #@2a3
    .line 269
    :cond_11
    const-string/jumbo v25, "uid"

    #@2a6
    const/16 v26, 0x0

    #@2a8
    move-object/from16 v0, v17

    #@2aa
    move-object/from16 v1, v26

    #@2ac
    move-object/from16 v2, v25

    #@2ae
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b1
    move-result-object v24

    #@2b2
    .line 270
    .local v24, "uidStr":Ljava/lang/String;
    if-nez v24, :cond_12

    #@2b4
    .line 271
    const-string/jumbo v25, "SystemConfig"

    #@2b7
    new-instance v26, Ljava/lang/StringBuilder;

    #@2b9
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@2bc
    const-string/jumbo v27, "<assign-permission> without uid in "

    #@2bf
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v26

    #@2c3
    move-object/from16 v0, v26

    #@2c5
    move-object/from16 v1, p1

    #@2c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v26

    #@2cb
    const-string/jumbo v27, " at "

    #@2ce
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    move-result-object v26

    #@2d2
    .line 272
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2d5
    move-result-object v27

    #@2d6
    .line 271
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v26

    #@2da
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2dd
    move-result-object v26

    #@2de
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e1
    .line 273
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2e4
    goto/16 :goto_2

    #@2e6
    .line 276
    :cond_12
    invoke-static/range {v24 .. v24}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    #@2e9
    move-result v23

    #@2ea
    .line 277
    .local v23, "uid":I
    if-gez v23, :cond_13

    #@2ec
    .line 278
    const-string/jumbo v25, "SystemConfig"

    #@2ef
    new-instance v26, Ljava/lang/StringBuilder;

    #@2f1
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@2f4
    const-string/jumbo v27, "<assign-permission> with unknown uid \""

    #@2f7
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v26

    #@2fb
    move-object/from16 v0, v26

    #@2fd
    move-object/from16 v1, v24

    #@2ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v26

    #@303
    .line 279
    const-string/jumbo v27, "  in "

    #@306
    .line 278
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@309
    move-result-object v26

    #@30a
    move-object/from16 v0, v26

    #@30c
    move-object/from16 v1, p1

    #@30e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@311
    move-result-object v26

    #@312
    .line 279
    const-string/jumbo v27, " at "

    #@315
    .line 278
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@318
    move-result-object v26

    #@319
    .line 280
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@31c
    move-result-object v27

    #@31d
    .line 278
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v26

    #@321
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@324
    move-result-object v26

    #@325
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@328
    .line 281
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@32b
    goto/16 :goto_2

    #@32d
    .line 284
    :cond_13
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@330
    move-result-object v18

    #@331
    .line 285
    move-object/from16 v0, p0

    #@333
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@335
    move-object/from16 v25, v0

    #@337
    move-object/from16 v0, v25

    #@339
    move/from16 v1, v23

    #@33b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@33e
    move-result-object v20

    #@33f
    check-cast v20, Landroid/util/ArraySet;

    #@341
    .line 286
    .local v20, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v20, :cond_14

    #@343
    .line 287
    new-instance v20, Landroid/util/ArraySet;

    #@345
    .end local v20    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    #@348
    .line 288
    .restart local v20    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@34a
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    #@34c
    move-object/from16 v25, v0

    #@34e
    move-object/from16 v0, v25

    #@350
    move/from16 v1, v23

    #@352
    move-object/from16 v2, v20

    #@354
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@357
    .line 290
    :cond_14
    move-object/from16 v0, v20

    #@359
    move-object/from16 v1, v18

    #@35b
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@35e
    .line 291
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@361
    goto/16 :goto_2

    #@363
    .line 294
    .end local v18    # "perm":Ljava/lang/String;
    .end local v20    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "uid":I
    .end local v24    # "uidStr":Ljava/lang/String;
    :cond_15
    const-string/jumbo v25, "name"

    #@366
    const/16 v26, 0x0

    #@368
    move-object/from16 v0, v17

    #@36a
    move-object/from16 v1, v26

    #@36c
    move-object/from16 v2, v25

    #@36e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@371
    move-result-object v13

    #@372
    .line 295
    .local v13, "lname":Ljava/lang/String;
    const-string/jumbo v25, "file"

    #@375
    const/16 v26, 0x0

    #@377
    move-object/from16 v0, v17

    #@379
    move-object/from16 v1, v26

    #@37b
    move-object/from16 v2, v25

    #@37d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@380
    move-result-object v12

    #@381
    .line 296
    .local v12, "lfile":Ljava/lang/String;
    if-nez v13, :cond_16

    #@383
    .line 297
    const-string/jumbo v25, "SystemConfig"

    #@386
    new-instance v26, Ljava/lang/StringBuilder;

    #@388
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@38b
    const-string/jumbo v27, "<library> without name in "

    #@38e
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@391
    move-result-object v26

    #@392
    move-object/from16 v0, v26

    #@394
    move-object/from16 v1, p1

    #@396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v26

    #@39a
    const-string/jumbo v27, " at "

    #@39d
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a0
    move-result-object v26

    #@3a1
    .line 298
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3a4
    move-result-object v27

    #@3a5
    .line 297
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a8
    move-result-object v26

    #@3a9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ac
    move-result-object v26

    #@3ad
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b0
    .line 306
    :goto_6
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b3
    goto/16 :goto_2

    #@3b5
    .line 299
    :cond_16
    if-nez v12, :cond_17

    #@3b7
    .line 300
    const-string/jumbo v25, "SystemConfig"

    #@3ba
    new-instance v26, Ljava/lang/StringBuilder;

    #@3bc
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@3bf
    const-string/jumbo v27, "<library> without file in "

    #@3c2
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c5
    move-result-object v26

    #@3c6
    move-object/from16 v0, v26

    #@3c8
    move-object/from16 v1, p1

    #@3ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3cd
    move-result-object v26

    #@3ce
    const-string/jumbo v27, " at "

    #@3d1
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v26

    #@3d5
    .line 301
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3d8
    move-result-object v27

    #@3d9
    .line 300
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3dc
    move-result-object v26

    #@3dd
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e0
    move-result-object v26

    #@3e1
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e4
    goto :goto_6

    #@3e5
    .line 304
    :cond_17
    move-object/from16 v0, p0

    #@3e7
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    #@3e9
    move-object/from16 v25, v0

    #@3eb
    move-object/from16 v0, v25

    #@3ed
    invoke-virtual {v0, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f0
    goto :goto_6

    #@3f1
    .line 315
    .end local v12    # "lfile":Ljava/lang/String;
    .end local v13    # "lname":Ljava/lang/String;
    .restart local v8    # "fname":Ljava/lang/String;
    :cond_18
    const-string/jumbo v25, "notLowRam"

    #@3f4
    const/16 v26, 0x0

    #@3f6
    move-object/from16 v0, v17

    #@3f8
    move-object/from16 v1, v26

    #@3fa
    move-object/from16 v2, v25

    #@3fc
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3ff
    move-result-object v16

    #@400
    .line 316
    .local v16, "notLowRam":Ljava/lang/String;
    const-string/jumbo v25, "true"

    #@403
    move-object/from16 v0, v25

    #@405
    move-object/from16 v1, v16

    #@407
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40a
    move-result v25

    #@40b
    if-eqz v25, :cond_19

    #@40d
    const/4 v3, 0x0

    #@40e
    .restart local v3    # "allowed":Z
    goto/16 :goto_3

    #@410
    .end local v3    # "allowed":Z
    :cond_19
    const/4 v3, 0x1

    #@411
    .restart local v3    # "allowed":Z
    goto/16 :goto_3

    #@413
    .line 321
    .end local v16    # "notLowRam":Ljava/lang/String;
    :cond_1a
    if-eqz v3, :cond_b

    #@415
    .line 323
    new-instance v7, Landroid/content/pm/FeatureInfo;

    #@417
    invoke-direct {v7}, Landroid/content/pm/FeatureInfo;-><init>()V

    #@41a
    .line 324
    .local v7, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v8, v7, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@41c
    .line 325
    move-object/from16 v0, p0

    #@41e
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@420
    move-object/from16 v25, v0

    #@422
    move-object/from16 v0, v25

    #@424
    invoke-virtual {v0, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@427
    goto/16 :goto_4

    #@429
    .line 330
    .end local v3    # "allowed":Z
    .end local v7    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v8    # "fname":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v25, "unavailable-feature"

    #@42c
    move-object/from16 v0, v25

    #@42e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@431
    move-result v25

    #@432
    if-eqz v25, :cond_1d

    #@434
    .line 331
    const-string/jumbo v25, "name"

    #@437
    const/16 v26, 0x0

    #@439
    move-object/from16 v0, v17

    #@43b
    move-object/from16 v1, v26

    #@43d
    move-object/from16 v2, v25

    #@43f
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@442
    move-result-object v8

    #@443
    .line 332
    .restart local v8    # "fname":Ljava/lang/String;
    if-nez v8, :cond_1c

    #@445
    .line 333
    const-string/jumbo v25, "SystemConfig"

    #@448
    new-instance v26, Ljava/lang/StringBuilder;

    #@44a
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@44d
    const-string/jumbo v27, "<unavailable-feature> without name in "

    #@450
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v26

    #@454
    move-object/from16 v0, v26

    #@456
    move-object/from16 v1, p1

    #@458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v26

    #@45c
    const-string/jumbo v27, " at "

    #@45f
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@462
    move-result-object v26

    #@463
    .line 334
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@466
    move-result-object v27

    #@467
    .line 333
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46a
    move-result-object v26

    #@46b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46e
    move-result-object v26

    #@46f
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@472
    .line 338
    :goto_7
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@475
    goto/16 :goto_2

    #@477
    .line 336
    :cond_1c
    move-object/from16 v0, p0

    #@479
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    #@47b
    move-object/from16 v25, v0

    #@47d
    move-object/from16 v0, v25

    #@47f
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@482
    goto :goto_7

    #@483
    .line 341
    .end local v8    # "fname":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v25, "allow-in-power-save-except-idle"

    #@486
    move-object/from16 v0, v25

    #@488
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48b
    move-result v25

    #@48c
    if-eqz v25, :cond_1e

    #@48e
    if-eqz p2, :cond_21

    #@490
    .line 352
    :cond_1e
    const-string/jumbo v25, "allow-in-power-save"

    #@493
    move-object/from16 v0, v25

    #@495
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@498
    move-result v25

    #@499
    if-eqz v25, :cond_1f

    #@49b
    if-eqz p2, :cond_23

    #@49d
    .line 363
    :cond_1f
    const-string/jumbo v25, "fixed-ime-app"

    #@4a0
    move-object/from16 v0, v25

    #@4a2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a5
    move-result v25

    #@4a6
    if-eqz v25, :cond_20

    #@4a8
    if-eqz p2, :cond_25

    #@4aa
    .line 374
    :cond_20
    const-string/jumbo v25, "app-link"

    #@4ad
    move-object/from16 v0, v25

    #@4af
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b2
    move-result v25

    #@4b3
    if-eqz v25, :cond_28

    #@4b5
    .line 375
    const-string/jumbo v25, "package"

    #@4b8
    const/16 v26, 0x0

    #@4ba
    move-object/from16 v0, v17

    #@4bc
    move-object/from16 v1, v26

    #@4be
    move-object/from16 v2, v25

    #@4c0
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4c3
    move-result-object v21

    #@4c4
    .line 376
    .local v21, "pkgname":Ljava/lang/String;
    if-nez v21, :cond_27

    #@4c6
    .line 377
    const-string/jumbo v25, "SystemConfig"

    #@4c9
    new-instance v26, Ljava/lang/StringBuilder;

    #@4cb
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@4ce
    const-string/jumbo v27, "<app-link> without package in "

    #@4d1
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d4
    move-result-object v26

    #@4d5
    move-object/from16 v0, v26

    #@4d7
    move-object/from16 v1, p1

    #@4d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4dc
    move-result-object v26

    #@4dd
    const-string/jumbo v27, " at "

    #@4e0
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e3
    move-result-object v26

    #@4e4
    .line 378
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4e7
    move-result-object v27

    #@4e8
    .line 377
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4eb
    move-result-object v26

    #@4ec
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ef
    move-result-object v26

    #@4f0
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f3
    .line 382
    :goto_8
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4f6
    goto/16 :goto_2

    #@4f8
    .line 342
    .end local v21    # "pkgname":Ljava/lang/String;
    :cond_21
    const-string/jumbo v25, "package"

    #@4fb
    const/16 v26, 0x0

    #@4fd
    move-object/from16 v0, v17

    #@4ff
    move-object/from16 v1, v26

    #@501
    move-object/from16 v2, v25

    #@503
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@506
    move-result-object v21

    #@507
    .line 343
    .restart local v21    # "pkgname":Ljava/lang/String;
    if-nez v21, :cond_22

    #@509
    .line 344
    const-string/jumbo v25, "SystemConfig"

    #@50c
    new-instance v26, Ljava/lang/StringBuilder;

    #@50e
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@511
    const-string/jumbo v27, "<allow-in-power-save-except-idle> without package in "

    #@514
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@517
    move-result-object v26

    #@518
    move-object/from16 v0, v26

    #@51a
    move-object/from16 v1, p1

    #@51c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51f
    move-result-object v26

    #@520
    .line 345
    const-string/jumbo v27, " at "

    #@523
    .line 344
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@526
    move-result-object v26

    #@527
    .line 345
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@52a
    move-result-object v27

    #@52b
    .line 344
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52e
    move-result-object v26

    #@52f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@532
    move-result-object v26

    #@533
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@536
    .line 349
    :goto_9
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@539
    goto/16 :goto_2

    #@53b
    .line 347
    :cond_22
    move-object/from16 v0, p0

    #@53d
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    #@53f
    move-object/from16 v25, v0

    #@541
    move-object/from16 v0, v25

    #@543
    move-object/from16 v1, v21

    #@545
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@548
    goto :goto_9

    #@549
    .line 353
    .end local v21    # "pkgname":Ljava/lang/String;
    :cond_23
    const-string/jumbo v25, "package"

    #@54c
    const/16 v26, 0x0

    #@54e
    move-object/from16 v0, v17

    #@550
    move-object/from16 v1, v26

    #@552
    move-object/from16 v2, v25

    #@554
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@557
    move-result-object v21

    #@558
    .line 354
    .restart local v21    # "pkgname":Ljava/lang/String;
    if-nez v21, :cond_24

    #@55a
    .line 355
    const-string/jumbo v25, "SystemConfig"

    #@55d
    new-instance v26, Ljava/lang/StringBuilder;

    #@55f
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@562
    const-string/jumbo v27, "<allow-in-power-save> without package in "

    #@565
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@568
    move-result-object v26

    #@569
    move-object/from16 v0, v26

    #@56b
    move-object/from16 v1, p1

    #@56d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@570
    move-result-object v26

    #@571
    const-string/jumbo v27, " at "

    #@574
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@577
    move-result-object v26

    #@578
    .line 356
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@57b
    move-result-object v27

    #@57c
    .line 355
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57f
    move-result-object v26

    #@580
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@583
    move-result-object v26

    #@584
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@587
    .line 360
    :goto_a
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@58a
    goto/16 :goto_2

    #@58c
    .line 358
    :cond_24
    move-object/from16 v0, p0

    #@58e
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    #@590
    move-object/from16 v25, v0

    #@592
    move-object/from16 v0, v25

    #@594
    move-object/from16 v1, v21

    #@596
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@599
    goto :goto_a

    #@59a
    .line 364
    .end local v21    # "pkgname":Ljava/lang/String;
    :cond_25
    const-string/jumbo v25, "package"

    #@59d
    const/16 v26, 0x0

    #@59f
    move-object/from16 v0, v17

    #@5a1
    move-object/from16 v1, v26

    #@5a3
    move-object/from16 v2, v25

    #@5a5
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a8
    move-result-object v21

    #@5a9
    .line 365
    .restart local v21    # "pkgname":Ljava/lang/String;
    if-nez v21, :cond_26

    #@5ab
    .line 366
    const-string/jumbo v25, "SystemConfig"

    #@5ae
    new-instance v26, Ljava/lang/StringBuilder;

    #@5b0
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@5b3
    const-string/jumbo v27, "<fixed-ime-app> without package in "

    #@5b6
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b9
    move-result-object v26

    #@5ba
    move-object/from16 v0, v26

    #@5bc
    move-object/from16 v1, p1

    #@5be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c1
    move-result-object v26

    #@5c2
    const-string/jumbo v27, " at "

    #@5c5
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c8
    move-result-object v26

    #@5c9
    .line 367
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5cc
    move-result-object v27

    #@5cd
    .line 366
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d0
    move-result-object v26

    #@5d1
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d4
    move-result-object v26

    #@5d5
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5d8
    .line 371
    :goto_b
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5db
    goto/16 :goto_2

    #@5dd
    .line 369
    :cond_26
    move-object/from16 v0, p0

    #@5df
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mFixedImeApps:Landroid/util/ArraySet;

    #@5e1
    move-object/from16 v25, v0

    #@5e3
    move-object/from16 v0, v25

    #@5e5
    move-object/from16 v1, v21

    #@5e7
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5ea
    goto :goto_b

    #@5eb
    .line 380
    :cond_27
    move-object/from16 v0, p0

    #@5ed
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    #@5ef
    move-object/from16 v25, v0

    #@5f1
    move-object/from16 v0, v25

    #@5f3
    move-object/from16 v1, v21

    #@5f5
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5f8
    goto/16 :goto_8

    #@5fa
    .line 385
    .end local v21    # "pkgname":Ljava/lang/String;
    :cond_28
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@5fd
    goto/16 :goto_2

    #@5ff
    .line 201
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "type":I
    .restart local v9    # "fname$iterator":Ljava/util/Iterator;
    :cond_29
    return-void
.end method


# virtual methods
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
    .line 136
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
    .line 132
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
    .line 124
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getFixedImeApps()Landroid/util/ArraySet;
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
    .line 140
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mFixedImeApps:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getGlobalGids()[I
    .locals 1

    #@0
    .prologue
    .line 112
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
    .line 144
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
    .line 128
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
    .line 120
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
    .line 116
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

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
    .line 406
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v7, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 407
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
    .line 410
    :cond_0
    const-string/jumbo v7, "perUser"

    #@27
    const/4 v8, 0x0

    #@28
    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@2b
    move-result v3

    #@2c
    .line 411
    .local v3, "perUser":Z
    new-instance v4, Lcom/android/server/SystemConfig$PermissionEntry;

    #@2e
    invoke-direct {v4, p2, v3}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    #@31
    .line 412
    .local v4, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v7, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 414
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@39
    move-result v2

    #@3a
    .line 416
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
    .line 417
    if-ne v6, v10, :cond_2

    #@43
    .line 418
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@46
    move-result v7

    #@47
    if-le v7, v2, :cond_5

    #@49
    .line 419
    :cond_2
    if-eq v6, v10, :cond_1

    #@4b
    .line 420
    const/4 v7, 0x4

    #@4c
    if-eq v6, v7, :cond_1

    #@4e
    .line 424
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 425
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    #@55
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_3

    #@5b
    .line 426
    const-string/jumbo v7, "gid"

    #@5e
    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 427
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@64
    .line 428
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    #@67
    move-result v0

    #@68
    .line 429
    .local v0, "gid":I
    iget-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    #@6a
    invoke-static {v7, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@6d
    move-result-object v7

    #@6e
    iput-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    #@70
    .line 435
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@73
    goto :goto_0

    #@74
    .line 431
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
    .line 432
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    .line 431
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
    .line 405
    .end local v1    # "gidStr":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method readPermissions(Ljava/io/File;Z)V
    .locals 8
    .param p1, "libraryDir"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    #@0
    .prologue
    .line 163
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
    .line 169
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_2

    #@12
    .line 170
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
    .line 171
    return-void

    #@34
    .line 164
    :cond_0
    if-nez p2, :cond_1

    #@36
    .line 165
    const-string/jumbo v2, "SystemConfig"

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "No directory "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    const-string/jumbo v4, ", skipping"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 167
    :cond_1
    return-void

    #@58
    .line 175
    :cond_2
    const/4 v1, 0x0

    #@59
    .line 176
    .local v1, "platformFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@5c
    move-result-object v3

    #@5d
    const/4 v2, 0x0

    #@5e
    array-length v4, v3

    #@5f
    .end local v1    # "platformFile":Ljava/io/File;
    :goto_0
    if-ge v2, v4, :cond_6

    #@61
    aget-object v0, v3, v2

    #@63
    .line 178
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    const-string/jumbo v6, "etc/permissions/platform.xml"

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_3

    #@70
    .line 179
    move-object v1, v0

    #@71
    .line 176
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_0

    #@74
    .line 183
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    const-string/jumbo v6, ".xml"

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7e
    move-result v5

    #@7f
    if-nez v5, :cond_4

    #@81
    .line 184
    const-string/jumbo v5, "SystemConfig"

    #@84
    new-instance v6, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v7, "Non-xml file "

    #@8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    const-string/jumbo v7, " in "

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    const-string/jumbo v7, " directory, ignoring"

    #@a2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v6

    #@aa
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    goto :goto_1

    #@ae
    .line 187
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    #@b1
    move-result v5

    #@b2
    if-nez v5, :cond_5

    #@b4
    .line 188
    const-string/jumbo v5, "SystemConfig"

    #@b7
    new-instance v6, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v7, "Permissions library file "

    #@bf
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v6

    #@c7
    const-string/jumbo v7, " cannot be read"

    #@ca
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v6

    #@ce
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v6

    #@d2
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto :goto_1

    #@d6
    .line 192
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;Z)V

    #@d9
    goto :goto_1

    #@da
    .line 196
    .end local v0    # "f":Ljava/io/File;
    :cond_6
    if-eqz v1, :cond_7

    #@dc
    .line 197
    invoke-direct {p0, v1, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;Z)V

    #@df
    .line 161
    :cond_7
    return-void
.end method
