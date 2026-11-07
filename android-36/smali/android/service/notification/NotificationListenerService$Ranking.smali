.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$Ranking$RankingAdjustment;,
        Landroid/service/notification/NotificationListenerService$Ranking$UserSentiment;
    }
.end annotation


# static fields
.field private static final blacklist PARCEL_VERSION:I = 0x2

.field public static final blacklist RANKING_DEMOTED:I = -0x1

.field public static final blacklist RANKING_PROMOTED:I = 0x1

.field public static final blacklist RANKING_UNCHANGED:I = 0x0

.field public static final whitelist USER_SENTIMENT_NEGATIVE:I = -0x1

.field public static final whitelist USER_SENTIMENT_NEUTRAL:I = 0x0

.field public static final whitelist USER_SENTIMENT_POSITIVE:I = 0x1

.field public static final whitelist VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private blacklist mCanBubble:Z

.field private greylist-max-o mChannel:Landroid/app/NotificationChannel;

.field private greylist-max-o mHidden:Z

.field private greylist-max-o mImportance:I

.field private greylist-max-o mImportanceExplanation:Ljava/lang/CharSequence;

.field private greylist-max-o mIsAmbient:Z

.field private blacklist mIsBubble:Z

.field private blacklist mIsConversation:Z

.field private blacklist mIsTextChanged:Z

.field private greylist-max-o mKey:Ljava/lang/String;

.field private blacklist mLastAudiblyAlertedMs:J

.field private greylist-max-o mMatchesInterruptionFilter:Z

.field private blacklist mNoisy:Z

.field private greylist-max-o mOverrideGroupKey:Ljava/lang/String;

.field private greylist-max-o mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProposedImportance:I

.field private greylist-max-o mRank:I

.field private blacklist mRankingAdjustment:I

.field private blacklist mRankingScore:F

.field private blacklist mSensitiveContent:Z

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private greylist-max-o mShowBadge:Z

.field private blacklist mSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSummarization:Ljava/lang/String;

.field private greylist-max-o mSuppressedVisualEffects:I

.field private greylist-max-o mUserSentiment:I

.field private greylist-max-o mVisibilityOverride:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1796
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1813
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1834
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1796
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1813
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1876
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1878
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1879
    .local v1, "version":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d3

    .line 1883
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 1884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1885
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 1886
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 1887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 1888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 1889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 1890
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 1891
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    .line 1892
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 1893
    const-class v2, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 1894
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 1895
    sget-object v2, Landroid/service/notification/SnoozeCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 1896
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 1897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1898
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 1899
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 1900
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    .line 1901
    sget-object v2, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    .line 1902
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    .line 1903
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    .line 1904
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    .line 1905
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    .line 1906
    const-class v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    .line 1908
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    .line 1909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    .line 1910
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    .line 1911
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    .line 1912
    return-void

    .line 1880
    :cond_d3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "malformed Ranking parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static greylist-max-o importanceToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "importance"    # I

    .line 2298
    sparse-switch p0, :sswitch_data_34

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2311
    :sswitch_21
    const-string v0, "HIGH"

    return-object v0

    .line 2308
    :sswitch_24
    const-string v0, "DEFAULT"

    return-object v0

    .line 2306
    :sswitch_27
    const-string v0, "LOW"

    return-object v0

    .line 2304
    :sswitch_2a
    const-string v0, "MIN"

    return-object v0

    .line 2302
    :sswitch_2d
    const-string v0, "NONE"

    return-object v0

    .line 2300
    :sswitch_30
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :sswitch_data_34
    .sparse-switch
        -0x3e8 -> :sswitch_30
        0x0 -> :sswitch_2d
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_27
        0x3 -> :sswitch_24
        0x4 -> :sswitch_21
        0x5 -> :sswitch_21
    .end sparse-switch
.end method


# virtual methods
.method public whitelist canBubble()Z
    .registers 2

    .line 2147
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    return v0
.end method

.method public whitelist canShowBadge()Z
    .registers 2

    .line 2116
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 2319
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2320
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_1d9

    .line 2322
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2323
    .local v2, "other":Landroid/service/notification/NotificationListenerService$Ranking;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 2324
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 2325
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 2326
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 2327
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 2328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 2329
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 2330
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 2331
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 2332
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 2333
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 2334
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 2335
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 2336
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-wide v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 2337
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    .line 2338
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 2340
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v3, :cond_10c

    move v3, v1

    goto :goto_112

    :cond_10c
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2341
    :goto_112
    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v4, :cond_118

    move v4, v1

    goto :goto_11e

    :cond_118
    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_11e
    if-ne v3, v4, :cond_1d7

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    .line 2342
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    .line 2343
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    .line 2344
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    .line 2345
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 2347
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v3, :cond_169

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_16f

    :cond_169
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2348
    :goto_16f
    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v4, :cond_178

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_17e

    :cond_178
    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 2347
    :goto_17e
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    .line 2349
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    .line 2350
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    .line 2351
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-boolean v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    .line 2352
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    .line 2353
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    goto :goto_1d8

    :cond_1d7
    move v0, v1

    .line 2323
    :goto_1d8
    return v0

    .line 2320
    .end local v2    # "other":Landroid/service/notification/NotificationListenerService$Ranking;
    :cond_1d9
    :goto_1d9
    return v1
.end method

.method public greylist getAdditionalPeople()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2066
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 2044
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public whitelist getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 2184
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public whitelist getImportance()I
    .registers 2

    .line 1979
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public whitelist getImportanceExplanation()Ljava/lang/CharSequence;
    .registers 2

    .line 1989
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 1919
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLastAudiblyAlertedMillis()J
    .registers 3

    .line 2136
    iget-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    return-wide v0
.end method

