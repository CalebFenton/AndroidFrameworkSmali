.class public Landroid/media/audiopolicy/AudioPolicyConfig;
.super Ljava/lang/Object;
.source "AudioPolicyConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioPolicyConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/audiopolicy/AudioPolicyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AudioPolicyConfig"


# instance fields
.field protected mDuckingPolicy:I

.field protected mMixes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 127
    new-instance v0, Landroid/media/audiopolicy/AudioPolicyConfig$1;

    #@2
    invoke-direct {v0}, Landroid/media/audiopolicy/AudioPolicyConfig$1;-><init>()V

    #@5
    .line 126
    sput-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V
    .locals 1
    .param p1, "conf"    # Landroid/media/audiopolicy/AudioPolicyConfig;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    #@6
    .line 39
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@9
    .line 42
    iget-object v0, p1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@b
    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@d
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v11, 0x0

    #@4
    iput v11, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    #@6
    .line 39
    const/4 v11, 0x0

    #@7
    iput-object v11, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@9
    .line 98
    new-instance v11, Ljava/util/ArrayList;

    #@b
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v11, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@10
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v6

    #@14
    .line 100
    .local v6, "nbMixes":I
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    #@17
    .line 101
    new-instance v5, Landroid/media/audiopolicy/AudioMix$Builder;

    #@19
    invoke-direct {v5}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>()V

    #@1c
    .line 103
    .local v5, "mixBuilder":Landroid/media/audiopolicy/AudioMix$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v8

    #@20
    .line 104
    .local v8, "routeFlags":I
    invoke-virtual {v5, v8}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    #@23
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v11

    #@27
    invoke-virtual {v5, v11}, Landroid/media/audiopolicy/AudioMix$Builder;->setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    #@2a
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v10

    #@2e
    .line 109
    .local v10, "sampleRate":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    .line 110
    .local v1, "encoding":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    .line 111
    .local v0, "channelMask":I
    new-instance v11, Landroid/media/AudioFormat$Builder;

    #@38
    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@3b
    invoke-virtual {v11, v10}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@3e
    move-result-object v11

    #@3f
    invoke-virtual {v11, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@42
    move-result-object v11

    #@43
    invoke-virtual {v11, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@46
    move-result-object v11

    #@47
    invoke-virtual {v11}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@4a
    move-result-object v2

    #@4b
    .line 113
    .local v2, "format":Landroid/media/AudioFormat;
    invoke-virtual {v5, v2}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    #@4e
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v7

    #@52
    .line 116
    .local v7, "nbRules":I
    new-instance v9, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@54
    invoke-direct {v9}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    #@57
    .line 117
    .local v9, "ruleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    const/4 v4, 0x0

    #@58
    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_0

    #@5a
    .line 119
    invoke-virtual {v9, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    #@5d
    .line 117
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 121
    :cond_0
    invoke-virtual {v9}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    #@63
    move-result-object v11

    #@64
    invoke-virtual {v5, v11}, Landroid/media/audiopolicy/AudioMix$Builder;->setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;

    #@67
    .line 122
    iget-object v11, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    #@6c
    move-result-object v12

    #@6d
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 100
    add-int/lit8 v3, v3, 0x1

    #@72
    goto :goto_0

    #@73
    .line 97
    .end local v0    # "channelMask":I
    .end local v1    # "encoding":I
    .end local v2    # "format":Landroid/media/AudioFormat;
    .end local v4    # "j":I
    .end local v5    # "mixBuilder":Landroid/media/audiopolicy/AudioMix$Builder;
    .end local v7    # "nbRules":I
    .end local v8    # "routeFlags":I
    .end local v9    # "ruleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local v10    # "sampleRate":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/audiopolicy/AudioPolicyConfig;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p1, "mixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    #@6
    .line 39
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@9
    .line 46
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@b
    .line 45
    return-void
.end method

.method private static mixTypeId(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 201
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "p"

    #@5
    return-object v0

    #@6
    .line 202
    :cond_0
    const/4 v0, 0x1

    #@7
    if-ne p0, v0, :cond_1

    #@9
    const-string/jumbo v0, "r"

    #@c
    return-object v0

    #@d
    .line 203
    :cond_1
    const-string/jumbo v0, "i"

    #@10
    return-object v0
.end method


# virtual methods
.method public addMix(Landroid/media/audiopolicy/AudioMix;)V
    .locals 2
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    if-nez p1, :cond_0

    #@2
    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioMix argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 59
    :cond_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 55
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMixes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method protected getRegistration()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 68
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected setRegistration(Ljava/lang/String;)V
    .locals 9
    .param p1, "regId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@2
    if-eqz v6, :cond_2

    #@4
    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v0

    #@a
    .line 183
    :goto_0
    if-eqz p1, :cond_3

    #@c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v5

    #@10
    .line 184
    :goto_1
    if-nez v0, :cond_0

    #@12
    if-eqz v5, :cond_4

    #@14
    .line 188
    :cond_0
    if-nez p1, :cond_1

    #@16
    const-string/jumbo p1, ""

    #@19
    .end local p1    # "regId":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@1b
    .line 189
    const/4 v3, 0x0

    #@1c
    .line 190
    .local v3, "mixIndex":I
    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@1e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "mix$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_6

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    #@2e
    .line 191
    .local v1, "mix":Landroid/media/audiopolicy/AudioMix;
    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@30
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@33
    move-result v6

    #@34
    if-nez v6, :cond_5

    #@36
    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    iget-object v7, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    const-string/jumbo v7, "mix"

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    #@4b
    move-result v7

    #@4c
    invoke-static {v7}, Landroid/media/audiopolicy/AudioPolicyConfig;->mixTypeId(I)Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    const-string/jumbo v7, ":"

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    .line 193
    add-int/lit8 v4, v3, 0x1

    #@5d
    .line 192
    .end local v3    # "mixIndex":I
    .local v4, "mixIndex":I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v1, v6}, Landroid/media/audiopolicy/AudioMix;->setRegistration(Ljava/lang/String;)V

    #@68
    move v3, v4

    #@69
    .end local v4    # "mixIndex":I
    .restart local v3    # "mixIndex":I
    goto :goto_2

    #@6a
    .line 182
    .end local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v2    # "mix$iterator":Ljava/util/Iterator;
    .end local v3    # "mixIndex":I
    .restart local p1    # "regId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    #@6b
    .local v0, "currentRegNull":Z
    goto :goto_0

    #@6c
    .line 183
    .end local v0    # "currentRegNull":Z
    :cond_3
    const/4 v5, 0x1

    #@6d
    .local v5, "newRegNull":Z
    goto :goto_1

    #@6e
    .line 184
    .end local v5    # "newRegNull":Z
    :cond_4
    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@70
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v6

    #@74
    if-nez v6, :cond_0

    #@76
    .line 185
    const-string/jumbo v6, "AudioPolicyConfig"

    #@79
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v8, "Invalid registration transition from "

    #@81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    iget-object v8, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    const-string/jumbo v8, " to "

    #@8e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    .line 186
    return-void

    #@9e
    .line 195
    .end local p1    # "regId":Ljava/lang/String;
    .restart local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local v2    # "mix$iterator":Ljava/util/Iterator;
    .restart local v3    # "mixIndex":I
    :cond_5
    const-string/jumbo v6, ""

    #@a1
    invoke-virtual {v1, v6}, Landroid/media/audiopolicy/AudioMix;->setRegistration(Ljava/lang/String;)V

    #@a4
    goto/16 :goto_2

    #@a6
    .line 181
    .end local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_6
    return-void
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 142
    new-instance v5, Ljava/lang/String;

    #@2
    const-string/jumbo v6, "android.media.audiopolicy.AudioPolicyConfig:\n"

    #@5
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@8
    .line 143
    .local v5, "textDump":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v6

    #@11
    iget-object v7, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v7

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    const-string/jumbo v7, " AudioMix: "

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    iget-object v7, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mRegistrationId:Ljava/lang/String;

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    const-string/jumbo v7, "\n"

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 144
    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@35
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v4

    #@39
    .local v4, "mix$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_1

    #@3f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    #@45
    .line 146
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    const-string/jumbo v7, "* route flags=0x"

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    #@58
    move-result v7

    #@59
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    const-string/jumbo v7, "\n"

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    const-string/jumbo v7, "  rate="

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7}, Landroid/media/AudioFormat;->getSampleRate()I

    #@83
    move-result v7

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    const-string/jumbo v7, "Hz\n"

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    const-string/jumbo v7, "  encoding="

    #@9f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@a6
    move-result-object v7

    #@a7
    invoke-virtual {v7}, Landroid/media/AudioFormat;->getEncoding()I

    #@aa
    move-result v7

    #@ab
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    const-string/jumbo v7, "\n"

    #@b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v6

    #@b6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    const-string/jumbo v7, "  channels=0x"

    #@c6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@da
    move-result-object v7

    #@db
    invoke-virtual {v7}, Landroid/media/AudioFormat;->getChannelMask()I

    #@de
    move-result v7

    #@df
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e2
    move-result-object v7

    #@e3
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@e6
    move-result-object v7

    #@e7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v6

    #@eb
    const-string/jumbo v7, "\n"

    #@ee
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v6

    #@f2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v5

    #@f6
    .line 153
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    #@f9
    move-result-object v6

    #@fa
    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioMixingRule;->getCriteria()Ljava/util/ArrayList;

    #@fd
    move-result-object v0

    #@fe
    .line 154
    .local v0, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@101
    move-result-object v2

    #@102
    .local v2, "criterion$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@105
    move-result v6

    #@106
    if-eqz v6, :cond_0

    #@108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10b
    move-result-object v1

    #@10c
    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    #@10e
    .line 155
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    iget v6, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mRule:I

    #@110
    sparse-switch v6, :sswitch_data_0

    #@113
    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v6

    #@11c
    const-string/jumbo v7, "invalid rule!"

    #@11f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v6

    #@123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v5

    #@127
    .line 175
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v6

    #@130
    const-string/jumbo v7, "\n"

    #@133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v6

    #@137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v5

    #@13b
    goto :goto_0

    #@13c
    .line 157
    :sswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v6

    #@145
    const-string/jumbo v7, "  exclude usage "

    #@148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v6

    #@14c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v5

    #@150
    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v6

    #@159
    iget-object v7, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@15b
    invoke-virtual {v7}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    #@15e
    move-result-object v7

    #@15f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v6

    #@163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v5

    #@167
    goto :goto_1

    #@168
    .line 161
    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v6

    #@171
    const-string/jumbo v7, "  match usage "

    #@174
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v6

    #@178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v5

    #@17c
    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v6

    #@185
    iget-object v7, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@187
    invoke-virtual {v7}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    #@18a
    move-result-object v7

    #@18b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v6

    #@18f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v5

    #@193
    goto :goto_1

    #@194
    .line 165
    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v6

    #@19d
    const-string/jumbo v7, "  exclude capture preset "

    #@1a0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v6

    #@1a4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v5

    #@1a8
    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v6

    #@1b1
    iget-object v7, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@1b3
    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@1b6
    move-result v7

    #@1b7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v6

    #@1bb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v5

    #@1bf
    goto/16 :goto_1

    #@1c1
    .line 169
    :sswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v6

    #@1ca
    const-string/jumbo v7, "  match capture preset "

    #@1cd
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v6

    #@1d1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v5

    #@1d5
    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1da
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v6

    #@1de
    iget-object v7, v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    #@1e0
    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@1e3
    move-result v7

    #@1e4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v6

    #@1e8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v5

    #@1ec
    goto/16 :goto_1

    #@1ee
    .line 178
    .end local v0    # "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    .end local v2    # "criterion$iterator":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_1
    return-object v5

    #@1ef
    .line 155
    nop

    #@1f0
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x8001 -> :sswitch_0
        0x8002 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 78
    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v5

    #@6
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 79
    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v4

    #@f
    .local v4, "mix$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    #@1b
    .line 81
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    #@1e
    move-result v5

    #@1f
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 83
    iget v5, v3, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    #@24
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 85
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getSampleRate()I

    #@2e
    move-result v5

    #@2f
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 86
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getEncoding()I

    #@39
    move-result v5

    #@3a
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 87
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getChannelMask()I

    #@44
    move-result v5

    #@45
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 89
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMixingRule;->getCriteria()Ljava/util/ArrayList;

    #@4f
    move-result-object v0

    #@50
    .line 90
    .local v0, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v5

    #@54
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v2

    #@5b
    .local v2, "criterion$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_0

    #@61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v1

    #@65
    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;

    #@67
    .line 92
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;->writeToParcel(Landroid/os/Parcel;)V

    #@6a
    goto :goto_0

    #@6b
    .line 77
    .end local v0    # "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;>;"
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AttributeMatchCriterion;
    .end local v2    # "criterion$iterator":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_1
    return-void
.end method
