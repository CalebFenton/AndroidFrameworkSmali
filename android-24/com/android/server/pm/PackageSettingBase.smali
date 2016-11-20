.class abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field private static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field childPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field installPermissionsFixed:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field isOrphaned:Z

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field oldCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field parentPackageName:Ljava/lang/String;

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field private final userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field versionCode:I

.field volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/content/pm/PackageUserState;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    #@7
    .line 38
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 6
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    #@4
    .line 102
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    #@6
    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@b
    .line 106
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    #@d
    invoke-direct {v1}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@12
    .line 112
    new-instance v1, Landroid/util/SparseArray;

    #@14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@19
    .line 114
    const/4 v1, 0x1

    #@1a
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@1c
    .line 157
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    #@1e
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    #@20
    .line 158
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    #@22
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    #@24
    .line 159
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    #@26
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    #@28
    .line 160
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    #@2a
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    #@2c
    .line 161
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    #@2e
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    #@30
    .line 162
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    #@32
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    #@34
    .line 163
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@36
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@38
    .line 164
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@3a
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@3c
    .line 165
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@3e
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@40
    .line 166
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@42
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@44
    .line 167
    iget-wide v4, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@46
    iput-wide v4, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@48
    .line 168
    iget-wide v4, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@4a
    iput-wide v4, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@4c
    .line 169
    iget-wide v4, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@4e
    iput-wide v4, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@50
    .line 170
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    #@52
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    #@54
    .line 172
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    #@56
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    #@58
    .line 174
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    #@5a
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@5c
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    #@5f
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@61
    .line 176
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@63
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@65
    .line 177
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@67
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@6a
    .line 178
    const/4 v0, 0x0

    #@6b
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@6d
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@70
    move-result v1

    #@71
    if-ge v0, v1, :cond_0

    #@73
    .line 179
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@75
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@77
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@7a
    move-result v4

    #@7b
    .line 180
    new-instance v5, Landroid/content/pm/PackageUserState;

    #@7d
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@7f
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@82
    move-result-object v1

    #@83
    check-cast v1, Landroid/content/pm/PackageUserState;

    #@85
    invoke-direct {v5, v1}, Landroid/content/pm/PackageUserState;-><init>(Landroid/content/pm/PackageUserState;)V

    #@88
    .line 179
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8b
    .line 178
    add-int/lit8 v0, v0, 0x1

    #@8d
    goto :goto_0

    #@8e
    .line 182
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@90
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@92
    .line 184
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    #@94
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    #@96
    .line 186
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@98
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@9a
    .line 187
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    #@9c
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    #@9e
    .line 188
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@a0
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@a2
    .line 190
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    #@a4
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@a6
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    #@a9
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@ab
    .line 192
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    #@ad
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    #@af
    .line 193
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    #@b1
    if-eqz v1, :cond_1

    #@b3
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    #@b5
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    #@b7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@ba
    .line 193
    :goto_1
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    #@bc
    .line 154
    return-void

    #@bd
    :cond_1
    move-object v1, v2

    #@be
    .line 194
    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "pVersionCode"    # I
    .param p10, "pkgFlags"    # I
    .param p11, "pkgPrivateFlags"    # I
    .param p12, "parentPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    .local p13, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v0, p10

    #@2
    move/from16 v1, p11

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    #@7
    .line 102
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    #@9
    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    #@c
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@e
    .line 106
    new-instance v2, Lcom/android/server/pm/PackageKeySetData;

    #@10
    invoke-direct {v2}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    #@13
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@15
    .line 112
    new-instance v2, Landroid/util/SparseArray;

    #@17
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@1a
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@1c
    .line 114
    const/4 v2, 0x1

    #@1d
    iput v2, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@1f
    .line 141
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    #@21
    .line 142
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    #@23
    .line 143
    move-object/from16 v0, p12

    #@25
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    #@27
    .line 144
    if-eqz p13, :cond_0

    #@29
    .line 145
    new-instance v2, Ljava/util/ArrayList;

    #@2b
    move-object/from16 v0, p13

    #@2d
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@30
    .line 144
    :goto_0
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    #@32
    move-object v2, p0

    #@33
    move-object v3, p3

    #@34
    move-object v4, p4

    #@35
    move-object v5, p5

    #@36
    move-object/from16 v6, p6

    #@38
    move-object/from16 v7, p7

    #@3a
    move-object/from16 v8, p8

    #@3c
    move/from16 v9, p9

    #@3e
    .line 146
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@41
    .line 139
    return-void

    #@42
    .line 145
    :cond_0
    const/4 v2, 0x0

    #@43
    goto :goto_0
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/PackageUserState;

    #@8
    .line 265
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    #@a
    .line 266
    new-instance v0, Landroid/content/pm/PackageUserState;

    #@c
    .end local v0    # "state":Landroid/content/pm/PackageUserState;
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    #@f
    .line 267
    .restart local v0    # "state":Landroid/content/pm/PackageUserState;
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 269
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 436
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@b
    .line 435
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 440
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@b
    .line 439
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 513
    const/4 v1, 0x0

    #@5
    .line 512
    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@7
    .line 511
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    #@0
    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@2
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@4
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@7
    .line 244
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@9
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@b
    .line 245
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@d
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@f
    .line 246
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@11
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@13
    .line 247
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@15
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@17
    .line 248
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@19
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@1b
    .line 249
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@1d
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@1f
    .line 250
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@21
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@23
    .line 251
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@25
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@27
    .line 252
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@2c
    .line 253
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@32
    move-result v1

    #@33
    if-ge v0, v1, :cond_0

    #@35
    .line 254
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@37
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@39
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@3c
    move-result v3

    #@3d
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@3f
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    check-cast v1, Landroid/content/pm/PackageUserState;

    #@45
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@48
    .line 253
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 256
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@4d
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@4f
    .line 257
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@51
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@53
    .line 258
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@55
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@57
    .line 259
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@59
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@5b
    .line 260
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@5d
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@5f
    .line 242
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 452
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@5
    move-result-object v1

    #@6
    .line 453
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 454
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 455
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@12
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    or-int/2addr v0, v2

    #@17
    .line 456
    .local v0, "changed":Z
    return v0

    #@18
    .line 454
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    #@19
    .local v0, "changed":Z
    goto :goto_0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 444
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@5
    move-result-object v1

    #@6
    .line 445
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 446
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 447
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@12
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    or-int/2addr v0, v2

    #@17
    .line 448
    .local v0, "changed":Z
    return v0

    #@18
    .line 446
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    #@19
    .local v0, "changed":Z
    goto :goto_0
