.class public final Landroid/safetycenter/config/SafetySource$Builder;
.super Ljava/lang/Object;
.source "SafetySource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/config/SafetySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeduplicationGroup:Ljava/lang/String;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mInitialDisplayState:Ljava/lang/Integer;

.field private blacklist mIntentAction:Ljava/lang/String;

.field private blacklist mLoggingAllowed:Ljava/lang/Boolean;

.field private blacklist mMaxSeverityLevel:Ljava/lang/Integer;

.field private blacklist mNotificationsAllowed:Ljava/lang/Boolean;

.field private final blacklist mPackageCertificateHashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mProfile:Ljava/lang/Integer;

.field private blacklist mRefreshOnPageOpenAllowed:Ljava/lang/Boolean;

.field private blacklist mSearchTermsResId:Ljava/lang/Integer;

.field private blacklist mSummaryResId:Ljava/lang/Integer;

.field private blacklist mTitleForPrivateProfileResId:Ljava/lang/Integer;

.field private blacklist mTitleForWorkResId:Ljava/lang/Integer;

.field private blacklist mTitleResId:Ljava/lang/Integer;

.field private final blacklist mType:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageCertificateHashes:Landroid/util/ArraySet;

    .line 716
    iput p1, p0, Landroid/safetycenter/config/SafetySource$Builder;->mType:I

    .line 717
    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/config/SafetySource;)V
    .registers 4
    .param p1, "safetySource"    # Landroid/safetycenter/config/SafetySource;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageCertificateHashes:Landroid/util/ArraySet;

    .line 722
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 726
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmType(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mType:I

    .line 728
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmId(Landroid/safetycenter/config/SafetySource;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mId:Ljava/lang/String;

    .line 729
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmPackageName(Landroid/safetycenter/config/SafetySource;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageName:Ljava/lang/String;

    .line 730
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmTitleResId(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleResId:Ljava/lang/Integer;

    .line 731
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmTitleForWorkResId(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleForWorkResId:Ljava/lang/Integer;

    .line 732
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmSummaryResId(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mSummaryResId:Ljava/lang/Integer;

    .line 733
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmIntentAction(Landroid/safetycenter/config/SafetySource;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mIntentAction:Ljava/lang/String;

    .line 734
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmProfile(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mProfile:Ljava/lang/Integer;

    .line 735
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmInitialDisplayState(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mInitialDisplayState:Ljava/lang/Integer;

    .line 736
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmMaxSeverityLevel(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mMaxSeverityLevel:Ljava/lang/Integer;

    .line 737
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmSearchTermsResId(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mSearchTermsResId:Ljava/lang/Integer;

    .line 738
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmLoggingAllowed(Landroid/safetycenter/config/SafetySource;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mLoggingAllowed:Ljava/lang/Boolean;

    .line 739
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmRefreshOnPageOpenAllowed(Landroid/safetycenter/config/SafetySource;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mRefreshOnPageOpenAllowed:Ljava/lang/Boolean;

    .line 740
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmNotificationsAllowed(Landroid/safetycenter/config/SafetySource;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mNotificationsAllowed:Ljava/lang/Boolean;

    .line 741
    iget-object v0, p1, Landroid/safetycenter/config/SafetySource;->mDeduplicationGroup:Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mDeduplicationGroup:Ljava/lang/String;

    .line 742
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageCertificateHashes:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmPackageCertificateHashes(Landroid/safetycenter/config/SafetySource;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 743
    invoke-static {p1}, Landroid/safetycenter/config/SafetySource;->-$$Nest$fgetmTitleForPrivateProfileResId(Landroid/safetycenter/config/SafetySource;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleForPrivateProfileResId:Ljava/lang/Integer;

    .line 744
    return-void

    .line 723
    :cond_a7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addPackageCertificateHash(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 4
    .param p1, "packageCertificateHash"    # Ljava/lang/String;

    .line 1003
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1007
    iget-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageCertificateHashes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1008
    return-object p0

    .line 1004
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/safetycenter/config/SafetySource;
    .registers 32

    .line 1019
    move-object/from16 v0, p0

    iget v2, v0, Landroid/safetycenter/config/SafetySource$Builder;->mType:I

    .line 1020
    .local v2, "type":I
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_16

    if-eq v2, v3, :cond_16

    if-ne v2, v1, :cond_e

    goto :goto_16

    .line 1023
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected type"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1025
    :cond_16
    :goto_16
    const/4 v5, 0x0

    if-ne v2, v4, :cond_1b

    move v6, v4

    goto :goto_1c

    :cond_1b
    move v6, v5

    .line 1026
    .local v6, "isStatic":Z
    :goto_1c
    if-ne v2, v3, :cond_20

    move v7, v4

    goto :goto_21

    :cond_20
    move v7, v5

    :goto_21
    move/from16 v20, v7

    .line 1027
    .local v20, "isDynamic":Z
    if-ne v2, v1, :cond_27

    move v1, v4

    goto :goto_28

    :cond_27
    move v1, v5

    .line 1029
    .local v1, "isIssueOnly":Z
    :goto_28
    iget-object v7, v0, Landroid/safetycenter/config/SafetySource$Builder;->mId:Ljava/lang/String;

    .line 1030
    .local v7, "id":Ljava/lang/String;
    const-string v8, "id"

    invoke-static {v7, v8, v4, v5}, Landroid/safetycenter/config/BuilderUtils;->validateId(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1032
    iget-object v8, v0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageName:Ljava/lang/String;

    .line 1033
    .local v8, "packageName":Ljava/lang/String;
    if-nez v20, :cond_38

    if-eqz v1, :cond_36

    goto :goto_38

    :cond_36
    move v9, v5

    goto :goto_39

    :cond_38
    :goto_38
    move v9, v4

    :goto_39
    if-eqz v6, :cond_43

    .line 1037
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v10

    if-nez v10, :cond_43

    move v10, v4

    goto :goto_44

    :cond_43
    move v10, v5

    .line 1033
    :goto_44
    const-string v11, "packageName"

    invoke-static {v8, v11, v9, v10}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZ)V

    .line 1039
    iget-object v12, v0, Landroid/safetycenter/config/SafetySource$Builder;->mInitialDisplayState:Ljava/lang/Integer;

    if-nez v6, :cond_52

    if-eqz v1, :cond_50

    goto :goto_52

    :cond_50
    move v15, v5

    goto :goto_53

    :cond_52
    :goto_52
    move v15, v4

    :goto_53
    filled-new-array {v5, v4, v3}, [I

    move-result-object v17

    .line 1040
    const-string v13, "initialDisplayState"

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v17}, Landroid/safetycenter/config/BuilderUtils;->validateIntDef(Ljava/lang/Integer;Ljava/lang/String;ZZI[I)I

    move-result v10

    .line 1049
    .local v10, "initialDisplayState":I
    if-nez v10, :cond_64

    move v9, v4

    goto :goto_65

    :cond_64
    move v9, v5

    :goto_65
    move/from16 v21, v9

    .line 1050
    .local v21, "isEnabled":Z
    if-ne v10, v3, :cond_6b

    move v9, v4

    goto :goto_6c

    :cond_6b
    move v9, v5

    :goto_6c
    move/from16 v22, v9

    .line 1051
    .local v22, "isHidden":Z
    if-eqz v20, :cond_74

    if-nez v22, :cond_74

    move v9, v4

    goto :goto_75

    :cond_74
    move v9, v5

    .line 1053
    .local v9, "isDynamicNotHidden":Z
    :goto_75
    iget-object v11, v0, Landroid/safetycenter/config/SafetySource$Builder;->mProfile:Ljava/lang/Integer;

    filled-new-array {v4, v3}, [I

    move-result-object v16

    .line 1054
    const-string v12, "profile"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v16}, Landroid/safetycenter/config/BuilderUtils;->validateIntDef(Ljava/lang/Integer;Ljava/lang/String;ZZI[I)I

    move-result v11

    .line 1062
    .local v11, "profile":I
    if-ne v11, v3, :cond_88

    move v3, v4

    goto :goto_89

    :cond_88
    move v3, v5

    :goto_89
    move/from16 v23, v3

    .line 1064
    .local v23, "hasAllProfiles":Z
    iget-object v3, v0, Landroid/safetycenter/config/SafetySource$Builder;->mSearchTermsResId:Ljava/lang/Integer;

    .line 1065
    const-string v12, "searchTerms"

    invoke-static {v3, v12, v5, v1}, Landroid/safetycenter/config/BuilderUtils;->validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I

    move-result v12

    .line 1067
    .local v12, "searchTermsResId":I
    if-eqz v20, :cond_9b

    if-eqz v22, :cond_9b

    if-eqz v12, :cond_9b

    move v3, v4

    goto :goto_9c

    :cond_9b
    move v3, v5

    :goto_9c
    move/from16 v24, v3

    .line 1070
    .local v24, "isDynamicHiddenWithSearch":Z
    if-nez v9, :cond_a7

    if-nez v24, :cond_a7

    if-eqz v6, :cond_a5

    goto :goto_a7

    :cond_a5
    move v3, v5

    goto :goto_a8

    :cond_a7
    :goto_a7
    move v3, v4

    .line 1071
    .local v3, "titleRequired":Z
    :goto_a8
    iget-object v13, v0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleResId:Ljava/lang/Integer;

    .line 1072
    const-string v14, "title"

    invoke-static {v13, v14, v3, v1}, Landroid/safetycenter/config/BuilderUtils;->validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I

    move-result v13

    .line 1074
    .local v13, "titleResId":I
    iget-object v14, v0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleForWorkResId:Ljava/lang/Integer;

    if-eqz v23, :cond_b8

    if-eqz v3, :cond_b8

    move v15, v4

    goto :goto_b9

    :cond_b8
    move v15, v5

    :goto_b9
    if-eqz v23, :cond_bf

    if-eqz v1, :cond_be

    goto :goto_bf

    :cond_be
    move v4, v5

    .line 1075
    :cond_bf
    :goto_bf
    const-string v5, "titleForWork"

    invoke-static {v14, v5, v15, v4}, Landroid/safetycenter/config/BuilderUtils;->validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I

    move-result v4

    .line 1081
    .local v4, "titleForWorkResId":I
    iget-object v5, v0, Landroid/safetycenter/config/SafetySource$Builder;->mSummaryResId:Ljava/lang/Integer;

    .line 1082
    const-string v14, "summary"

    invoke-static {v5, v14, v9, v1}, Landroid/safetycenter/config/BuilderUtils;->validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I

    move-result v5

    .line 1085
    .local v5, "summaryResId":I
    move v14, v4

    move-object v4, v8

    .end local v8    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v14, "titleForWorkResId":I
    iget-object v8, v0, Landroid/safetycenter/config/SafetySource$Builder;->mIntentAction:Ljava/lang/String;

    .line 1086
    .local v8, "intentAction":Ljava/lang/String;
    if-eqz v20, :cond_d5

    if-nez v21, :cond_d7

    :cond_d5
    if-eqz v6, :cond_d9

    :cond_d7
    const/4 v15, 0x1

    goto :goto_da

    :cond_d9
    const/4 v15, 0x0

    :goto_da
    move/from16 v18, v2

    .end local v2    # "type":I
    .local v18, "type":I
    const-string v2, "intentAction"

    invoke-static {v8, v2, v15, v1}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZ)V

    .line 1092
    iget-object v2, v0, Landroid/safetycenter/config/SafetySource$Builder;->mMaxSeverityLevel:Ljava/lang/Integer;

    .line 1093
    const-string v15, "maxSeverityLevel"

    move/from16 v19, v1

    .end local v1    # "isIssueOnly":Z
    .local v19, "isIssueOnly":Z
    const v1, 0x7fffffff

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "titleRequired":Z
    .local v25, "titleRequired":Z
    invoke-static {v2, v15, v3, v6, v1}, Landroid/safetycenter/config/BuilderUtils;->validateInteger(Ljava/lang/Integer;Ljava/lang/String;ZZI)I

    move-result v1

    .line 1100
    .local v1, "maxSeverityLevel":I
    iget-object v2, v0, Landroid/safetycenter/config/SafetySource$Builder;->mLoggingAllowed:Ljava/lang/Boolean;

    .line 1101
    const-string v15, "loggingAllowed"

    move/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "maxSeverityLevel":I
    .local v26, "maxSeverityLevel":I
    invoke-static {v2, v15, v3, v6, v1}, Landroid/safetycenter/config/BuilderUtils;->validateBoolean(Ljava/lang/Boolean;Ljava/lang/String;ZZZ)Z

    move-result v2

    .line 1104
    .local v2, "loggingAllowed":Z
    iget-object v15, v0, Landroid/safetycenter/config/SafetySource$Builder;->mRefreshOnPageOpenAllowed:Ljava/lang/Boolean;

    .line 1105
    const-string v1, "refreshOnPageOpenAllowed"

    invoke-static {v15, v1, v3, v6, v3}, Landroid/safetycenter/config/BuilderUtils;->validateBoolean(Ljava/lang/Boolean;Ljava/lang/String;ZZZ)Z

    move-result v1

    .line 1112
    .local v1, "refreshOnPageOpenAllowed":Z
    iget-object v3, v0, Landroid/safetycenter/config/SafetySource$Builder;->mDeduplicationGroup:Ljava/lang/String;

    .line 1113
    .local v3, "deduplicationGroup":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1114
    .local v15, "notificationsAllowed":Z
    move/from16 v27, v1

    .end local v1    # "refreshOnPageOpenAllowed":Z
    .local v27, "refreshOnPageOpenAllowed":Z
    iget-object v1, v0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageCertificateHashes:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 1115
    .local v1, "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v28

    if-eqz v28, :cond_12f

    .line 1116
    move/from16 v28, v2

    .end local v2    # "loggingAllowed":Z
    .local v28, "loggingAllowed":Z
    iget-object v2, v0, Landroid/safetycenter/config/SafetySource$Builder;->mNotificationsAllowed:Ljava/lang/Boolean;

    .line 1117
    move-object/from16 v29, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v29, "packageName":Ljava/lang/String;
    const-string v4, "notificationsAllowed"

    move/from16 v30, v5

    const/4 v5, 0x0

    .end local v5    # "summaryResId":I
    .local v30, "summaryResId":I
    invoke-static {v2, v4, v5, v6, v5}, Landroid/safetycenter/config/BuilderUtils;->validateBoolean(Ljava/lang/Boolean;Ljava/lang/String;ZZZ)Z

    move-result v15

    .line 1124
    const-string v2, "deduplicationGroup"

    invoke-static {v3, v2, v5, v6}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZ)V

    .line 1126
    const-string v2, "packageCertificateHashes"

    invoke-static {v1, v2, v5, v6}, Landroid/safetycenter/config/BuilderUtils;->validateCollection(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    goto :goto_136

    .line 1115
    .end local v28    # "loggingAllowed":Z
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v30    # "summaryResId":I
    .restart local v2    # "loggingAllowed":Z
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "summaryResId":I
    :cond_12f
    move/from16 v28, v2

    move-object/from16 v29, v4

    move/from16 v30, v5

    const/4 v5, 0x0

    .line 1130
    .end local v2    # "loggingAllowed":Z
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "summaryResId":I
    .restart local v28    # "loggingAllowed":Z
    .restart local v29    # "packageName":Ljava/lang/String;
    .restart local v30    # "summaryResId":I
    :goto_136
    const/4 v2, 0x0

    .line 1131
    .local v2, "titleForPrivateProfileResId":I
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v4

    if-eqz v4, :cond_15b

    invoke-static {}, Landroid/permission/jarjar/com/android/permission/flags/Flags;->privateProfileTitleApi()Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 1132
    iget-object v4, v0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleForPrivateProfileResId:Ljava/lang/Integer;

    if-eqz v23, :cond_14a

    if-eqz v25, :cond_14a

    const/4 v5, 0x1

    :cond_14a
    if-eqz v23, :cond_151

    if-eqz v19, :cond_14f

    goto :goto_151

    :cond_14f
    const/4 v0, 0x0

    goto :goto_152

    :cond_151
    :goto_151
    const/4 v0, 0x1

    .line 1133
    :goto_152
    move-object/from16 v17, v1

    .end local v1    # "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v17, "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "titleForPrivateProfile"

    invoke-static {v4, v1, v5, v0}, Landroid/safetycenter/config/BuilderUtils;->validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I

    move-result v2

    goto :goto_15d

    .line 1131
    .end local v17    # "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15b
    move-object/from16 v17, v1

    .line 1140
    .end local v1    # "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "packageCertificateHashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_15d
    new-instance v1, Landroid/safetycenter/config/SafetySource;

    move/from16 v0, v19

    .end local v19    # "isIssueOnly":Z
    .local v0, "isIssueOnly":Z
    const/16 v19, 0x0

    move/from16 v4, v25

    move/from16 v25, v0

    move v0, v6

    move v6, v14

    move/from16 v14, v27

    move/from16 v27, v4

    move/from16 v4, v18

    move/from16 v18, v2

    move v2, v4

    move/from16 v4, v26

    move/from16 v26, v9

    move v9, v11

    move v11, v4

    move-object/from16 v16, v3

    move-object v3, v7

    move v5, v13

    move/from16 v13, v28

    move-object/from16 v4, v29

    move/from16 v7, v30

    .end local v28    # "loggingAllowed":Z
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v30    # "summaryResId":I
    .local v0, "isStatic":Z
    .local v2, "type":I
    .local v3, "id":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .local v5, "titleResId":I
    .local v6, "titleForWorkResId":I
    .local v7, "summaryResId":I
    .local v9, "profile":I
    .local v11, "maxSeverityLevel":I
    .local v13, "loggingAllowed":Z
    .local v14, "refreshOnPageOpenAllowed":Z
    .local v16, "deduplicationGroup":Ljava/lang/String;
    .local v18, "titleForPrivateProfileResId":I
    .local v25, "isIssueOnly":Z
    .local v26, "isDynamicNotHidden":Z
    .local v27, "titleRequired":Z
    invoke-direct/range {v1 .. v19}, Landroid/safetycenter/config/SafetySource;-><init>(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IIIIZZZLjava/lang/String;Ljava/util/Set;ILandroid/safetycenter/config/SafetySource-IA;)V

    .end local v13    # "loggingAllowed":Z
    .restart local v28    # "loggingAllowed":Z
    return-object v1
.end method

.method public whitelist setDeduplicationGroup(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 4
    .param p1, "deduplicationGroup"    # Ljava/lang/String;

    .line 986
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 990
    iput-object p1, p0, Landroid/safetycenter/config/SafetySource$Builder;->mDeduplicationGroup:Ljava/lang/String;

    .line 991
    return-object p0

    .line 987
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 753
    iput-object p1, p0, Landroid/safetycenter/config/SafetySource$Builder;->mId:Ljava/lang/String;

    .line 754
    return-object p0
.end method

.method public whitelist setInitialDisplayState(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "initialDisplayState"    # I

    .line 888
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mInitialDisplayState:Ljava/lang/Integer;

    .line 889
    return-object p0
.end method

.method public whitelist setIntentAction(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 2
    .param p1, "intentAction"    # Ljava/lang/String;

    .line 866
    iput-object p1, p0, Landroid/safetycenter/config/SafetySource$Builder;->mIntentAction:Ljava/lang/String;

    .line 867
    return-object p0
.end method

.method public whitelist setLoggingAllowed(Z)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "loggingAllowed"    # Z

    .line 934
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mLoggingAllowed:Ljava/lang/Boolean;

    .line 935
    return-object p0
.end method

.method public whitelist setMaxSeverityLevel(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "maxSeverityLevel"    # I

    .line 905
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mMaxSeverityLevel:Ljava/lang/Integer;

    .line 906
    return-object p0
.end method

.method public whitelist setNotificationsAllowed(Z)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 4
    .param p1, "notificationsAllowed"    # Z

    .line 966
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 970
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mNotificationsAllowed:Ljava/lang/Boolean;

    .line 971
    return-object p0

    .line 967
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 768
    iput-object p1, p0, Landroid/safetycenter/config/SafetySource$Builder;->mPackageName:Ljava/lang/String;

    .line 769
    return-object p0
.end method

.method public whitelist setProfile(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "profile"    # I

    .line 877
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mProfile:Ljava/lang/Integer;

    .line 878
    return-object p0
.end method

.method public whitelist setRefreshOnPageOpenAllowed(Z)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "refreshOnPageOpenAllowed"    # Z

    .line 949
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mRefreshOnPageOpenAllowed:Ljava/lang/Boolean;

    .line 950
    return-object p0
.end method

.method public whitelist setSearchTermsResId(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "searchTermsResId"    # I

    .line 921
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mSearchTermsResId:Ljava/lang/Integer;

    .line 922
    return-object p0
.end method

.method public whitelist setSummaryResId(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "summaryResId"    # I

    .line 849
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mSummaryResId:Ljava/lang/Integer;

    .line 850
    return-object p0
.end method

.method public whitelist setTitleForPrivateProfileResId(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 4
    .param p1, "titleForPrivateProfileResId"    # I

    .line 828
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 832
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleForPrivateProfileResId:Ljava/lang/Integer;

    .line 833
    return-object p0

    .line 829
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setTitleForPrivateProfileResId unsupported for SDKs lower than V"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTitleForWorkResId(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "titleForWorkResId"    # I

    .line 806
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleForWorkResId:Ljava/lang/Integer;

    .line 807
    return-object p0
.end method

.method public whitelist setTitleResId(I)Landroid/safetycenter/config/SafetySource$Builder;
    .registers 3
    .param p1, "titleResId"    # I

    .line 786
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySource$Builder;->mTitleResId:Ljava/lang/Integer;

    .line 787
    return-object p0
.end method
