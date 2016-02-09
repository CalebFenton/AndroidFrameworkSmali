.class final Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributeMatchCriterion"
.end annotation


# instance fields
.field mAttr:Landroid/media/AudioAttributes;

.field mRule:I


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 0
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@5
    .line 81
    iput p2, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    #@7
    .line 79
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 86
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

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

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 91
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    #@7
    const/4 v1, 0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    #@c
    const v1, 0x8001

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 92
    :cond_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@13
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    #@16
    move-result v0

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 89
    :goto_0
    return-void

    #@1b
    .line 95
    :cond_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@1d
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@20
    move-result v0

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    goto :goto_0
.end method