.method public whitelist getLockscreenVisibilityOverride()I
    .registers 2

    .line 1949
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public whitelist getOverrideGroupKey()Ljava/lang/String;
    .registers 2

    .line 2036
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProposedImportance()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2017
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    return v0
.end method

.method public whitelist getRank()I
    .registers 2

    .line 1929
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public blacklist getRankingAdjustment()I
    .registers 2

    .line 2202
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    return v0
.end method

.method public blacklist getRankingScore()F
    .registers 2

    .line 2000
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    return v0
.end method

.method public whitelist getSmartActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 2086
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    :goto_b
    return-object v0
.end method

.method public whitelist getSmartReplies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 2107
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    :goto_b
    return-object v0
.end method

.method public greylist getSnoozeCriteria()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 2078
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSummarization()Ljava/lang/String;
    .registers 2

    .line 2194
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuppressedVisualEffects()I
    .registers 2

    .line 1958
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public whitelist getUserSentiment()I
    .registers 2

    .line 2055
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return v0
.end method

.method public whitelist hasSensitiveContent()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2028
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    return v0
.end method

.method public whitelist isAmbient()Z
    .registers 2

    .line 1937
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public blacklist isBubble()Z
    .registers 2

    .line 2174
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    return v0
.end method

.method public whitelist isConversation()Z
    .registers 2

    .line 2166
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    return v0
.end method

.method public blacklist isNoisy()Z
    .registers 2

    .line 2157
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    return v0
.end method

.method public whitelist isSuspended()Z
    .registers 2

    .line 2126
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    return v0
.end method

.method public blacklist isTextChanged()Z
    .registers 2

    .line 2152
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    return v0
.end method

.method public whitelist matchesInterruptionFilter()Z
    .registers 2

    .line 1969
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method

.method public blacklist populate(Landroid/service/notification/NotificationListenerService$Ranking;)V
    .registers 32
    .param p1, "other"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2265
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iget v3, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    iget-boolean v4, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    iget v5, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    iget v6, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    iget v7, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    iget-object v8, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iget-object v10, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iget-object v11, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-boolean v13, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    iget v14, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    iget-boolean v15, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    move-object/from16 v16, v2

    iget-wide v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    iget-object v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    move/from16 v19, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    move/from16 v23, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    move-object/from16 v24, v1

    iget v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    move/from16 v25, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    move/from16 v26, v1

    iget v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    move/from16 v27, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    move/from16 v28, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    move/from16 v29, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    move-wide/from16 v16, v17

    move/from16 v18, v29

    move-object/from16 v29, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v29}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;)V

    .line 2292
    return-void
.end method

.method public blacklist populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;)V
    .registers 45
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;
    .param p9, "channel"    # Landroid/app/NotificationChannel;
    .param p12, "showBadge"    # Z
    .param p13, "userSentiment"    # I
    .param p14, "hidden"    # Z
    .param p15, "lastAudiblyAlertedMs"    # J
    .param p17, "noisy"    # Z
    .param p20, "canBubble"    # Z
    .param p21, "isTextChanged"    # Z
    .param p22, "isConversation"    # Z
    .param p23, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p24, "rankingAdjustment"    # I
    .param p25, "isBubble"    # Z
    .param p26, "proposedImportance"    # I
    .param p27, "sensitiveContent"    # Z
    .param p28, "summarization"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZIZJZ",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ",
            "Landroid/content/pm/ShortcutInfo;",
            "IZIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2220
    .local p10, "overridePeople":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p11, "snoozeCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    .local p18, "smartActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    .local p19, "smartReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 2221
    move/from16 v3, p2

    iput v3, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 2222
    const/4 v4, 0x2

    if-ge v1, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    iput-boolean v4, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 2223
    move/from16 v4, p3

    iput-boolean v4, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 2224
    move/from16 v5, p4

    iput v5, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 2225
    move/from16 v6, p5

    iput v6, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 2226
    iput v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 2227
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 2228
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 2229
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 2230
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 2231
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 2232
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 2233
    move/from16 v13, p13

    iput v13, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 2234
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 2235
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 2236
    move/from16 v15, p17

    iput-boolean v15, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    .line 2237
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    .line 2238
    move-object/from16 v2, p19

    iput-object v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    .line 2239
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    .line 2240
    move/from16 v1, p21

    iput-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    .line 2241
    move/from16 v1, p22

    iput-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    .line 2242
    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 2243
    move/from16 v1, p24

    iput v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    .line 2244
    move/from16 v1, p25

    iput-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    .line 2245
    move/from16 v1, p26

    iput v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    .line 2246
    move/from16 v1, p27

    iput-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    .line 2247
    invoke-static/range {p28 .. p28}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    .line 2248
    return-void
.end method

.method public blacklist setSmartActions(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;)V"
        }
    .end annotation

    .line 2100
    .local p1, "smartActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    .line 2101
    return-void
.end method

.method public blacklist withAudiblyAlertedInfo(Landroid/service/notification/NotificationListenerService$Ranking;)Landroid/service/notification/NotificationListenerService$Ranking;
    .registers 6
    .param p1, "previous"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2254
    if-eqz p1, :cond_14

    iget-wide v0, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 2256
    iget-wide v0, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    iput-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 2258
    :cond_14
    return-object p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1840
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    int-to-long v0, v0

    .line 1841
    .local v0, "start":J
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1842
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1843
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1845
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1846
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1848
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1850
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1851
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1852
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1853
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1854
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1855
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1856
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1858
    iget-wide v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1859
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1860
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1861
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequenceList(Ljava/util/ArrayList;)V

    .line 1862
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1863
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1864
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1865
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1866
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1868
    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1869
    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1870
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1871
    return-void
.end method
