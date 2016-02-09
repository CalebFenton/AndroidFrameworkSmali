.class abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field private static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field frozen:Z

.field installPermissionsFixed:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

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
    .line 102
    new-instance v0, Landroid/content/pm/PackageUserState;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    #@7
    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 5
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    #@0
    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    #@3
    .line 96
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    #@5
    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@a
    .line 100
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    #@c
    invoke-direct {v1}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@11
    .line 106
    new-instance v1, Landroid/util/SparseArray;

    #@13
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@18
    .line 108
    const/4 v1, 0x1

    #@19
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@1b
    .line 115
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->frozen:Z

    #@1e
    .line 144
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    #@20
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    #@22
    .line 145
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    #@24
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    #@26
    .line 146
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    #@28
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    #@2a
    .line 147
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    #@2c
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    #@2e
    .line 148
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    #@30
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    #@32
    .line 149
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    #@34
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    #@36
    .line 150
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@38
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@3a
    .line 151
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@3c
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@3e
    .line 152
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@40
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@42
    .line 153
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@44
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@46
    .line 154
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@48
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@4a
    .line 155
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@4c
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@4e
    .line 156
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@50
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@52
    .line 157
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    #@54
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    #@56
    .line 159
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    #@58
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    #@5a
    .line 161
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    #@5c
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@5e
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    #@61
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@63
    .line 163
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@65
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@67
    .line 164
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@69
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@6c
    .line 165
    const/4 v0, 0x0

    #@6d
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@6f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@72
    move-result v1

    #@73
    if-ge v0, v1, :cond_0

    #@75
    .line 166
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@77
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@79
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@7c
    move-result v3

    #@7d
    .line 167
    new-instance v4, Landroid/content/pm/PackageUserState;

    #@7f
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@81
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@84
    move-result-object v1

    #@85
    check-cast v1, Landroid/content/pm/PackageUserState;

    #@87
    invoke-direct {v4, v1}, Landroid/content/pm/PackageUserState;-><init>(Landroid/content/pm/PackageUserState;)V

    #@8a
    .line 166
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8d
    .line 165
    add-int/lit8 v0, v0, 0x1

    #@8f
    goto :goto_0

    #@90
    .line 169
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@92
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@94
    .line 171
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    #@96
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    #@98
    .line 173
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@9a
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@9c
    .line 174
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@9e
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@a0
    .line 176
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    #@a2
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@a4
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    #@a7
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@a9
    .line 141
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
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

    #@0
    .prologue
    .line 130
    move/from16 v0, p10

    #@2
    move/from16 v1, p11

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    #@7
    .line 96
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    #@9
    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    #@c
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@e
    .line 100
    new-instance v2, Lcom/android/server/pm/PackageKeySetData;

    #@10
    invoke-direct {v2}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    #@13
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@15
    .line 106
    new-instance v2, Landroid/util/SparseArray;

    #@17
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@1a
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@1c
    .line 108
    const/4 v2, 0x1

    #@1d
    iput v2, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@1f
    .line 115
    const/4 v2, 0x0

    #@20
    iput-boolean v2, p0, Lcom/android/server/pm/PackageSettingBase;->frozen:Z

    #@22
    .line 131
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    #@24
    .line 132
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    #@26
    move-object v2, p0

    #@27
    move-object v3, p3

    #@28
    move-object v4, p4

    #@29
    move-object v5, p5

    #@2a
    move-object/from16 v6, p6

    #@2c
    move-object/from16 v7, p7

    #@2e
    move-object/from16 v8, p8

    #@30
    move/from16 v9, p9

    #@32
    .line 133
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@35
    .line 129
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/PackageUserState;

    #@8
    .line 246
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    #@a
    .line 247
    new-instance v0, Landroid/content/pm/PackageUserState;

    #@c
    .end local v0    # "state":Landroid/content/pm/PackageUserState;
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    #@f
    .line 248
    .restart local v0    # "state":Landroid/content/pm/PackageUserState;
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 250
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
    .line 399
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
    .line 398
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 403
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
    .line 402
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 476
    const/4 v1, 0x0

    #@5
    .line 475
    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@7
    .line 474
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    #@0
    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@2
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@4
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@7
    .line 226
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@9
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@b
    .line 227
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@d
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@f
    .line 228
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@11
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@13
    .line 229
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@15
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@17
    .line 230
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@19
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@1b
    .line 231
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@1d
    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@1f
    .line 232
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@21
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@23
    .line 233
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@25
    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@27
    .line 234
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@2c
    .line 235
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
    .line 236
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
    .line 235
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 238
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@4d
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@4f
    .line 239
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@51
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@53
    .line 240
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@55
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@57
    .line 241
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@59
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@5b
    .line 224
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 415
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@5
    move-result-object v1

    #@6
    .line 416
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 417
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 418
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@12
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    or-int/2addr v0, v2

    #@17
    .line 419
    .local v0, "changed":Z
    return v0

    #@18
    .line 417
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
    .line 407
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@5
    move-result-object v1

    #@6
    .line 408
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 409
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 410
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@12
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    or-int/2addr v0, v2

    #@17
    .line 411
    .local v0, "changed":Z
    return v0

    #@18
    .line 409
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
    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@6
    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 432
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 433
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
    .line 434
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 435
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 436
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@18
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    .line 435
    if-eqz v1, :cond_1

    #@1e
    .line 437
    const/4 v1, 0x2

    #@1f
    return v1

    #@20
    .line 439
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
    .line 366
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
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v2

    #@4
    .line 461
    .local v2, "state":Landroid/content/pm/PackageUserState;
    iget v3, v2, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@6
    int-to-long v0, v3

    #@7
    .line 462
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
    .line 463
    return-wide v0
