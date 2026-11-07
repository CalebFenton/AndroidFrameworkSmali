.class public Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;
.super Ljava/lang/Object;
.source "PackageInfoCommonUtils.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .registers 3
    .param p0, "info"    # Landroid/content/pm/ComponentInfo;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 525
    invoke-static {p0, p1}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 526
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 527
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 528
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 529
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 530
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 531
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 532
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIcon()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    .line 533
    return-void
.end method

.method private static blacklist assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .registers 3
    .param p0, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 537
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 538
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 539
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 540
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 541
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 542
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 543
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public static blacklist generate(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/PackageInfo;
    .registers 20
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 86
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 87
    return-object v1

    .line 89
    :cond_8
    invoke-static/range {p0 .. p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 91
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    move-object v6, v5

    .line 92
    .local v6, "info":Landroid/content/pm/PackageInfo;
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 93
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 94
    move-object v5, v0

    check-cast v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCode()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 95
    move-object v5, v0

    check-cast v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCodeMajor()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 96
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 97
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 98
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 99
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v5

    if-nez v5, :cond_54

    .line 100
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 101
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserLabelResourceId()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 103
    :cond_54
    iput-object v4, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 104
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstallLocation()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 105
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v5, v7

    if-nez v5, :cond_6c

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_72

    .line 107
    :cond_6c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequiredForAllUsers()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 109
    :cond_72
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 110
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 111
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 112
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 113
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 114
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayPriority()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 115
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 116
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersion()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 117
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 118
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 119
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCoreApp()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 120
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 122
    const-wide/16 v8, 0x4000

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_108

    .line 123
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 124
    .local v5, "size":I
    if-lez v5, :cond_da

    .line 125
    new-array v8, v5, [Landroid/content/pm/ConfigurationInfo;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 126
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    :cond_da
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 129
    if-lez v5, :cond_f1

    .line 130
    new-array v8, v5, [Landroid/content/pm/FeatureInfo;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 131
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 133
    :cond_f1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 134
    if-lez v5, :cond_108

    .line 135
    new-array v8, v5, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 136
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    .end local v5    # "size":I
    :cond_108
    const-wide/16 v8, 0x1000

    and-long/2addr v8, v2

    cmp-long v5, v8, v10

    if-eqz v5, :cond_188

    .line 140
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    .line 141
    .restart local v5    # "size":I
    if-lez v5, :cond_135

    .line 142
    new-array v8, v5, [Landroid/content/pm/PermissionInfo;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 143
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_11e
    if-ge v8, v5, :cond_135

    .line 144
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 145
    .local v9, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-static {v9, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v12

    .line 146
    .local v12, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aput-object v12, v13, v8

    .line 143
    .end local v9    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v12    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_11e

    .line 149
    .end local v8    # "i":I
    :cond_135
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v8

    .line 150
    .local v8, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 151
    if-lez v5, :cond_188

    .line 152
    new-array v9, v5, [Ljava/lang/String;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 153
    new-array v9, v5, [I

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 154
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_148
    if-ge v9, v5, :cond_188

    .line 155
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 156
    .local v12, "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    .line 158
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v14, v13, v9

    or-int/2addr v14, v7

    aput v14, v13, v9

    .line 160
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v13

    const/high16 v14, 0x10000

    and-int/2addr v13, v14

    if-eqz v13, :cond_16f

    .line 162
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v13, v9

    or-int/2addr v14, v15

    aput v14, v13, v9

    .line 165
    :cond_16f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v13

    iget-object v14, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_185

    .line 166
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v14, v13, v9

    or-int/lit8 v14, v14, 0x4

    aput v14, v13, v9

    .line 154
    .end local v12    # "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    :cond_185
    add-int/lit8 v9, v9, 0x1

    goto :goto_148

    .line 172
    .end local v5    # "size":I
    .end local v8    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v9    # "i":I
    :cond_188
    const-wide v8, 0x80000000L

    and-long/2addr v8, v2

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1db

    .line 173
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    .line 174
    .restart local v5    # "size":I
    if-lez v5, :cond_1c3

    .line 175
    new-array v8, v5, [Landroid/content/pm/Attribution;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    .line 176
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1a1
    if-ge v8, v5, :cond_1c3

    .line 177
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 178
    .local v9, "parsedAttribution":Lcom/android/internal/pm/pkg/component/ParsedAttribution;
    if-eqz v9, :cond_1c0

    .line 179
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    new-instance v13, Landroid/content/pm/Attribution;

    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 180
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    aput-object v13, v12, v8

    .line 176
    .end local v9    # "parsedAttribution":Lcom/android/internal/pm/pkg/component/ParsedAttribution;
    :cond_1c0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a1

    .line 184
    .end local v8    # "i":I
    :cond_1c3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v8

    if-eqz v8, :cond_1d2

    .line 185
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_1da

    .line 188
    :cond_1d2
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v9, v9, -0x5

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 191
    .end local v5    # "size":I
    :goto_1da
    goto :goto_1e3

    .line 192
    :cond_1db
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v8, v8, -0x5

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 196
    :goto_1e3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    .line 198
    .local v8, "signingDetails":Landroid/content/pm/SigningDetails;
    const-wide/16 v12, 0x40

    and-long/2addr v12, v2

    cmp-long v5, v12, v10

    if-eqz v5, :cond_21c

    .line 199
    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_204

    .line 202
    new-array v5, v7, [Landroid/content/pm/Signature;

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 203
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v7

    aget-object v7, v7, v9

    aput-object v7, v5, v9

    goto :goto_21c

    .line 204
    :cond_204
    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result v5

    if-eqz v5, :cond_21c

    .line 206
    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v5

    array-length v5, v5

    .line 207
    .local v5, "numberOfSigs":I
    new-array v7, v5, [Landroid/content/pm/Signature;

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 208
    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7, v9, v12, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    .end local v5    # "numberOfSigs":I
    :cond_21c
    :goto_21c
    const-wide/32 v12, 0x8000000

    and-long/2addr v12, v2

    cmp-long v5, v12, v10

    if-eqz v5, :cond_232

    .line 215
    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v8, v5, :cond_230

    .line 217
    new-instance v1, Landroid/content/pm/SigningInfo;

    invoke-direct {v1, v8}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_232

    .line 219
    :cond_230
    iput-object v1, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 223
    :cond_232
    :goto_232
    const-wide/16 v12, 0x1

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_27e

    .line 224
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 225
    .local v1, "size":I
    if-lez v1, :cond_27e

    .line 226
    const/4 v5, 0x0

    .line 227
    .local v5, "num":I
    new-array v7, v1, [Landroid/content/pm/ActivityInfo;

    .line 228
    .local v7, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_247
    if-ge v9, v1, :cond_276

    .line 229
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 230
    .local v12, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v13

    invoke-static {v0, v13, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v13

    if-eqz v13, :cond_273

    .line 231
    sget-object v13, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 232
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v14

    .line 231
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26a

    .line 233
    goto :goto_273

    .line 235
    :cond_26a
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "num":I
    .local v13, "num":I
    invoke-static {v12, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v7, v5

    move v5, v13

    .line 228
    .end local v12    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v13    # "num":I
    .restart local v5    # "num":I
    :cond_273
    :goto_273
    add-int/lit8 v9, v9, 0x1

    goto :goto_247

    .line 238
    .end local v9    # "i":I
    :cond_276
    invoke-static {v7, v5}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/pm/ActivityInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 241
    .end local v1    # "size":I
    .end local v5    # "num":I
    .end local v7    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_27e
    const-wide/16 v12, 0x2

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_2bd

    .line 242
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 243
    .restart local v1    # "size":I
    if-lez v1, :cond_2bd

    .line 244
    const/4 v5, 0x0

    .line 245
    .restart local v5    # "num":I
    new-array v7, v1, [Landroid/content/pm/ActivityInfo;

    .line 246
    .restart local v7    # "res":[Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_293
    if-ge v9, v1, :cond_2b5

    .line 247
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 248
    .restart local v12    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v13

    invoke-static {v0, v13, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v13

    if-eqz v13, :cond_2b2

    .line 249
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "num":I
    .restart local v13    # "num":I
    invoke-static {v12, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v7, v5

    move v5, v13

    .line 246
    .end local v12    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v13    # "num":I
    .restart local v5    # "num":I
    :cond_2b2
    add-int/lit8 v9, v9, 0x1

    goto :goto_293

    .line 252
    .end local v9    # "i":I
    :cond_2b5
    invoke-static {v7, v5}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/pm/ActivityInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 255
    .end local v1    # "size":I
    .end local v5    # "num":I
    .end local v7    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_2bd
    const-wide/16 v12, 0x4

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_2fc

    .line 256
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 257
    .restart local v1    # "size":I
    if-lez v1, :cond_2fc

    .line 258
    const/4 v5, 0x0

    .line 259
    .restart local v5    # "num":I
    new-array v7, v1, [Landroid/content/pm/ServiceInfo;

    .line 260
    .local v7, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2d2
    if-ge v9, v1, :cond_2f4

    .line 261
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 262
    .local v12, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedService;->isDirectBootAware()Z

    move-result v13

    invoke-static {v0, v13, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v13

    if-eqz v13, :cond_2f1

    .line 263
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "num":I
    .restart local v13    # "num":I
    invoke-static {v12, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateServiceInfo(Lcom/android/internal/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v14

    aput-object v14, v7, v5

    move v5, v13

    .line 260
    .end local v12    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .end local v13    # "num":I
    .restart local v5    # "num":I
    :cond_2f1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d2

    .line 266
    .end local v9    # "i":I
    :cond_2f4
    invoke-static {v7, v5}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/pm/ServiceInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 269
    .end local v1    # "size":I
    .end local v5    # "num":I
    .end local v7    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_2fc
    const-wide/16 v12, 0x8

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_33f

    .line 270
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 271
    .local v7, "size":I
    if-lez v7, :cond_33f

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "num":I
    new-array v9, v7, [Landroid/content/pm/ProviderInfo;

    .line 274
    .local v9, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v5, 0x0

    move v12, v1

    move v13, v5

    .end local v1    # "num":I
    .local v12, "num":I
    .local v13, "i":I
    :goto_313
    if-ge v13, v7, :cond_337

    .line 275
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 276
    .local v1, "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isDirectBootAware()Z

    move-result v5

    invoke-static {v0, v5, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v5

    if-eqz v5, :cond_334

    .line 277
    add-int/lit8 v14, v12, 0x1

    move/from16 v5, p3

    .end local v12    # "num":I
    .local v14, "num":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    aput-object v15, v9, v12

    move v12, v14

    .line 274
    .end local v1    # "pr":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .end local v14    # "num":I
    .restart local v12    # "num":I
    :cond_334
    add-int/lit8 v13, v13, 0x1

    goto :goto_313

    .line 280
    .end local v13    # "i":I
    :cond_337
    invoke-static {v9, v12}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ProviderInfo;

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 283
    .end local v7    # "size":I
    .end local v9    # "res":[Landroid/content/pm/ProviderInfo;
    .end local v12    # "num":I
    :cond_33f
    const-wide/16 v12, 0x10

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_374

    .line 284
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 285
    .local v1, "size":I
    if-lez v1, :cond_371

    .line 286
    new-array v5, v1, [Landroid/content/pm/InstrumentationInfo;

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 287
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_355
    if-ge v5, v1, :cond_36e

    .line 288
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 289
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 288
    move/from16 v10, p3

    invoke-static {v9, v0, v2, v3, v10}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/InstrumentationInfo;

    move-result-object v9

    aput-object v9, v7, v5

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_355

    :cond_36e
    move/from16 v10, p3

    goto :goto_376

    .line 285
    .end local v5    # "i":I
    :cond_371
    move/from16 v10, p3

    goto :goto_376

    .line 283
    .end local v1    # "size":I
    :cond_374
    move/from16 v10, p3

    .line 294
    :goto_376
    return-object v6
.end method

.method private static blacklist generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p0, "a"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p1, "flags"    # J
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 348
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 351
    :cond_4
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 352
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 353
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 354
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 355
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 356
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 357
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 358
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 359
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 360
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 361
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 362
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 363
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 364
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 365
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 366
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 367
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 368
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 369
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 370
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 371
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 372
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 373
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 374
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 375
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 376
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 377
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 378
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    .line 379
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c5

    .line 380
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 382
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c1

    goto :goto_c2

    :cond_c1
    move-object v0, v2

    :goto_c2
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 383
    .end local v2    # "metaData":Landroid/os/Bundle;
    goto :goto_c7

    .line 384
    :cond_c5
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 386
    :goto_c7
    iput-object p3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 387
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 388
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 389
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 390
    return-object v1
.end method

.method private static blacklist generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 322
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 324
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, p1, p2}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;J)V

    .line 326
    invoke-static {v0, p0, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 328
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 329
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 331
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    .line 332
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 334
    :cond_28
    const-wide/16 v1, 0x400

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_46

    .line 335
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v1

    .line 337
    .local v1, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 338
    const/4 v2, 0x0

    goto :goto_44

    :cond_3b
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    :goto_44
    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 341
    .end local v1    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_46
    return-object v0
.end method

.method private static blacklist generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/InstrumentationInfo;
    .registers 11
    .param p0, "i"    # Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 459
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 461
    :cond_4
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 462
    .local v1, "info":Landroid/content/pm/InstrumentationInfo;
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 463
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 464
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 465
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 467
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 468
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 469
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 470
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3c

    move-object v2, v0

    goto :goto_40

    :cond_3c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_40
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 471
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_4b

    .line 472
    move-object v2, v0

    goto :goto_4f

    :cond_4b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_4f
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 473
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_5d

    .line 474
    move-object v2, v0

    goto :goto_61

    :cond_5d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_61
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 476
    invoke-static {v1, p1, p4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 478
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 479
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 480
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 481
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 483
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 485
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_8d

    .line 486
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_9b

    .line 488
    :cond_8d
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 490
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_98

    goto :goto_99

    :cond_98
    move-object v0, v2

    :goto_99
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 493
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_9b
    return-object v1
.end method

.method private static blacklist generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 9
    .param p0, "p"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .param p1, "flags"    # J

    .line 500
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 502
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 504
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 506
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 507
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 508
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 509
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 510
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 511
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 513
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_40

    .line 514
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_4e

    .line 516
    :cond_40
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 518
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v0, v2

    :goto_4c
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 520
    .end local v2    # "metaData":Landroid/os/Bundle;
    :goto_4e
    return-object v1
.end method

.method private static blacklist generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;
    .registers 12
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "p"    # Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .param p2, "flags"    # J
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "userId"    # I

    .line 420
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 422
    :cond_4
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p0, p2, p3, p5}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 429
    :cond_3c
    new-instance v1, Landroid/content/pm/ProviderInfo;

    invoke-direct {v1}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 430
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 431
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 432
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 433
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 434
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 435
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 436
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 437
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 438
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 439
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 440
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 441
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/os/PatternMatcher;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/PatternMatcher;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 442
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object v2

    new-array v3, v3, [Landroid/content/pm/PathPermission;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PathPermission;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 443
    const-wide/16 v2, 0x800

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_ab

    .line 444
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 446
    :cond_ab
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c0

    .line 447
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 449
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_bd

    goto :goto_be

    :cond_bd
    move-object v0, v2

    :goto_be
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 451
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_c0
    iput-object p4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 452
    invoke-static {v1, p1}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 453
    return-object v1
.end method

.method private static blacklist generateServiceInfo(Lcom/android/internal/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .registers 10
    .param p0, "s"    # Lcom/android/internal/pm/pkg/component/ParsedService;
    .param p1, "flags"    # J
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 397
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 400
    :cond_4
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 401
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 402
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 403
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 404
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 405
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 406
    iput-object p3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 407
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_40

    .line 408
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 410
    .local v2, "metaData":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v0, v2

    :goto_3e
    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 412
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_40
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 413
    return-object v1
.end method

.method private static blacklist initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 13
    .param p0, "output"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "input"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 548
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 549
    .local v0, "pkg":Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 553
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "credentialDir":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "deviceDir":Ljava/lang/String;
    if-eqz v2, :cond_84

    if-eqz v3, :cond_84

    .line 556
    if-nez p2, :cond_4a

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_84

    .line 561
    :cond_4a
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "userIdString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 563
    .local v5, "credentialLength":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v5, -0x1

    .line 564
    invoke-virtual {v6, v7, v8, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 565
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 566
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 567
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 568
    .local v6, "deviceLength":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v6, -0x2

    add-int/lit8 v9, v6, -0x1

    .line 569
    invoke-virtual {v7, v8, v9, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 570
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 571
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 575
    .end local v4    # "userIdString":Ljava/lang/String;
    .end local v5    # "credentialLength":I
    .end local v6    # "deviceLength":I
    :cond_84
    :goto_84
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 577
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_93

    .line 579
    :cond_8f
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 581
    :goto_93
    return-void
.end method

.method private static blacklist initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 13
    .param p0, "output"    # Landroid/content/pm/InstrumentationInfo;
    .param p1, "input"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 587
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 588
    .local v0, "pkg":Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "credentialDir":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "deviceDir":Ljava/lang/String;
    if-eqz v2, :cond_76

    if-eqz v3, :cond_76

    .line 594
    if-nez p2, :cond_3c

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_76

    .line 599
    :cond_3c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "userIdString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 601
    .local v5, "credentialLength":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v5, -0x1

    .line 602
    invoke-virtual {v6, v7, v8, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 603
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 604
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 605
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 606
    .local v6, "deviceLength":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v6, -0x2

    add-int/lit8 v9, v6, -0x1

    .line 607
    invoke-virtual {v7, v8, v9, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 608
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 609
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 613
    .end local v4    # "userIdString":Ljava/lang/String;
    .end local v5    # "credentialLength":I
    .end local v6    # "deviceLength":I
    :cond_76
    :goto_76
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 615
    iget-object v4, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_85

    .line 617
    :cond_81
    iget-object v4, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 619
    :goto_85
    return-void
.end method

.method private static blacklist isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z
    .registers 12
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "isComponentDirectBootAware"    # Z
    .param p2, "flags"    # J

    .line 632
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isSystem()Z

    move-result v0

    .line 633
    .local v0, "isSystem":Z
    const-wide/32 v1, 0x100000

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 634
    if-nez v0, :cond_19

    .line 635
    invoke-static {v2, p2, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->reportIfDebug(ZJ)Z

    move-result v1

    return v1

    .line 639
    :cond_19
    const-wide/32 v5, 0x40000

    and-long/2addr v5, p2

    cmp-long v1, v5, v3

    const/4 v5, 0x1

    if-eqz v1, :cond_26

    if-nez p1, :cond_26

    move v1, v5

    goto :goto_27

    :cond_26
    move v1, v2

    .line 641
    .local v1, "matchesUnaware":Z
    :goto_27
    const-wide/32 v6, 0x80000

    and-long/2addr v6, p2

    cmp-long v3, v6, v3

    if-eqz v3, :cond_33

    if-eqz p1, :cond_33

    move v3, v5

    goto :goto_34

    :cond_33
    move v3, v2

    .line 643
    .local v3, "matchesAware":Z
    :goto_34
    if-nez v1, :cond_38

    if-eqz v3, :cond_39

    :cond_38
    move v2, v5

    :cond_39
    invoke-static {v2, p2, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->reportIfDebug(ZJ)Z

    move-result v2

    return v2
.end method

.method private static blacklist reportIfDebug(ZJ)Z
    .registers 3
    .param p0, "result"    # Z
    .param p1, "flags"    # J

    .line 652
    return p0
.end method

.method private static blacklist updateApplicationInfo(Landroid/content/pm/ApplicationInfo;J)V
    .registers 9
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # J

    .line 298
    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 299
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 301
    :cond_c
    const-wide/16 v4, 0x400

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_17

    .line 302
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 303
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 307
    :cond_17
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_1e

    .line 308
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 311
    :cond_1e
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 312
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 314
    :cond_2b
    const-string v0, ":complete"

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 315
    return-void
.end method
