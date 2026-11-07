.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist AID_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PLF_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist PLPF_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist PROPERTY_WALLET_PREFERRED_BANNER_AND_LABEL:Ljava/lang/String; = "android.nfc.cardemulation.PROPERTY_WALLET_PREFERRED_BANNER_AND_LABEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field private final blacklist mAutoTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAutoTransactPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mBannerResourceId:I

.field private blacklist mCategoryOtherServiceEnabled:Z

.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final blacklist mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOffHostName:Ljava/lang/String;

.field private final greylist-max-o mOnHost:Z

.field private final blacklist mRequiresDeviceScreenOn:Z

.field private final greylist-max-o mRequiresDeviceUnlock:Z

.field private final blacklist mService:Landroid/content/pm/ResolveInfo;

.field private final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private blacklist mShouldDefaultToObserveMode:Z

.field private final blacklist mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStaticOffHostName:Ljava/lang/String;

.field private final greylist-max-o mUid:I

.field private blacklist mWantsRoleHolderPriority:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    nop

    .line 74
    const-string v0, "[0-9A-Fa-f]{2,}[0-9A-Fa-f,\\?,\\*\\.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->PLPF_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    nop

    .line 76
    const-string v0, "[0-9A-Fa-f]{2,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->PLF_PATTERN:Ljava/util/regex/Pattern;

    .line 1047
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1211
    const-string v0, "[0-9A-Fa-f]{10,32}\\*?\\#?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->AID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .registers 23
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 284
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 285
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .line 287
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_22

    .line 288
    :try_start_10
    const-string v0, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v5, v2, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v6, v0

    .line 289
    if-eqz v6, :cond_1a

    goto :goto_2b

    .line 290
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0

    .line 294
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_22
    const-string v0, "android.nfc.cardemulation.off_host_apdu_service"

    invoke-virtual {v5, v2, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v6, v0

    .line 295
    if-eqz v6, :cond_42a

    .line 301
    :goto_2b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 302
    .local v0, "eventType":I
    :goto_2f
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3b

    if-eq v0, v7, :cond_3b

    .line 303
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v0, v7

    goto :goto_2f

    .line 306
    :cond_3b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, "tagName":Ljava/lang/String;
    if-eqz v4, :cond_53

    const-string/jumbo v10, "host-apdu-service"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    goto :goto_53

    .line 308
    :cond_4b
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v7

    .line 310
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_53
    :goto_53
    if-nez v4, :cond_67

    const-string/jumbo v10, "offhost-apdu-service"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    goto :goto_67

    .line 311
    :cond_5f
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v7

    .line 315
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_67
    :goto_67
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 316
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    .line 317
    .local v11, "attrs":Landroid/util/AttributeSet;
    const/4 v14, 0x4

    const/4 v15, 0x0

    if-eqz v4, :cond_bc

    .line 318
    sget-object v12, Lcom/android/internal/R$styleable;->HostApduService:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 320
    .local v12, "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 321
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 323
    invoke-virtual {v12, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 326
    invoke-virtual {v12, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 329
    const/4 v13, -0x1

    const/4 v14, 0x3

    invoke-virtual {v12, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 331
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 333
    const/4 v13, 0x0

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 334
    iget-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 335
    const/4 v13, 0x5

    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mShouldDefaultToObserveMode:Z

    .line 338
    invoke-static {}, Landroid/nfc/Flags;->nfcAssociatedRoleServices()Z

    move-result v13

    if-eqz v13, :cond_b8

    .line 339
    const/4 v13, 0x6

    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mWantsRoleHolderPriority:Z

    .line 344
    :cond_b8
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    goto :goto_127

    .line 346
    :cond_bc
    sget-object v12, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 348
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 349
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 351
    invoke-virtual {v12, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 354
    const/4 v13, 0x5

    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 357
    const/4 v8, 0x3

    const/4 v13, -0x1

    invoke-virtual {v12, v8, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 359
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 361
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 363
    const/4 v13, 0x6

    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mShouldDefaultToObserveMode:Z

    .line 366
    iget-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    if-eqz v8, :cond_113

    .line 367
    iget-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    const-string v13, "eSE"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_105

    .line 368
    const-string v8, "eSE1"

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    goto :goto_113

    .line 369
    :cond_105
    iget-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    const-string v13, "SIM"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 370
    const-string v8, "SIM1"

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 373
    :cond_113
    :goto_113
    iget-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 374
    invoke-static {}, Landroid/nfc/Flags;->nfcAssociatedRoleServices()Z

    move-result v8

    if-eqz v8, :cond_124

    .line 375
    const/4 v8, 0x7

    invoke-virtual {v12, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mWantsRoleHolderPriority:Z

    .line 380
    :cond_124
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    :goto_127
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 384
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 385
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    .line 386
    new-instance v8, Ljava/util/TreeMap;

    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 387
    invoke-static {v12}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v8, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    .line 388
    iput-boolean v4, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 390
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 391
    .local v8, "depth":I
    const/4 v12, 0x0

    .line 394
    .local v12, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :goto_153
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    move v0, v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_161

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_41b

    :cond_161
    if-eq v0, v7, :cond_41b

    .line 396
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13
    :try_end_167
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_167} :catch_434
    .catchall {:try_start_10 .. :try_end_167} :catchall_432

    move-object v9, v13

    .line 397
    const-string v13, "aid-group"

    const-string v14, "ApduServiceInfo"

    const/4 v15, 0x2

    if-ne v0, v15, :cond_1d9

    :try_start_16f
    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d9

    if-nez v12, :cond_1d9

    .line 399
    sget-object v13, Lcom/android/internal/R$styleable;->AidGroup:[I

    invoke-virtual {v10, v11, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 402
    .local v13, "groupAttrs":Landroid/content/res/TypedArray;
    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 404
    .local v15, "groupCategory":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 406
    .local v7, "groupDescription":Ljava/lang/String;
    const-string/jumbo v2, "payment"

    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_18f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16f .. :try_end_18f} :catch_434
    .catchall {:try_start_16f .. :try_end_18f} :catchall_432

    move/from16 v18, v2

    const-string/jumbo v2, "other"

    if-nez v18, :cond_197

    .line 407
    move-object v15, v2

    .line 409
    :cond_197
    :try_start_197
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    .line 410
    .end local v12    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .local v3, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v3, :cond_1c8

    .line 411
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c6

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not allowing multiple aid-groups in the "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " category"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v2, 0x0

    move-object v12, v2

    .end local v3    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .local v2, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_1ce

    .line 411
    .end local v2    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v3    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1c6
    move-object v12, v3

    goto :goto_1ce

    .line 417
    :cond_1c8
    new-instance v2, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v2, v15, v7}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v2    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    move-object v12, v2

    .line 419
    .end local v2    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v12    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :goto_1ce
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 420
    .end local v7    # "groupDescription":Ljava/lang/String;
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v15    # "groupCategory":Ljava/lang/String;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto/16 :goto_153

    :cond_1d9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_212

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_212

    if-eqz v12, :cond_212

    .line 422
    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_204

    .line 423
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_209

    .line 424
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_209

    .line 427
    :cond_204
    const-string v3, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_209
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_197 .. :try_end_209} :catch_434
    .catchall {:try_start_197 .. :try_end_209} :catchall_432

    .line 429
    :cond_209
    :goto_209
    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto/16 :goto_153

    .line 430
    :cond_212
    const-string v3, "Ignoring invalid or duplicate aid: "

    const/4 v15, 0x2

    if-ne v0, v15, :cond_261

    :try_start_217
    const-string v7, "aid-filter"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_261

    if-eqz v12, :cond_261

    .line 432
    sget-object v7, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 434
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 435
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 436
    .local v13, "aid":Ljava/lang/String;
    invoke-static {v13}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidAid(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_248

    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_248

    .line 437
    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25c

    .line 439
    :cond_248
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_25c
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 442
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "aid":Ljava/lang/String;
    goto/16 :goto_411

    :cond_261
    const/4 v15, 0x2

    if-ne v0, v15, :cond_2b4

    const-string v7, "aid-prefix-filter"

    .line 443
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b4

    if-eqz v12, :cond_2b4

    .line 444
    sget-object v7, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 446
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 447
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 449
    .restart local v13    # "aid":Ljava/lang/String;
    const-string v15, "*"

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 450
    .end local v13    # "aid":Ljava/lang/String;
    .local v15, "aid":Ljava/lang/String;
    invoke-static {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidAid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_29b

    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29b

    .line 451
    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2af

    .line 453
    :cond_29b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_2af
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 456
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "aid":Ljava/lang/String;
    goto/16 :goto_411

    :cond_2b4
    const/4 v15, 0x2

    if-ne v0, v15, :cond_307

    const-string v7, "aid-suffix-filter"

    .line 457
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_307

    if-eqz v12, :cond_307

    .line 458
    sget-object v7, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 460
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 461
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 463
    .restart local v13    # "aid":Ljava/lang/String;
    const-string v15, "#"

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 464
    .end local v13    # "aid":Ljava/lang/String;
    .restart local v15    # "aid":Ljava/lang/String;
    invoke-static {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidAid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2ee

    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2ee

    .line 465
    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_302

    .line 467
    :cond_2ee
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_302
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_305
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_217 .. :try_end_305} :catch_434
    .catchall {:try_start_217 .. :try_end_305} :catchall_432

    .line 470
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "aid":Ljava/lang/String;
    goto/16 :goto_411

    :cond_307
    const-string v3, " for offhost service that isn\'t autoTransact"

    const/4 v15, 0x2

    if-ne v0, v15, :cond_393

    :try_start_30c
    const-string/jumbo v7, "polling-loop-filter"

    .line 471
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_393

    if-nez v12, :cond_393

    .line 472
    sget-object v7, Lcom/android/internal/R$styleable;->PollingLoopFilter:[I

    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 474
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    nop

    .line 475
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 476
    invoke-virtual {v15, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "plf":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v7, v15, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 480
    .local v18, "autoTransact":Z
    sget-object v13, Landroid/nfc/cardemulation/ApduServiceInfo;->PLF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_346

    .line 481
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v17, 0x2

    rem-int/lit8 v13, v13, 0x2
    :try_end_342
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30c .. :try_end_342} :catch_434
    .catchall {:try_start_30c .. :try_end_342} :catchall_432

    if-nez v13, :cond_346

    const/4 v13, 0x1

    goto :goto_347

    :cond_346
    const/4 v13, 0x0

    .line 482
    .local v13, "isValidFilter":Z
    :goto_347
    const-string v15, "Ignoring polling-loop-filter "

    if-nez v13, :cond_366

    .line 483
    :try_start_34b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " it is not a valid filter"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38e

    .line 485
    :cond_366
    iget-boolean v4, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-nez v4, :cond_385

    if-nez v18, :cond_385

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38e

    .line 489
    :cond_385
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :goto_38e
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .end local v2    # "plf":Ljava/lang/String;
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "isValidFilter":Z
    .end local v18    # "autoTransact":Z
    goto/16 :goto_410

    .line 492
    :cond_393
    const/4 v15, 0x2

    if-ne v0, v15, :cond_410

    const-string/jumbo v2, "polling-loop-pattern-filter"

    .line 493
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_411

    if-nez v12, :cond_411

    .line 494
    sget-object v2, Lcom/android/internal/R$styleable;->PollingLoopPatternFilter:[I

    invoke-virtual {v10, v11, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 496
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 498
    invoke-virtual {v4, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "plf":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 502
    .local v16, "autoTransact":Z
    sget-object v7, Landroid/nfc/cardemulation/ApduServiceInfo;->PLPF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7
    :try_end_3c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34b .. :try_end_3c1} :catch_434
    .catchall {:try_start_34b .. :try_end_3c1} :catchall_432

    .line 503
    .local v7, "isValidFilter":Z
    const-string v13, "Ignoring polling-loop-pattern-filter "

    if-nez v7, :cond_3e0

    .line 504
    :try_start_3c5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " it is not a valid pattern filter"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40c

    .line 506
    :cond_3e0
    iget-boolean v15, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-nez v15, :cond_3ff

    if-nez v16, :cond_3ff

    .line 507
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40c

    .line 510
    :cond_3ff
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :goto_40c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_40f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c5 .. :try_end_40f} :catch_434
    .catchall {:try_start_3c5 .. :try_end_40f} :catchall_432

    .line 513
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "plf":Ljava/lang/String;
    .end local v7    # "isValidFilter":Z
    .end local v16    # "autoTransact":Z
    goto :goto_411

    .line 492
    :cond_410
    :goto_410
    nop

    .line 394
    :cond_411
    :goto_411
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto/16 :goto_153

    .line 518
    .end local v0    # "eventType":I
    .end local v8    # "depth":I
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "attrs":Landroid/util/AttributeSet;
    .end local v12    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_41b
    if-eqz v6, :cond_420

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 521
    :cond_420
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 523
    const/4 v15, 0x1

    iput-boolean v15, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryOtherServiceEnabled:Z

    .line 525
    return-void

    .line 296
    :cond_42a
    :try_start_42a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0
    :try_end_432
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42a .. :try_end_432} :catch_434
    .catchall {:try_start_42a .. :try_end_432} :catchall_432

    .line 518
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :catchall_432
    move-exception v0

    goto :goto_450

    .line 515
    :catch_434
    move-exception v0

    .line 516
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_435
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create context for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v2
    :try_end_450
    .catchall {:try_start_435 .. :try_end_450} :catchall_432

    .line 518
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :goto_450
    if-eqz v6, :cond_455

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 519
    :cond_455
    throw v0
.end method

.method public constructor greylist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .param p10, "offHost"    # Ljava/lang/String;
    .param p11, "staticOffHost"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 209
    .local p4, "staticAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 27
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .param p10, "offHost"    # Ljava/lang/String;
    .param p11, "staticOffHost"    # Ljava/lang/String;
    .param p12, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 222
    .local p4, "staticAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    nop

    .line 223
    nop

    .line 222
    move/from16 v7, p2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 30
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "requiresScreenOn"    # Z
    .param p8, "bannerResource"    # I
    .param p9, "uid"    # I
    .param p10, "settingsActivityName"    # Ljava/lang/String;
    .param p11, "offHost"    # Ljava/lang/String;
    .param p12, "staticOffHost"    # Ljava/lang/String;
    .param p13, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 234
    .local p4, "staticAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/TreeMap;

    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 238
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    .line 239
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V
    .registers 26
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "requiresScreenOn"    # Z
    .param p8, "bannerResource"    # I
    .param p9, "uid"    # I
    .param p10, "settingsActivityName"    # Ljava/lang/String;
    .param p11, "offHost"    # Ljava/lang/String;
    .param p12, "staticOffHost"    # Ljava/lang/String;
    .param p13, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p4, "staticAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p14, "autoTransact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local p15, "autoTransactPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/regex/Pattern;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 250
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 253
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    .line 254
    move-object/from16 v1, p15

    iput-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    .line 255
    move-object/from16 v2, p11

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 256
    move-object/from16 v3, p12

    iput-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 257
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 258
    move/from16 v4, p6

    iput-boolean v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 259
    move/from16 v5, p7

    iput-boolean v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 260
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 261
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_33

    .line 263
    :cond_49
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 264
    .restart local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_4d

    .line 266
    :cond_63
    move/from16 v6, p8

    iput v6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 267
    move/from16 v7, p9

    iput v7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 268
    move-object/from16 v8, p10

    iput-object v8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 269
    move/from16 v9, p13

    iput-boolean v9, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryOtherServiceEnabled:Z

    .line 270
    return-void
.end method

.method private static blacklist isValidAid(Ljava/lang/String;)Z
    .registers 8
    .param p0, "aid"    # Ljava/lang/String;

    .line 1217
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1218
    return v0

    .line 1221
    :cond_4
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "#"

    const-string v4, " is not a valid AID."

    const-string v5, "AID "

    const-string v6, "ApduServiceInfo"

    if-nez v2, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3b

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return v0

    .line 1227
    :cond_3b
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_68

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return v0

    .line 1233
    :cond_68
    sget-object v1, Landroid/nfc/cardemulation/ApduServiceInfo;->AID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return v0

    .line 1238
    :cond_8d
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$getShouldAutoTransact$0(ZLjava/lang/String;Ljava/util/regex/Pattern;)Z
    .registers 4
    .param p0, "isPattern"    # Z
    .param p1, "plf"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/util/regex/Pattern;

    .line 591
    if-eqz p0, :cond_b

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    :cond_b
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :goto_13
    return v0
.end method


# virtual methods
.method public whitelist addPollingLoopFilter(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pollingLoopFilter"    # Ljava/lang/String;
    .param p2, "autoTransact"    # Z

    .line 831
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->PLF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 832
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2b

    .line 837
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-nez v0, :cond_1b

    if-nez p2, :cond_1b

    .line 838
    return-void

    .line 840
    :cond_1b
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    return-void

    .line 833
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polling loop filter must contain an even number of characters 0-9 or A-F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addPollingLoopPatternFilter(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pollingLoopPatternFilter"    # Ljava/lang/String;
    .param p2, "autoTransact"    # Z

    .line 865
    sget-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->PLPF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 870
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-nez v0, :cond_13

    if-nez p2, :cond_13

    .line 871
    return-void

    .line 873
    :cond_13
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 874
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 873
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 874
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 873
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    return-void

    .line 866
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polling loop pattern filter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1014
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/os/ParcelFileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1104
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1105
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v0, :cond_46

    .line 1107
    const-string v0, "    On Host Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6f

    .line 1109
    :cond_46
    const-string v0, "    Off-host Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        Current off-host SE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " static off-host SE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    :goto_6f
    const-string v0, "    Static AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "            AID: "

    const-string v4, "(enabled: "

    const-string v5, "        Category: "

    if-eqz v2, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 1115
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryOtherServiceEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1118
    .local v5, "aid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    .end local v5    # "aid":Ljava/lang/String;
    goto :goto_be

    .line 1120
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_df
    goto :goto_7e

    .line 1121
    :cond_e0
    const-string v0, "    Dynamic AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 1123
    .restart local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryOtherServiceEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_129
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1126
    .local v7, "aid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    .end local v7    # "aid":Ljava/lang/String;
    goto :goto_129

    .line 1128
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_14a
    goto :goto_ef

    .line 1129
    :cond_14b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Settings Activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Requires Device Unlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Requires Device ScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Should Default to Observe Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mShouldDefaultToObserveMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Auto-Transact Mapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Auto-Transact Patterns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method public whitelist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1170
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1171
    const-wide v0, 0x10900000002L

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1172
    const-wide v0, 0x10800000003L

    iget-boolean v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1173
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-nez v0, :cond_3a

    .line 1174
    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1175
    const-wide v0, 0x10900000005L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1177
    :cond_3a
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide v2, 0x20b00000006L

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 1178
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1179
    .local v2, "token":J
    invoke-virtual {v1, p1}, Landroid/nfc/cardemulation/AidGroup;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1180
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1181
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v2    # "token":J
    goto :goto_44

    .line 1182
    :cond_60
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 1183
    .restart local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1184
    .local v4, "token":J
    invoke-virtual {v1, p1}, Landroid/nfc/cardemulation/AidGroup;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1185
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1186
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v4    # "token":J
    goto :goto_6a

    .line 1187
    :cond_81
    const-wide v0, 0x10900000008L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1188
    const-wide v0, 0x10800000009L

    iget-boolean v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mShouldDefaultToObserveMode:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1191
    const-wide v0, 0x20b0000000aL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1192
    .local v0, "token":J
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v4, 0x10800000002L

    const-wide v6, 0x10900000001L

    if-eqz v3, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1193
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1194
    nop

    .line 1195
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1194
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1196
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto :goto_a8

    .line 1197
    :cond_d6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1200
    .end local v0    # "token":J
    const-wide v0, 0x20b0000000bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1201
    .restart local v0    # "token":J
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_115

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1202
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Ljava/lang/Boolean;>;"
    nop

    .line 1203
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    .line 1202
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1204
    nop

    .line 1205
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1204
    invoke-virtual {p1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1206
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Ljava/lang/Boolean;>;"
    goto :goto_ec

    .line 1207
    :cond_115
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1209
    .end local v0    # "token":J
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 998
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 999
    :cond_4
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1000
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1002
    .local v1, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1003
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    .line 1002
    :goto_27
    return v0
.end method

.method public whitelist getAidGroups()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 695
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    goto :goto_f

    .line 697
    :cond_25
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 698
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 701
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_50
    goto :goto_2f

    .line 704
    :cond_51
    return-object v0
.end method

.method public whitelist getAids()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 563
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_d

    .line 565
    :cond_21
    return-object v0
.end method

.method public whitelist getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "aid"    # Ljava/lang/String;

    .line 716
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/List;

    move-result-object v0

    .line 717
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 718
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 719
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 721
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_27
    goto :goto_8

    .line 722
    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 535
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 799
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 667
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public whitelist getOffHostSecureElement()Ljava/lang/String;
    .registers 2

    .line 547
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPollingLoopFilters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getPollingLoopPatternFilters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getPrefixAids()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v0, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 627
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 628
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 629
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v4    # "aid":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 632
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_39
    goto :goto_d

    .line 633
    :cond_3a
    return-object v0
.end method

.method public whitelist getSettingsActivityName()Ljava/lang/String;
    .registers 2

    .line 977
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getShouldAutoTransact(Ljava/lang/String;)Z
    .registers 9
    .param p1, "plf"    # Ljava/lang/String;

    .line 586
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 587
    return v1

    .line 589
    :cond_1b
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    move v0, v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v1

    .line 590
    .local v0, "isPattern":Z
    :goto_2f
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$$ExternalSyntheticLambda0;-><init>(ZLjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 591
    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    .line 593
    .local v3, "patternMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz v3, :cond_70

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_70

    .line 596
    :cond_4f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 597
    .local v5, "patternMatch":Ljava/util/regex/Pattern;
    iget-object v6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 598
    return v1

    .line 600
    .end local v5    # "patternMatch":Ljava/util/regex/Pattern;
    :cond_6e
    goto :goto_53

    .line 601
    :cond_6f
    return v2

    .line 594
    :cond_70
    :goto_70
    return v2
.end method

.method public whitelist getSubsetAids()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v0, "subsetAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 649
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 650
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 651
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v4    # "aid":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 654
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_39
    goto :goto_d

    .line 655
    :cond_3a
    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 808
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public whitelist hasCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 732
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1008
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isCategoryOtherServiceEnabled()Z
    .registers 2

    .line 1156
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryOtherServiceEnabled:Z

    return v0
.end method

.method public whitelist isOnHost()Z
    .registers 2

    .line 741
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public whitelist loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 931
    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 933
    :catch_f
    move-exception v0

    .line 934
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 959
    const-string v0, "Could not load banner."

    const-string v1, "ApduServiceInfo"

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 960
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_15} :catch_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_16

    .line 961
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    return-object v0

    .line 965
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_16
    move-exception v3

    .line 966
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-object v2

    .line 962
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1b
    move-exception v3

    .line 963
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-object v2
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 946
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 919
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 679
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist removePollingLoopFilter(Ljava/lang/String;)V
    .registers 4
    .param p1, "pollingLoopFilter"    # Ljava/lang/String;

    .line 850
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    return-void
.end method

.method public whitelist removePollingLoopPatternFilter(Ljava/lang/String;)V
    .registers 4
    .param p1, "pollingLoopPatternFilter"    # Ljava/lang/String;

    .line 884
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 885
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 884
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    return-void
.end method

.method public whitelist requiresScreenOn()Z
    .registers 2

    .line 759
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    return v0
.end method

.method public whitelist requiresUnlock()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public whitelist resetOffHostSecureElement()V
    .registers 2

    .line 908
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 909
    return-void
.end method

.method public whitelist setCategoryOtherServiceEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1145
    iput-boolean p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryOtherServiceEnabled:Z

    .line 1146
    return-void
.end method

.method public whitelist setDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .registers 4
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .line 817
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    return-void
.end method

.method public whitelist setOffHostSecureElement(Ljava/lang/String;)V
    .registers 2
    .param p1, "offHost"    # Ljava/lang/String;

    .line 899
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 900
    return-void
.end method

.method public whitelist setShouldDefaultToObserveMode(Z)V
    .registers 2
    .param p1, "shouldDefaultToObserveMode"    # Z

    .line 778
    iput-boolean p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mShouldDefaultToObserveMode:Z

    .line 779
    return-void
.end method

.method public whitelist shouldDefaultToObserveMode()Z
    .registers 2

    .line 768
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mShouldDefaultToObserveMode:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApduService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v1, ", Static AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 987
    .local v2, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .end local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_4d

    .line 989
    :cond_61
    const-string v1, ", Dynamic AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 991
    .restart local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .end local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_70

    .line 993
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist wantsRoleHolderPriority()Z
    .registers 2

    .line 789
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mWantsRoleHolderPriority:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1020
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1021
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1022
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1029
    :cond_38
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1033
    :cond_57
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1039
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryOtherServiceEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransact:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1042
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAutoTransactPatterns:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1044
    return-void
.end method
