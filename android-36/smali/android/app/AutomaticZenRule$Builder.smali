.class public final Landroid/app/AutomaticZenRule$Builder;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AutomaticZenRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowManualInvocation:Z

.field private blacklist mConditionId:Landroid/net/Uri;

.field private blacklist mConfigurationActivity:Landroid/content/ComponentName;

.field private blacklist mCreationTime:J

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field private blacklist mEnabled:Z

.field private blacklist mIconResId:I

.field private blacklist mInterruptionFilter:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mOwner:Landroid/content/ComponentName;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mPolicy:Landroid/service/notification/ZenPolicy;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(Landroid/app/AutomaticZenRule;)V
    .registers 4
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 654
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 655
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 656
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 664
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    .line 666
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    .line 667
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 668
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 669
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 670
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 671
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 672
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 673
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    .line 674
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    .line 675
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    .line 676
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getCreationTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    .line 677
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 654
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 655
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 656
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 681
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    .line 682
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    .line 683
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/AutomaticZenRule;
    .registers 9

    .line 833
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    iget-object v5, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    iget v6, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    iget-boolean v7, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 835
    .local v0, "rule":Landroid/app/AutomaticZenRule;
    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmDeviceEffects(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenDeviceEffects;)V

    .line 836
    iget-wide v1, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    invoke-static {v0, v1, v2}, Landroid/app/AutomaticZenRule;->-$$Nest$fputcreationTime(Landroid/app/AutomaticZenRule;J)V

    .line 837
    iget v1, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmType(Landroid/app/AutomaticZenRule;I)V

    .line 838
    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmTriggerDescription(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 839
    iget v1, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmIconResId(Landroid/app/AutomaticZenRule;I)V

    .line 840
    iget-boolean v1, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmAllowManualInvocation(Landroid/app/AutomaticZenRule;Z)V

    .line 841
    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setPackageName(Ljava/lang/String;)V

    .line 843
    return-object v0
.end method

.method public whitelist setConditionId(Landroid/net/Uri;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 713
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    .line 714
    return-object p0
.end method

.method public whitelist setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "configurationActivity"    # Landroid/content/ComponentName;

    .line 748
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 749
    return-object p0
.end method

.method public blacklist setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;
    .registers 3
    .param p1, "creationTime"    # J

    .line 819
    iput-wide p1, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    .line 820
    return-object p0
.end method

.method public whitelist setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "deviceEffects"    # Landroid/service/notification/ZenDeviceEffects;

    .line 773
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 774
    return-object p0
.end method

.method public whitelist setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 730
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 731
    return-object p0
.end method

.method public whitelist setIconResId(I)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "iconResId"    # I

    .line 801
    iput p1, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    .line 802
    return-object p0
.end method

.method public whitelist setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "interruptionFilter"    # I

    .line 722
    iput p1, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 723
    return-object p0
.end method

.method public whitelist setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "allowManualInvocation"    # Z

    .line 810
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    .line 811
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 689
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    .line 690
    return-object p0
.end method

.method public whitelist setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "owner"    # Landroid/content/ComponentName;

    .line 705
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    .line 706
    return-object p0
.end method

.method public blacklist setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 828
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    .line 829
    return-object p0
.end method

.method public whitelist setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 793
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    .line 794
    return-object p0
.end method

.method public whitelist setType(I)Landroid/app/AutomaticZenRule$Builder;
    .registers 3
    .param p1, "type"    # I

    .line 781
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->-$$Nest$smcheckValidType(I)I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 782
    return-object p0
.end method

.method public whitelist setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2
    .param p1, "policy"    # Landroid/service/notification/ZenPolicy;

    .line 759
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 760
    return-object p0
.end method
