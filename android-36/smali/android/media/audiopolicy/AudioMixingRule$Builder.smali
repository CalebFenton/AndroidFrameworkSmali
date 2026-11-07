.class public Landroid/media/audiopolicy/AudioMixingRule$Builder;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowPrivilegedMediaPlaybackCapture:Z

.field private final blacklist mCriteria:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTargetMixType:I

.field private blacklist mVoiceCommunicationCaptureAllowed:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$DXJIoM-ZdeHxRjLqQf679sU5vC8(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$mJ1IGv61p3ro9ldbVfUy40LBddw(I)Z
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$Builder;Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    .line 454
    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    .line 460
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    .line 461
    return-void
.end method

.method private blacklist addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 7
    .param p1, "criterion"    # Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 697
    iget v0, p1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    .line 698
    .local v0, "rule":I
    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1b

    .line 699
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 700
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_38

    .line 701
    :cond_12
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 702
    iput v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_38

    .line 704
    :cond_1b
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-nez v1, :cond_30

    .line 705
    :cond_25
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result v1

    if-eqz v1, :cond_38

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-ne v1, v3, :cond_30

    goto :goto_38

    .line 707
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incompatible rule for mix"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :cond_38
    :goto_38
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    monitor-enter v1

    .line 710
    const v2, 0x8000

    xor-int/2addr v2, v0

    .line 711
    .local v2, "oppositeRule":I
    :try_start_3f
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 716
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 717
    nop

    .end local v2    # "oppositeRule":I
    monitor-exit v1

    .line 718
    return-object p0

    .line 713
    .restart local v2    # "oppositeRule":I
    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "AudioMixingRule cannot contain RULE_MATCH_* and RULE_EXCLUDE_* for the same dimension."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rule":I
    .end local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local p1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    throw v3

    .line 717
    .end local v2    # "oppositeRule":I
    .restart local v0    # "rule":I
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .restart local p1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_3f .. :try_end_62} :catchall_60

    throw v2
.end method

.method private greylist-max-o checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 6
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 648
    if-eqz p2, :cond_5d

    .line 651
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidRule(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 654
    const v0, -0x8001

    and-int/2addr v0, p1

    .line 655
    .local v0, "match_rule":I
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisAudioAttributeRule(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 656
    instance-of v1, p2, Landroid/media/AudioAttributes;

    if-eqz v1, :cond_23

    .line 659
    new-instance v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    move-object v2, p2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-direct {v1, v2, p1}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    invoke-direct {p0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    .line 657
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid AudioAttributes argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_2b
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3c

    .line 666
    new-instance v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v1, v2, p1}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Ljava/lang/Integer;I)V

    invoke-direct {p0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    .line 664
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Integer argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    .end local v0    # "match_rule":I
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null argument for mixing rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$addRuleInternal$0(ILandroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Z
    .registers 3
    .param p0, "oppositeRule"    # I
    .param p1, "otherCriterion"    # Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 712
    iget v0, p1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public whitelist addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 6
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 525
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 528
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 526
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 6
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 475
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidAttributesSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 478
    invoke-direct {p0, p2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 476
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist allowPrivilegedPlaybackCapture(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 2
    .param p1, "allow"    # Z

    .line 577
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    .line 578
    return-object p0
.end method

.method public whitelist build()Landroid/media/audiopolicy/AudioMixingRule;
    .registers 8

    .line 728
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 731
    new-instance v1, Landroid/media/audiopolicy/AudioMixingRule;

    .line 732
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    .line 733
    const/4 v0, 0x0

    goto :goto_13

    :cond_11
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    :goto_13
    move v2, v0

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    iget-boolean v4, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    iget-boolean v5, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/Collection;ZZLandroid/media/audiopolicy/AudioMixingRule-IA;)V

    .line 731
    return-object v1

    .line 729
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build AudioMixingRule with no rules."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist excludeMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 6
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 556
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 559
    const v0, 0x8000

    or-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 557
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist excludeRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 6
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 503
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidAttributesSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 506
    const v0, 0x8000

    or-int/2addr v0, p2

    invoke-direct {p0, v0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 504
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 5
    .param p1, "mixRole"    # I

    .line 623
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 624
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument for mix role"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_e
    :goto_e
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 628
    if-nez p1, :cond_25

    .line 629
    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_2a

    :cond_25
    new-instance v2, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda2;-><init>()V

    .line 628
    :goto_2a
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 633
    if-ne p1, v0, :cond_33

    .line 634
    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    .line 635
    return-object p0

    .line 630
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target mix role is not compatible with mix rules."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist voiceCommunicationCaptureAllowed(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .registers 2
    .param p1, "allowed"    # Z

    .line 594
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    .line 595
    return-object p0
.end method
