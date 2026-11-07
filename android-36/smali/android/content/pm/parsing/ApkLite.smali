.class public Landroid/content/pm/parsing/ApkLite;
.super Ljava/lang/Object;
.source "ApkLite.java"


# instance fields
.field private final blacklist mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field private final blacklist mConfigForSplit:Ljava/lang/String;

.field private final blacklist mCoreApp:Z

.field private final blacklist mDebuggable:Z

.field private final blacklist mDeclaredLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyInstaller:Ljava/lang/String;

.field private final blacklist mExtractNativeLibs:Z

.field private final blacklist mFeatureSplit:Z

.field private final blacklist mHasDeviceAdminReceiver:Z

.field private final blacklist mInstallLocation:I

.field private final blacklist mIsSdkLibrary:Z

.field private final blacklist mIsStaticLibrary:Z

.field private final blacklist mIsolatedSplits:Z

.field private final blacklist mMinSdkVersion:I

.field private final blacklist mMultiArch:Z

.field private final blacklist mOverlayIsStatic:Z

.field private final blacklist mOverlayPriority:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPageSizeCompat:I

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mProfileableByShell:Z

.field private final blacklist mRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequiredSystemPropertyName:Ljava/lang/String;

.field private final blacklist mRequiredSystemPropertyValue:Ljava/lang/String;

.field private final blacklist mRevisionCode:I

.field private final blacklist mRollbackDataPolicy:I

.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final blacklist mSplitName:Ljava/lang/String;

.field private final blacklist mSplitRequired:Z

.field private final blacklist mSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetPackageName:Ljava/lang/String;

.field private final blacklist mTargetSdkVersion:I

.field private final blacklist mUpdatableSystem:Z

.field private final blacklist mUse32bitAbi:Z

.field private final blacklist mUseEmbeddedDex:Z

