.class Landroid/media/audiopolicy/AudioMixingRule$1;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioMixingRule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 764
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    .line 766
    .local v0, "ruleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->allowPrivilegedPlaybackCapture(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->voiceCommunicationCaptureAllowed(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 773
    .local v1, "nbRules":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1f
    if-ge v2, v1, :cond_2f

    .line 775
    sget-object v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 776
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 775
    invoke-static {v0, v3}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->-$$Nest$maddRuleInternal(Landroid/media/audiopolicy/AudioMixingRule$Builder;Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 773
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 778
    .end local v2    # "j":I
    :cond_2f
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 760
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioMixingRule;
    .registers 3
    .param p1, "size"    # I

    .line 783
    new-array v0, p1, [Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 760
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule$1;->newArray(I)[Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object p1

    return-object p1
.end method
