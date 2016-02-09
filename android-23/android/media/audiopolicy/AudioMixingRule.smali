.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;,
        Landroid/media/audiopolicy/AudioMixingRule$Builder;
    }
.end annotation


# static fields
.field public static final RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET:I = 0x8002

.field public static final RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x8001

.field private static final RULE_EXCLUSION_MASK:I = 0x8000

.field public static final RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET:I = 0x2

.field public static final RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1


# instance fields
.field private final mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetMixType:I


# direct methods
.method static synthetic -wrap0(I)Z
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

.method static synthetic -wrap1(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidIntRule(I)Z

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
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p2, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    #@5
    .line 46
    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    #@7
    .line 44
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

.method private static isPlayerRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 133
    if-eq p0, v0, :cond_0

    #@3
    .line 134
    const v1, 0x8001

    #@6
    if-ne p0, v1, :cond_1

    #@8
    .line 133
    :cond_0
    :goto_0
    return v0

    #@9
    .line 134
    :cond_1
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private static isValidIntRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    .line 121
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 128
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 126
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 121
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8001 -> :sswitch_0
        0x8002 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    #@0
    .prologue
    .line 111
    packed-switch p0, :pswitch_data_0

    #@3
    .line 116
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 114
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 111
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
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
            "Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method getTargetMixType()I
    .locals 1

    #@0
    .prologue
    .line 101
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 107
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