.field private final blacklist mUsesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field private final blacklist mUsesSdkLibrariesVersionsMajor:[J

.field private final blacklist mUsesSplitName:Ljava/lang/String;

.field private final blacklist mUsesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private final blacklist mUsesStaticLibrariesVersions:[J

.field private final blacklist mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final blacklist mVersionCode:I

.field private final blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ArchivedPackageParcel;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "archivedPackage"    # Landroid/content/pm/ArchivedPackageParcel;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    .line 260
    iget-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    .line 264
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    .line 267
    invoke-direct {p0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    .line 268
    iget v2, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    .line 269
    iget v2, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    .line 270
    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    .line 271
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    .line 272
    new-array v2, v1, [Landroid/content/pm/VerifierInfo;

    iput-object v2, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    .line 273
    iget-object v2, p2, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    iput-object v2, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 274
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    .line 275
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    .line 276
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    .line 277
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    .line 278
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    .line 279
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    .line 280
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    .line 281
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    .line 282
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    .line 283
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    .line 284
    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    .line 285
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    .line 287
    const/4 v2, 0x1

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    .line 288
    iget v3, p2, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    iput v3, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    .line 289
    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    .line 290
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    .line 291
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    .line 292
    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mIsStaticLibrary:Z

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibraries:Ljava/util/List;

    .line 294
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesVersionsMajor:[J

    .line 295
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibraries:Ljava/util/List;

    .line 297
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesVersions:[J

    .line 298
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 299
    iput-boolean v2, p0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    .line 300
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 302
    iput-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mDeclaredLibraries:Ljava/util/List;

    .line 303
    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mPageSizeCompat:I

    .line 304
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZLjava/util/List;[J[[Ljava/lang/String;ZLjava/util/List;[J[[Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;I)V
    .registers 61
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "isFeatureSplit"    # Z
    .param p5, "configForSplit"    # Ljava/lang/String;
    .param p6, "usesSplitName"    # Ljava/lang/String;
    .param p7, "isSplitRequired"    # Z
    .param p8, "versionCode"    # I
    .param p9, "versionCodeMajor"    # I
    .param p10, "revisionCode"    # I
    .param p11, "installLocation"    # I
    .param p13, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p14, "coreApp"    # Z
    .param p15, "debuggable"    # Z
    .param p16, "profileableByShell"    # Z
    .param p17, "multiArch"    # Z
    .param p18, "use32bitAbi"    # Z
    .param p19, "useEmbeddedDex"    # Z
    .param p20, "extractNativeLibs"    # Z
    .param p21, "isolatedSplits"    # Z
    .param p22, "targetPackageName"    # Ljava/lang/String;
    .param p23, "overlayIsStatic"    # Z
    .param p24, "overlayPriority"    # I
    .param p25, "requiredSystemPropertyName"    # Ljava/lang/String;
    .param p26, "requiredSystemPropertyValue"    # Ljava/lang/String;
    .param p27, "minSdkVersion"    # I
    .param p28, "targetSdkVersion"    # I
    .param p29, "rollbackDataPolicy"    # I
    .param p32, "hasDeviceAdminReceiver"    # Z
    .param p33, "isSdkLibrary"    # Z
    .param p35, "usesSdkLibrariesVersionsMajor"    # [J
    .param p36, "usesSdkLibrariesCertDigests"    # [[Ljava/lang/String;
    .param p37, "isStaticLibrary"    # Z
    .param p39, "usesStaticLibrariesVersionsMajor"    # [J
    .param p40, "usesStaticLibrariesCertDigests"    # [[Ljava/lang/String;
    .param p41, "updatableSystem"    # Z
    .param p42, "emergencyInstaller"    # Ljava/lang/String;
    .param p44, "pageSizeCompat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J[[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J[[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;I)V"
        }
    .end annotation

    .line 210
    .local p12, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local p30, "requiredSplitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p31, "splitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p34, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p38, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p43, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 211
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    .line 212
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    .line 213
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    .line 214
    move-object/from16 v4, p31

    iput-object v4, v0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    .line 215
    move/from16 v5, p4

    iput-boolean v5, v0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    .line 216
    move-object/from16 v6, p5

    iput-object v6, v0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    .line 217
    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    .line 218
    move-object/from16 v8, p30

    iput-object v8, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    .line 219
    if-nez p7, :cond_30

    invoke-direct {v0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result v9

    if-eqz v9, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v9, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v9, 0x1

    :goto_31
    iput-boolean v9, v0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    .line 220
    move/from16 v9, p8

    iput v9, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    .line 221
    move/from16 v10, p9

    iput v10, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    .line 222
    move/from16 v11, p10

    iput v11, v0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    .line 223
    move/from16 v12, p11

    iput v12, v0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    .line 224
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/pm/VerifierInfo;

    move-object/from16 v14, p12

    invoke-interface {v14, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/VerifierInfo;

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    .line 225
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 226
    move/from16 v15, p14

    iput-boolean v15, v0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    .line 227
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    .line 228
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    .line 229
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    .line 230
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    .line 231
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    .line 232
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    .line 233
    move/from16 v1, p21

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    .line 234
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    .line 235
    move/from16 v1, p23

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    .line 236
    move/from16 v1, p24

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    .line 237
    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    .line 238
    move-object/from16 v1, p26

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    .line 239
    move/from16 v1, p27

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    .line 240
    move/from16 v1, p28

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    .line 241
    move/from16 v1, p29

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    .line 242
    move/from16 v1, p32

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    .line 243
    move/from16 v1, p33

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    .line 244
    move/from16 v1, p37

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsStaticLibrary:Z

    .line 245
    move-object/from16 v1, p34

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibraries:Ljava/util/List;

    .line 246
    move-object/from16 v1, p35

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesVersionsMajor:[J

    .line 247
    move-object/from16 v1, p36

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 248
    move-object/from16 v1, p38

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibraries:Ljava/util/List;

    .line 249
    move-object/from16 v1, p39

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesVersions:[J

    .line 250
    move-object/from16 v1, p40

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 251
    move/from16 v1, p41

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    .line 252
    move-object/from16 v1, p42

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    .line 253
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 254
    move-object/from16 v1, p43

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mDeclaredLibraries:Ljava/util/List;

    .line 255
    move/from16 v1, p44

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mPageSizeCompat:I

    .line 256
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    return-void
.end method

.method private blacklist hasAnyRequiredSplitTypes()Z
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .registers 2

    .line 685
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object v0
.end method

.method public blacklist getConfigForSplit()Ljava/lang/String;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeclaredLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mDeclaredLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEmergencyInstaller()Ljava/lang/String;
    .registers 2

    .line 672
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .registers 2

    .line 425
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    return v0
.end method

.method public blacklist getLongVersionCode()J
    .registers 3

    .line 311
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinSdkVersion()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    return v0
.end method

.method public blacklist getOverlayPriority()I
    .registers 2

    .line 563
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPageSizeCompat()I
    .registers 2

    .line 693
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mPageSizeCompat:I

    return v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSplitTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRequiredSystemPropertyName()Ljava/lang/String;
    .registers 2

    .line 572
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSystemPropertyValue()Ljava/lang/String;
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRevisionCode()I
    .registers 2

    .line 413
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    return v0
.end method

.method public blacklist getRollbackDataPolicy()I
    .registers 2

    .line 593
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    return v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public blacklist getSplitName()Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getTargetPackageName()Ljava/lang/String;
    .registers 2

    .line 547
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetSdkVersion()I
    .registers 2

    .line 441
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    return v0
.end method

.method public blacklist getUsesSdkLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesVersionsMajor()[J
    .registers 2

    .line 633
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesVersionsMajor:[J

    return-object v0
.end method

.method public blacklist getUsesSplitName()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 656
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesVersions()[J
    .registers 2

    .line 651
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesVersions:[J

    return-object v0
.end method

.method public blacklist getVerifiers()[Landroid/content/pm/VerifierInfo;
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 405
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .registers 2

    .line 397
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    return v0
.end method

.method public blacklist isCoreApp()Z
    .registers 2

    .line 490
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    return v0
.end method

.method public blacklist isDebuggable()Z
    .registers 2

    .line 498
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    return v0
.end method

.method public blacklist isExtractNativeLibs()Z
    .registers 2

    .line 530
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public blacklist isFeatureSplit()Z
    .registers 2

    .line 465
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    return v0
.end method

.method public blacklist isHasDeviceAdminReceiver()Z
    .registers 2

    .line 601
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    return v0
.end method

.method public blacklist isIsSdkLibrary()Z
    .registers 2

    .line 609
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public blacklist isIsStaticLibrary()Z
    .registers 2

    .line 617
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsStaticLibrary:Z

    return v0
.end method

.method public blacklist isIsolatedSplits()Z
    .registers 2

    .line 473
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    return v0
.end method

.method public blacklist isMultiArch()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    return v0
.end method

.method public blacklist isOverlayIsStatic()Z
    .registers 2

    .line 555
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .registers 2

    .line 506
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    return v0
.end method

.method public blacklist isSplitRequired()Z
    .registers 2

    .line 482
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    return v0
.end method

.method public blacklist isUpdatableSystem()Z
    .registers 2

    .line 664
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    return v0
.end method

.method public blacklist isUse32bitAbi()Z
    .registers 2

    .line 522
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .registers 2

    .line 539
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    return v0
.end method