.end method

.method getBlockUninstall(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@6
    return v0
.end method

.method getCeDataInode(I)J
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-wide v0, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    #@6
    return-wide v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 469
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 470
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@a
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 471
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 472
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 473
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    .line 472
    if-eqz v1, :cond_1

    #@1e
    .line 474
    const/4 v1, 0x2

    #@1f
    return v1

    #@20
    .line 476
    :cond_1
    const/4 v1, 0x0

    #@21
    return v1
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@6
    return-object v0
.end method

.method getDomainVerificationStatusForUser(I)J
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v2

    #@4
    .line 498
    .local v2, "state":Landroid/content/pm/PackageUserState;
    iget v3, v2, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@6
    int-to-long v0, v3

    #@7
    .line 499
    .local v0, "result":J
    iget v3, v2, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@9
    int-to-long v4, v3

    #@a
    const/16 v3, 0x20

    #@c
    shl-long/2addr v4, v3

    #@d
    or-long/2addr v0, v4

    #@e
    .line 500
    return-wide v0
.end method

.method getEnabled(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    #@6
    return v0
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@6
    return-object v0
.end method

.method getHidden(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@6
    return v0
.end method

.method public getInstallStatus()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@2
    return v0
.end method

.method getInstalled(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    #@6
    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@2
    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method getNotLaunched(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@6
    return v0
.end method

.method getStopped(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    #@6
    return v0
.end method

.method getSuspended(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    #@6
    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "codePath"    # Ljava/io/File;
    .param p2, "resourcePath"    # Ljava/io/File;
    .param p3, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p4, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p5, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p6, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p7, "pVersionCode"    # I

    #@0
    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    #@2
    .line 201
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    #@8
    .line 202
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    #@a
    .line 203
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    #@10
    .line 204
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@12
    .line 205
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@14
    .line 206
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@16
    .line 207
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@18
    .line 208
    iput p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    #@1a
    .line 199
    return-void
.end method

.method isAnyInstalled([I)Z
    .locals 5
    .param p1, "users"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 303
    array-length v3, p1

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget v0, p1, v1

    #@7
    .line 304
    .local v0, "user":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@a
    move-result-object v4

    #@b
    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 305
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 303
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 308
    .end local v0    # "user":I
    :cond_1
    return v2
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 425
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v0

    #@5
    .line 426
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz p2, :cond_0

    #@7
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 427
    new-instance v1, Landroid/util/ArraySet;

    #@d
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@10
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@12
    .line 429
    :cond_0
    if-eqz p3, :cond_1

    #@14
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@16
    if-nez v1, :cond_1

    #@18
    .line 430
    new-instance v1, Landroid/util/ArraySet;

    #@1a
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@1d
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@1f
    .line 432
    :cond_1
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .locals 7
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 312
    const/4 v0, 0x0

    #@2
    .line 313
    .local v0, "num":I
    array-length v5, p1

    #@3
    move v4, v3

    #@4
    :goto_0
    if-ge v4, v5, :cond_1

    #@6
    aget v2, p1, v4

    #@8
    .line 314
    .local v2, "user":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    #@b
    move-result v6

    #@c
    if-ne v6, p2, :cond_0

    #@e
    .line 315
    add-int/lit8 v0, v0, 0x1

    #@10
    .line 313
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@12
    goto :goto_0

    #@13
    .line 318
    .end local v2    # "user":I
    :cond_1
    new-array v1, v0, [I

    #@15
    .line 319
    .local v1, "res":[I
    const/4 v0, 0x0

    #@16
    .line 320
    array-length v4, p1

    #@17
    :goto_1
    if-ge v3, v4, :cond_3

    #@19
    aget v2, p1, v3

    #@1b
    .line 321
    .restart local v2    # "user":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    #@1e
    move-result v5

    #@1f
    if-ne v5, p2, :cond_2

    #@21
    .line 322
    aput v2, v1, v0

    #@23
    .line 323
    add-int/lit8 v0, v0, 0x1

    #@25
    .line 320
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_1

    #@28
    .line 326
    .end local v2    # "user":I
    :cond_3
    return-object v1
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/PackageUserState;

    #@8
    .line 274
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz v0, :cond_0

    #@a
    .line 275
    return-object v0

    #@b
    .line 277
    :cond_0
    sget-object v1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    #@d
    return-object v1
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@5
    .line 480
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 460
    invoke-virtual {p0, p2, v2, v2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v1

    #@5
    .line 461
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 462
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    .line 463
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 464
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@15
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    .line 463
    :goto_1
    or-int/2addr v0, v2

    #@1a
    .line 465
    .local v0, "changed":Z
    return v0

    #@1b
    .line 462
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    #@1c
    .local v0, "changed":Z
    goto :goto_0

    #@1d
    .line 464
    .end local v0    # "changed":Z
    :cond_1
    const/4 v2, 0x0

    #@1e
    goto :goto_1
.end method

.method setBlockUninstall(ZI)V
    .locals 1
    .param p1, "blockUninstall"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 374
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@6
    .line 373
    return-void
.end method

.method setCeDataInode(JI)V
    .locals 1
    .param p1, "ceDataInode"    # J
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 334
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-wide p1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    #@6
    .line 333
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 411
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@6
    .line 410
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 420
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v1

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 421
    new-instance v0, Landroid/util/ArraySet;

    #@9
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@c
    .line 420
    :cond_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@e
    .line 419
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "generation"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 504
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 505
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@6
    .line 506
    const/4 v1, 0x2

    #@7
    if-ne p1, v1, :cond_0

    #@9
    .line 507
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@b
    .line 503
    :cond_0
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 282
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    #@6
    .line 283
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@8
    .line 280
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 407
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@6
    .line 406
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 415
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v1

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 416
    new-instance v0, Landroid/util/ArraySet;

    #@9
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@c
    .line 415
    :cond_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@e
    .line 414
    return-void
.end method

.method setHidden(ZI)V
    .locals 1
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 358
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@6
    .line 357
    return-void
.end method

.method public setInstallStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    #@0
    .prologue
    .line 228
    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@2
    .line 227
    return-void
.end method

.method setInstalled(ZI)V
    .locals 1
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 295
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    #@6
    .line 294
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@2
    .line 211
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    #@0
    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@2
    .line 488
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 350
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@6
    .line 349
    return-void
.end method

.method setStopped(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 342
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    #@6
    .line 341
    return-void
.end method

.method setSuspended(ZI)V
    .locals 1
    .param p1, "suspended"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 366
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    #@6
    .line 365
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "newStamp"    # J

    #@0
    .prologue
    .line 236
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@2
    .line 235
    return-void
.end method

.method setUserState(IJIZZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "ceDataInode"    # J
    .param p4, "enabled"    # I
    .param p5, "installed"    # Z
    .param p6, "stopped"    # Z
    .param p7, "notLaunched"    # Z
    .param p8, "hidden"    # Z
    .param p9, "suspended"    # Z
    .param p10, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p13, "blockUninstall"    # Z
    .param p14, "domainVerifState"    # I
    .param p15, "linkGeneration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 382
    .local p11, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p12, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v1

    #@4
    .line 383
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iput-wide p2, v1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    #@6
    .line 384
    iput p4, v1, Landroid/content/pm/PackageUserState;->enabled:I

    #@8
    .line 385
    iput-boolean p5, v1, Landroid/content/pm/PackageUserState;->installed:Z

    #@a
    .line 386
    iput-boolean p6, v1, Landroid/content/pm/PackageUserState;->stopped:Z

    #@c
    .line 387
    iput-boolean p7, v1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@e
    .line 388
    iput-boolean p8, v1, Landroid/content/pm/PackageUserState;->hidden:Z

    #@10
    .line 389
    iput-boolean p9, v1, Landroid/content/pm/PackageUserState;->suspended:Z

    #@12
    .line 390
    iput-object p10, v1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@14
    .line 391
    iput-object p11, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@16
    .line 392
    iput-object p12, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@18
    .line 393
    iput-boolean p13, v1, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@1a
    .line 394
    move/from16 v0, p14

    #@1c
    iput v0, v1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@1e
    .line 395
    move/from16 v0, p15

    #@20
    iput v0, v1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@22
    .line 381
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@2
    .line 219
    return-void
.end method
