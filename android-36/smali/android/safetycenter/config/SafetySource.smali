.class public final Landroid/safetycenter/config/SafetySource;
.super Ljava/lang/Object;
.source "SafetySource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/config/SafetySource$Builder;,
        Landroid/safetycenter/config/SafetySource$InitialDisplayState;,
        Landroid/safetycenter/config/SafetySource$Profile;,
        Landroid/safetycenter/config/SafetySource$SafetySourceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/config/SafetySource;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INITIAL_DISPLAY_STATE_DISABLED:I = 0x1

.field public static final whitelist INITIAL_DISPLAY_STATE_ENABLED:I = 0x0

.field public static final whitelist INITIAL_DISPLAY_STATE_HIDDEN:I = 0x2

.field public static final whitelist PROFILE_ALL:I = 0x2

.field public static final whitelist PROFILE_NONE:I = 0x0

.field public static final whitelist PROFILE_PRIMARY:I = 0x1

.field public static final whitelist SAFETY_SOURCE_TYPE_DYNAMIC:I = 0x2

.field public static final whitelist SAFETY_SOURCE_TYPE_ISSUE_ONLY:I = 0x3

.field public static final whitelist SAFETY_SOURCE_TYPE_STATIC:I = 0x1


# instance fields
.field final blacklist mDeduplicationGroup:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mInitialDisplayState:I

.field private final blacklist mIntentAction:Ljava/lang/String;

.field private final blacklist mLoggingAllowed:Z

.field private final blacklist mMaxSeverityLevel:I

.field private final blacklist mNotificationsAllowed:Z

.field private final blacklist mPackageCertificateHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mProfile:I

.field private final blacklist mRefreshOnPageOpenAllowed:Z

.field private final blacklist mSearchTermsResId:I

.field private final blacklist mSummaryResId:I

.field private final blacklist mTitleForPrivateProfileResId:I

.field private final blacklist mTitleForWorkResId:I

.field private final blacklist mTitleResId:I

