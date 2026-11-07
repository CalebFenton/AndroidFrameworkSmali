.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;,
        Landroid/app/admin/DeviceAdminInfo$HeadlessDeviceOwnerMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HEADLESS_DEVICE_OWNER_MODE_AFFILIATED:I = 0x1

.field public static final whitelist HEADLESS_DEVICE_OWNER_MODE_SINGLE_USER:I = 0x2

.field public static final whitelist HEADLESS_DEVICE_OWNER_MODE_UNSUPPORTED:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final whitelist USES_ENCRYPTED_STORAGE:I = 0x7

.field public static final whitelist USES_POLICY_DISABLE_CAMERA:I = 0x8

.field public static final whitelist USES_POLICY_DISABLE_KEYGUARD_FEATURES:I = 0x9

.field public static final whitelist USES_POLICY_EXPIRE_PASSWORD:I = 0x6

.field public static final whitelist USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final whitelist USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final whitelist USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final greylist-max-o USES_POLICY_SETS_GLOBAL_PROXY:I = 0x5

.field public static final whitelist USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final whitelist USES_POLICY_WIPE_DATA:I = 0x4

.field static greylist-max-o sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mActivityInfo:Landroid/content/pm/ActivityInfo;

.field blacklist mHeadlessDeviceOwnerMode:I

.field greylist-max-o mSupportsTransferOwnership:Z

.field greylist-max-o mUsesPolicies:I

