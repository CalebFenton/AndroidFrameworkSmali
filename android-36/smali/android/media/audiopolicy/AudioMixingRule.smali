.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;,
        Landroid/media/audiopolicy/AudioMixingRule$Builder;,
        Landroid/media/audiopolicy/AudioMixingRule$MixRole;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioMixingRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MIX_ROLE_INJECTOR:I = 0x1

.field public static final whitelist MIX_ROLE_PLAYERS:I = 0x0

.field public static final greylist-max-o RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET:I = 0x8002

.field public static final greylist-max-o RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x8001

.field public static final blacklist RULE_EXCLUDE_AUDIO_SESSION_ID:I = 0x8010

.field public static final greylist-max-o RULE_EXCLUDE_UID:I = 0x8004

.field public static final blacklist RULE_EXCLUDE_USERID:I = 0x8008

.field private static final greylist-max-o RULE_EXCLUSION_MASK:I = 0x8000

.field public static final whitelist RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET:I = 0x2

.field public static final whitelist RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1

.field public static final whitelist RULE_MATCH_AUDIO_SESSION_ID:I = 0x10

.field public static final whitelist RULE_MATCH_UID:I = 0x4

.field public static final whitelist RULE_MATCH_USERID:I = 0x8


# instance fields
.field private greylist-max-r mAllowPrivilegedPlaybackCapture:Z

.field private final greylist-max-r mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTargetMixType:I

.field private greylist-max-r mVoiceCommunicationCaptureAllowed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisAudioAttributeRule(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isAudioAttributeRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisPlayerRule(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisRecorderRule(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isRecorderRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidAttributesSystemApiRule(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidAttributesSystemApiRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidRule(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidSystemApiRule(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 759
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioMixingRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Collection;ZZ)V
    .registers 6
    .param p1, "mixType"    # I
    .param p3, "allowPrivilegedMediaPlaybackCapture"    # Z
    .param p4, "voiceCommunicationCaptureAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;ZZ)V"
        }
    .end annotation

    .line 60
    .local p2, "criteria":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    .line 318
    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    .line 62
    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    .line 63
    iput-boolean p3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    .line 64
    iput-boolean p4, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Collection;ZZLandroid/media/audiopolicy/AudioMixingRule-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/Collection;ZZ)V

    return-void
.end method

.method private static greylist-max-o isAudioAttributeRule(I)Z
    .registers 2
    .param p0, "match_rule"    # I

    .line 437
    packed-switch p0, :pswitch_data_8

    .line 442
    const/4 v0, 0x0

    return v0

    .line 440
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o isPlayerRule(I)Z
    .registers 3
    .param p0, "rule"    # I

    .line 416
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 417
    .local v0, "match_rule":I
    sparse-switch v0, :sswitch_data_c

    .line 422
    const/4 v1, 0x0

    return v1

    .line 420
    :sswitch_9
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x8 -> :sswitch_9
    .end sparse-switch
.end method

.method private static blacklist isRecorderRule(I)Z
    .registers 3
    .param p0, "rule"    # I

    .line 427
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 428
    .local v0, "match_rule":I
    packed-switch v0, :pswitch_data_c

    .line 432
    const/4 v1, 0x0

    return v1

    .line 430
    :pswitch_9
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method private static greylist-max-o isValidAttributesSystemApiRule(I)Z
    .registers 2
    .param p0, "rule"    # I

    .line 392
    packed-switch p0, :pswitch_data_8

    .line 397
    const/4 v0, 0x0

    return v0

    .line 395
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o isValidRule(I)Z
    .registers 3
    .param p0, "rule"    # I

    .line 402
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 403
    .local v0, "match_rule":I
    sparse-switch v0, :sswitch_data_c

    .line 411
    const/4 v1, 0x0

    return v1

    .line 409
    :sswitch_9
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x4 -> :sswitch_9
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
    .end sparse-switch
.end method

.method private static greylist-max-o isValidSystemApiRule(I)Z
    .registers 2
    .param p0, "rule"    # I

    .line 379
    sparse-switch p0, :sswitch_data_8

    .line 387
    const/4 v0, 0x0

    return v0

    .line 385
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0x8 -> :sswitch_5
        0x10 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public blacklist allowPrivilegedMediaPlaybackCapture()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    return v0
.end method

.method blacklist containsMatchAttributeRuleForUsage(I)Z
    .registers 6
    .param p1, "usage"    # I

    .line 267
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 268
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 270
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    if-ne v2, p1, :cond_24

    .line 271
    return v3

    .line 273
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_24
    goto :goto_6

    .line 274
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 358
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 360
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioMixingRule;

    .line 361
    .local v2, "that":Landroid/media/audiopolicy/AudioMixingRule;
    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    iget v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    .line 362
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    iget-boolean v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    iget-boolean v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 361
    :goto_33
    return v0

    .line 358
    .end local v2    # "that":Landroid/media/audiopolicy/AudioMixingRule;
    :cond_34
    :goto_34
    return v1
.end method

.method public greylist-max-o getCriteria()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getTargetMixRole()I
    .registers 3

    .line 305
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method greylist-max-o getTargetMixType()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 370
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    iget-boolean v2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    .line 373
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 374
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 370
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method greylist-max-o isAffectingUsage(I)Z
    .registers 6
    .param p1, "usage"    # I

    .line 250
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 251
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_25

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 253
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 254
    return v3

    .line 256
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_25
    goto :goto_6

    .line 257
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isForCallRedirection()Z
    .registers 7

    .line 338
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 339
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_43

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 340
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->isForCallRedirection()Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_35

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 342
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    if-eq v2, v3, :cond_42

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 343
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_42

    :cond_35
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v2, v3, :cond_43

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 346
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_43

    .line 348
    :cond_42
    return v4

    .line 350
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_43
    goto :goto_6

    .line 351
    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceCommunicationCaptureAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .line 333
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    .line 334
    return-void
.end method

.method public blacklist voiceCommunicationCaptureAllowed()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 747
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mAllowPrivilegedPlaybackCapture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 749
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mVoiceCommunicationCaptureAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 755
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    invoke-virtual {v1, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->writeToParcel(Landroid/os/Parcel;I)V

    .line 756
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    goto :goto_1e

    .line 757
    :cond_2e
    return-void
.end method