.field private final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/config/SafetySource;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialDisplayState(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntentAction(Landroid/safetycenter/config/SafetySource;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoggingAllowed(Landroid/safetycenter/config/SafetySource;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxSeverityLevel(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationsAllowed(Landroid/safetycenter/config/SafetySource;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageCertificateHashes(Landroid/safetycenter/config/SafetySource;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/safetycenter/config/SafetySource;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfile(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRefreshOnPageOpenAllowed(Landroid/safetycenter/config/SafetySource;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSearchTermsResId(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummaryResId(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleForPrivateProfileResId(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleForWorkResId(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitleResId(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/safetycenter/config/SafetySource;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Landroid/safetycenter/config/SafetySource$1;

    invoke-direct {v0}, Landroid/safetycenter/config/SafetySource$1;-><init>()V

    sput-object v0, Landroid/safetycenter/config/SafetySource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IIIIZZZLjava/lang/String;Ljava/util/Set;I)V
    .registers 34
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "titleResId"    # I
    .param p5, "titleForWorkResId"    # I
    .param p6, "summaryResId"    # I
    .param p7, "intentAction"    # Ljava/lang/String;
    .param p8, "profile"    # I
    .param p9, "initialDisplayState"    # I
    .param p10, "maxSeverityLevel"    # I
    .param p11, "searchTermsResId"    # I
    .param p12, "loggingAllowed"    # Z
    .param p13, "refreshOnPageOpenAllowed"    # Z
    .param p14, "notificationsAllowed"    # Z
    .param p15, "deduplicationGroup"    # Ljava/lang/String;
    .param p17, "titleForPrivateProfileResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "IIIIZZZ",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 235
    .local p16, "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 236
    move/from16 v1, p1

    iput v1, v0, Landroid/safetycenter/config/SafetySource;->mType:I

    .line 237
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    .line 238
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    .line 239
    move/from16 v4, p4

    iput v4, v0, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    .line 240
    move/from16 v5, p5

    iput v5, v0, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    .line 241
    move/from16 v6, p6

    iput v6, v0, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    .line 242
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    .line 243
    move/from16 v8, p8

    iput v8, v0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    .line 244
    move/from16 v9, p9

    iput v9, v0, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    .line 245
    move/from16 v10, p10

    iput v10, v0, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    .line 246
    move/from16 v11, p11

    iput v11, v0, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    .line 247
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    .line 248
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    .line 249
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    .line 250
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    .line 251
    invoke-static/range {p16 .. p16}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    .line 252
    move/from16 v1, p17

    iput v1, v0, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    .line 253
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IIIIZZZLjava/lang/String;Ljava/util/Set;ILandroid/safetycenter/config/SafetySource-IA;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Landroid/safetycenter/config/SafetySource;-><init>(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IIIIZZZLjava/lang/String;Ljava/util/Set;I)V

    return-void
.end method


# virtual methods
.method public whitelist areNotificationsAllowed()Z
    .registers 3

    .line 531
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 535
    iget-boolean v0, p0, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    return v0

    .line 532
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 579
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 580
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/config/SafetySource;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 581
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/config/SafetySource;

    .line 582
    .local v1, "that":Landroid/safetycenter/config/SafetySource;
    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mType:I

    if-ne v3, v4, :cond_88

    iget-object v3, p0, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    .line 583
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    iget-object v3, p0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    .line 584
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    if-ne v3, v4, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    if-ne v3, v4, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    if-ne v3, v4, :cond_88

    iget-object v3, p0, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    .line 588
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mProfile:I

    if-ne v3, v4, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    if-ne v3, v4, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    if-ne v3, v4, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    if-ne v3, v4, :cond_88

    iget-boolean v3, p0, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    iget-boolean v4, v1, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    if-ne v3, v4, :cond_88

    iget-boolean v3, p0, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    iget-boolean v4, v1, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    if-ne v3, v4, :cond_88

    iget-boolean v3, p0, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    iget-boolean v4, v1, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    if-ne v3, v4, :cond_88

    iget-object v3, p0, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    .line 596
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    iget-object v3, p0, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    iget-object v4, v1, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    .line 597
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    iget v3, p0, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    iget v4, v1, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    if-ne v3, v4, :cond_88

    goto :goto_89

    :cond_88
    move v0, v2

    .line 582
    :goto_89
    return v0
.end method

.method public whitelist getDeduplicationGroup()Ljava/lang/String;
    .registers 3

    .line 547
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 551
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    return-object v0

    .line 548
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInitialDisplayState()I
    .registers 3

    .line 442
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    .line 446
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 450
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    return v0

    .line 447
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInitialDisplayState unsupported for issue-only safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInitialDisplayState unsupported for static safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIntentAction()Ljava/lang/String;
    .registers 3

    .line 420
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 424
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    return-object v0

    .line 421
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIntentAction unsupported for issue-only safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMaxSeverityLevel()I
    .registers 3

    .line 466
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 470
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    return v0

    .line 467
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getMaxSeverityLevel unsupported for static safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOptionalPackageName()Ljava/lang/String;
    .registers 3

    .line 308
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    return-object v0

    .line 309
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPackageCertificateHashes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 574
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    return-object v0

    .line 571
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 3

    .line 285
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 289
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    return-object v0

    .line 286
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageName unsupported for static safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProfile()I
    .registers 2

    .line 430
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    return v0
.end method

.method public whitelist getSearchTermsResId()I
    .registers 3

    .line 485
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 489
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    return v0

    .line 486
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSearchTermsResId unsupported for issue-only safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSummaryResId()I
    .registers 3

    .line 401
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 405
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    return v0

    .line 402
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSummaryResId unsupported for issue-only safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTitleForPrivateProfileResId()I
    .registers 3

    .line 374
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 378
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    .line 382
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    .line 386
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    return v0

    .line 383
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitleForPrivateProfileResId unsupported for primary profile safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitleForPrivateProfileResId unsupported for issue-only safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitleForPrivateProfileResId unsupported for SDKs lower than V"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTitleForWorkResId()I
    .registers 3

    .line 347
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    .line 351
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 355
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    return v0

    .line 352
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitleForWorkResId unsupported for primary profile safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitleForWorkResId unsupported for issue-only safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTitleResId()I
    .registers 3

    .line 327
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 331
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    return v0

    .line 328
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitleResId unsupported for issue-only safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 20

    .line 603
    move-object/from16 v0, p0

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mType:I

    .line 604
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    iget-object v4, v0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    .line 607
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    .line 609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    .line 611
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    .line 612
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    .line 613
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    .line 614
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    .line 615
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    .line 616
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v1, v0, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    .line 617
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    .line 620
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    .line 603
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isLoggingAllowed()Z
    .registers 3

    .line 499
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 503
    iget-boolean v0, p0, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    return v0

    .line 500
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isLoggingAllowed unsupported for static safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isRefreshOnPageOpenAllowed()Z
    .registers 3

    .line 516
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 520
    iget-boolean v0, p0, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    return v0

    .line 517
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isRefreshOnPageOpenAllowed unsupported for static safety source"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetySource{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitleForWorkResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummaryResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInitialDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxSeverityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSearchTermsResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLoggingAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefreshOnPageOpenAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeduplicationGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageCertificateHashes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitleForPrivateProfileResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 670
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mTitleForWorkResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mSummaryResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mProfile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mInitialDisplayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mMaxSeverityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mSearchTermsResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget-boolean v0, p0, Landroid/safetycenter/config/SafetySource;->mLoggingAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 682
    iget-boolean v0, p0, Landroid/safetycenter/config/SafetySource;->mRefreshOnPageOpenAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 683
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 684
    iget-boolean v0, p0, Landroid/safetycenter/config/SafetySource;->mNotificationsAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 685
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource;->mPackageCertificateHashes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 688
    :cond_5a
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static {}, Landroid/permission/jarjar/com/android/permission/flags/Flags;->privateProfileTitleApi()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 689
    iget v0, p0, Landroid/safetycenter/config/SafetySource;->mTitleForPrivateProfileResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    :cond_6b
    return-void
.end method