.field greylist-max-o mVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 234
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v6, 0x10408ce

    const v7, 0x10408c3

    const/4 v2, 0x4

    const-string/jumbo v3, "wipe-data"

    const v4, 0x10408cd

    const v5, 0x10408c2

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408ca

    const v3, 0x10408be

    const/4 v4, 0x2

    const-string/jumbo v5, "reset-password"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408c9

    const v3, 0x10408bd

    const/4 v4, 0x0

    const-string/jumbo v5, "limit-password"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v6, 0x10408cc

    const v7, 0x10408c1

    const/4 v2, 0x1

    const-string/jumbo v3, "watch-login"

    const v4, 0x10408cc

    const v5, 0x10408c0

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408c8

    const v3, 0x10408bc

    const/4 v4, 0x3

    const-string v5, "force-lock"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408cb

    const v3, 0x10408bf

    const/4 v4, 0x5

    const-string/jumbo v5, "set-global-proxy"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408c7

    const v3, 0x10408bb

    const/4 v4, 0x6

    const-string v5, "expire-password"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408c6

    const v3, 0x10408ba

    const/4 v4, 0x7

    const-string v5, "encrypted-storage"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408c4

    const v3, 0x10408b8

    const/16 v4, 0x8

    const-string v5, "disable-camera"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const v2, 0x10408c5

    const v3, 0x10408b9

    const/16 v4, 0x9

    const-string v5, "disable-keyguard-features"

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e7
    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10e

    .line 273
    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 274
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 591
    .end local v0    # "i":I
    :cond_10e
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$1;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput v0, v1, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    .line 325
    move-object/from16 v2, p2

    iput-object v2, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 329
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 331
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_11
    iget-object v5, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v6, "android.app.device_admin"

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v4, v5

    .line 332
    if-eqz v4, :cond_18b

    .line 337
    iget-object v5, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 339
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 342
    .local v6, "attrs":Landroid/util/AttributeSet;
    :goto_28
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v10, :cond_34

    if-eq v8, v9, :cond_34

    goto :goto_28

    .line 346
    :cond_34
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, "nodeName":Ljava/lang/String;
    const-string v11, "device-admin"

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_183

    .line 352
    sget-object v11, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    invoke-virtual {v5, v6, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 355
    .local v11, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v11, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    .line 358
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 361
    .local v12, "outerDepth":I
    :goto_53
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    move v8, v13

    if-eq v13, v10, :cond_17d

    const/4 v13, 0x3

    if-ne v8, v13, :cond_63

    .line 362
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v12, :cond_17d

    .line 363
    :cond_63
    if-eq v8, v13, :cond_176

    const/4 v14, 0x4

    if-ne v8, v14, :cond_6b

    .line 364
    move v13, v9

    goto/16 :goto_177

    .line 366
    :cond_6b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 367
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "uses-policies"

    invoke-virtual {v15, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_76} :catch_195
    .catchall {:try_start_11 .. :try_end_76} :catchall_193

    const-string v0, "DeviceAdminInfo"

    if-eqz v9, :cond_ef

    .line 368
    :try_start_7a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 369
    .local v9, "innerDepth":I
    :goto_7e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move v8, v14

    if-eq v14, v10, :cond_e8

    if-ne v8, v13, :cond_91

    .line 370
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v9, :cond_8e

    goto :goto_91

    :cond_8e
    move/from16 v18, v10

    goto :goto_ea

    .line 371
    :cond_91
    :goto_91
    if-eq v8, v13, :cond_df

    const/4 v14, 0x4

    if-ne v8, v14, :cond_99

    .line 372
    move/from16 v18, v10

    goto :goto_e1

    .line 374
    :cond_99
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 375
    .local v17, "policyName":Ljava/lang/String;
    sget-object v14, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move/from16 v18, v10

    move-object/from16 v10, v17

    .end local v17    # "policyName":Ljava/lang/String;
    .local v10, "policyName":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 376
    .local v14, "val":Ljava/lang/Integer;
    if-eqz v14, :cond_ba

    .line 377
    iget v13, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    shl-int v19, v18, v19

    or-int v13, v13, v19

    iput v13, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    goto :goto_de

    .line 379
    :cond_ba
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag under uses-policies of "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 380
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ": "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v10    # "policyName":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/Integer;
    :goto_de
    goto :goto_e1

    .line 371
    :cond_df
    move/from16 v18, v10

    .line 369
    :goto_e1
    move-object/from16 v2, p2

    move/from16 v10, v18

    const/4 v13, 0x3

    const/4 v14, 0x4

    goto :goto_7e

    :cond_e8
    move/from16 v18, v10

    .line 383
    .end local v9    # "innerDepth":I
    :goto_ea
    move/from16 v10, v18

    const/4 v13, 0x2

    goto/16 :goto_170

    :cond_ef
    move/from16 v18, v10

    const-string/jumbo v2, "support-transfer-ownership"

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 384
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_108

    .line 388
    move/from16 v0, v18

    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto :goto_170

    .line 385
    :cond_108
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "support-transfer-ownership tag must be empty."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v0

    .line 389
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_111
    const-string/jumbo v2, "headless-system-user"

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 390
    const-string/jumbo v2, "headless-device-owner-mode"

    const/4 v9, 0x0

    invoke-interface {v4, v9, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "deviceOwnerModeStringValue":Ljava/lang/String;
    if-nez v2, :cond_12b

    .line 393
    const-string v10, "device-owner-mode"

    .line 394
    invoke-interface {v4, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 397
    :cond_12b
    const-string/jumbo v9, "unsupported"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13a

    .line 398
    const/4 v9, 0x0

    iput v9, v1, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto :goto_170

    .line 399
    :cond_13a
    const/4 v9, 0x0

    const-string v10, "affiliated"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_148

    .line 400
    const/4 v10, 0x1

    iput v10, v1, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    const/4 v13, 0x2

    goto :goto_170

    .line 401
    :cond_148
    const/4 v10, 0x1

    const-string/jumbo v13, "single_user"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_156

    .line 402
    const/4 v13, 0x2

    iput v13, v1, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    goto :goto_170

    .line 404
    :cond_156
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown headless-system-user mode: "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7a .. :try_end_16d} :catch_195
    .catchall {:try_start_7a .. :try_end_16d} :catchall_193

    goto :goto_170

    .line 389
    .end local v2    # "deviceOwnerModeStringValue":Ljava/lang/String;
    :cond_16e
    const/4 v10, 0x1

    const/4 v13, 0x2

    .line 408
    .end local v15    # "tagName":Ljava/lang/String;
    :goto_170
    move-object/from16 v2, p2

    move v9, v13

    const/4 v0, 0x0

    goto/16 :goto_53

    .line 363
    :cond_176
    move v13, v9

    .line 361
    :goto_177
    move-object/from16 v2, p2

    move v9, v13

    const/4 v0, 0x0

    goto/16 :goto_53

    .line 413
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "outerDepth":I
    :cond_17d
    if-eqz v4, :cond_182

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 415
    :cond_182
    return-void

    .line 348
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_183
    :try_start_183
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data does not start with device-admin tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v0

    .line 333
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_18b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.app.device_admin meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v0
    :try_end_193
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_183 .. :try_end_193} :catch_195
    .catchall {:try_start_183 .. :try_end_193} :catchall_193

    .line 413
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_193
    move-exception v0

    goto :goto_1b3

    .line 409
    :catch_195
    move-exception v0

    .line 410
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_196
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create context for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v2
    :try_end_1b3
    .catchall {:try_start_196 .. :try_end_1b3} :catchall_193

    .line 413
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_1b3
    if-eqz v4, :cond_1b8

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 414
    :cond_1b8
    throw v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 313
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    .line 418
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    .line 422
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUsesPolicies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportsTransferOwnership: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHeadlessDeviceOwnerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public whitelist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 444
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 452
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getHeadlessDeviceOwnerMode()I
    .registers 2

    .line 532
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReceiverName()Ljava/lang/String;
    .registers 2

    .line 436
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTagForPolicy(I)Ljava/lang/String;
    .registers 3
    .param p1, "policyIdent"    # I

    .line 517
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getUsedPolicies()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 540
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 541
    .local v2, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v3, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 542
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 545
    .end local v1    # "i":I
    :cond_24
    return-object v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 495
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v0, :cond_17

    .line 474
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 477
    :cond_17
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 487
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 463
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 558
    return-void
.end method

.method public whitelist supportsTransferOwnership()Z
    .registers 2

    .line 524
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist usesPolicy(I)Z
    .registers 5
    .param p1, "policyIdent"    # I

    .line 508
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    const-string v0, "flags"

    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 582
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 583
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 585
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mHeadlessDeviceOwnerMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    return-void
.end method
