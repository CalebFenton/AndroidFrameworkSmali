.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;,
        Landroid/media/audiopolicy/AudioMixingRule$Builder;
    }
.end annotation


# static fields
.field public static final RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET:I = 0x8002

.field public static final RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x8001

.field public static final RULE_EXCLUDE_UID:I = 0x8004

.field private static final RULE_EXCLUSION_MASK:I = 0x8000

.field public static final RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET:I = 0x2

.field public static final RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1

.field public static final RULE_MATCH_UID:I = 0x4


# instance fields
.field private final mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetMixType:I


# direct methods
.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "match_rule"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isAudioAttributeRule(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidAttributesSystemApiRule(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidRule(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "mixType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p2, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    #@5
    .line 47
    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    #@7
    .line 45
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule;)V
    .locals 0
    .param p1, "mixType"    # I
    .param p2, "criteria"    # Ljava/util/ArrayList;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;)V

    #@3
    return-void
.end method

.method private static isAudioAttributeRule(I)Z
    .locals 1
    .param p0, "match_rule"    # I

    #@0
    .prologue
    .line 194
    packed-switch p0, :pswitch_data_0

    #@3
    .line 199
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 197
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 194
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isPlayerRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    #@0
    .prologue
    .line 183
    const v1, -0x8001

    #@3
    and-int v0, p0, v1

    #@5
    .line 184
    .local v0, "match_rule":I
    packed-switch v0, :pswitch_data_0

    #@8
    .line 189
    :pswitch_0
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 187
    :pswitch_1
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isValidAttributesSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    .line 161
    packed-switch p0, :pswitch_data_0

    #@3
    .line 166
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 164
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 161
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    #@0
    .prologue
    .line 171
    const v1, -0x8001

    #@3
    and-int v0, p0, v1

    #@5
    .line 172
    .local v0, "match_rule":I
    packed-switch v0, :pswitch_data_0

    #@8
    .line 178
    :pswitch_0
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 176
    :pswitch_1
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isValidSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    #@3
    .line 156
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 154
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 150
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getCriteria()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method getTargetMixType()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 145
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    return v0
.end method