.end method

.method getEnabled(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 268
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
    .line 362
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
    .line 327
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
    .line 214
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@2
    return v0
.end method

.method getInstalled(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 280
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
    .line 198
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@2
    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 272
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
    .line 319
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
    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    #@6
    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 206
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
    .line 182
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    #@2
    .line 183
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    #@8
    .line 184
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    #@a
    .line 185
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    #@10
    .line 186
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@12
    .line 187
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@14
    .line 188
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@16
    .line 189
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    #@18
    .line 190
    iput p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    #@1a
    .line 181
    return-void
.end method

.method isAnyInstalled([I)Z
    .locals 5
    .param p1, "users"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 284
    array-length v3, p1

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget v0, p1, v1

    #@7
    .line 285
    .local v0, "user":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@a
    move-result-object v4

    #@b
    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 286
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 289
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
    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v0

    #@5
    .line 389
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz p2, :cond_0

    #@7
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 390
    new-instance v1, Landroid/util/ArraySet;

    #@d
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@10
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@12
    .line 392
    :cond_0
    if-eqz p3, :cond_1

    #@14
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@16
    if-nez v1, :cond_1

    #@18
    .line 393
    new-instance v1, Landroid/util/ArraySet;

    #@1a
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@1d
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@1f
    .line 395
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
    .line 293
    const/4 v0, 0x0

    #@2
    .line 294
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
    .line 295
    .local v2, "user":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    #@b
    move-result v6

    #@c
    if-ne v6, p2, :cond_0

    #@e
    .line 296
    add-int/lit8 v0, v0, 0x1

    #@10
    .line 294
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@12
    goto :goto_0

    #@13
    .line 299
    .end local v2    # "user":I
    :cond_1
    new-array v1, v0, [I

    #@15
    .line 300
    .local v1, "res":[I
    const/4 v0, 0x0

    #@16
    .line 301
    array-length v4, p1

    #@17
    :goto_1
    if-ge v3, v4, :cond_3

    #@19
    aget v2, p1, v3

    #@1b
    .line 302
    .restart local v2    # "user":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    #@1e
    move-result v5

    #@1f
    if-ne v5, p2, :cond_2

    #@21
    .line 303
    aput v2, v1, v0

    #@23
    .line 304
    add-int/lit8 v0, v0, 0x1

    #@25
    .line 301
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_1

    #@28
    .line 307
    .end local v2    # "user":I
    :cond_3
    return-object v1
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/pm/PackageUserState;

    #@8
    .line 255
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz v0, :cond_0

    #@a
    .line 256
    return-object v0

    #@b
    .line 258
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
    .line 444
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@5
    .line 443
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
    .line 423
    invoke-virtual {p0, p2, v2, v2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v1

    #@5
    .line 424
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 425
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    .line 426
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 427
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@15
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    .line 426
    :goto_1
    or-int/2addr v0, v2

    #@1a
    .line 428
    .local v0, "changed":Z
    return v0

    #@1b
    .line 425
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    #@1c
    .local v0, "changed":Z
    goto :goto_0

    #@1d
    .line 427
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
    .line 339
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@6
    .line 338
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
    .line 374
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@6
    .line 373
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
    .line 383
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v1

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 384
    new-instance v0, Landroid/util/ArraySet;

    #@9
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@c
    .line 383
    :cond_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@e
    .line 382
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "generation"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 467
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 468
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@6
    .line 469
    const/4 v1, 0x2

    #@7
    if-ne p1, v1, :cond_0

    #@9
    .line 470
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@b
    .line 466
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
    .line 262
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    #@6
    .line 264
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@8
    .line 261
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
    .line 370
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@6
    .line 369
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
    .line 378
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@4
    move-result-object v1

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 379
    new-instance v0, Landroid/util/ArraySet;

    #@9
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@c
    .line 378
    :cond_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@e
    .line 377
    return-void
.end method

.method setHidden(ZI)V
    .locals 1
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 331
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@6
    .line 330
    return-void
.end method

.method public setInstallStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    #@0
    .prologue
    .line 210
    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@2
    .line 209
    return-void
.end method

.method setInstalled(ZI)V
    .locals 1
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 276
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    #@6
    .line 275
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@2
    .line 193
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@2
    .line 451
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 323
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@6
    .line 322
    return-void
.end method

.method setStopped(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 315
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    #@6
    .line 314
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "newStamp"    # J

    #@0
    .prologue
    .line 218
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    #@2
    .line 217
    return-void
.end method

.method setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabled"    # I
    .param p3, "installed"    # Z
    .param p4, "stopped"    # Z
    .param p5, "notLaunched"    # Z
    .param p6, "hidden"    # Z
    .param p7, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p10, "blockUninstall"    # Z
    .param p11, "domainVerifState"    # I
    .param p12, "linkGeneration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZZ",
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
    .line 347
    .local p8, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p9, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    #@3
    move-result-object v0

    #@4
    .line 348
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p2, v0, Landroid/content/pm/PackageUserState;->enabled:I

    #@6
    .line 349
    iput-boolean p3, v0, Landroid/content/pm/PackageUserState;->installed:Z

    #@8
    .line 350
    iput-boolean p4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    #@a
    .line 351
    iput-boolean p5, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@c
    .line 352
    iput-boolean p6, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@e
    .line 353
    iput-object p7, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@10
    .line 354
    iput-object p8, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@12
    .line 355
    iput-object p9, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@14
    .line 356
    iput-boolean p10, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@16
    .line 357
    iput p11, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@18
    .line 358
    iput p12, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@1a
    .line 346
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@2
    .line 201
    return-void
.end method
