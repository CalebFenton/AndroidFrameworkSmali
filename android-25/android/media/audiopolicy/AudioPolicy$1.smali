.class Landroid/media/audiopolicy/AudioPolicy$1;
.super Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method constructor <init>(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiopolicy/AudioPolicy;

    #@0
    .prologue
    .line 424
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@2
    invoke-direct {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .locals 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    #@6
    .line 426
    return-void
.end method

.method public notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z

    #@0
    .prologue
    .line 435
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@2
    if-eqz p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const/4 v2, 0x2

    #@6
    invoke-static {v1, v2, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    #@9
    .line 434
    return-void

    #@a
    .line 435
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public notifyMixStateUpdate(Ljava/lang/String;I)V
    .locals 5
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 443
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@2
    invoke-static {v2}, Landroid/media/audiopolicy/AudioPolicy;->-get0(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "mix$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/media/audiopolicy/AudioMix;

    #@1a
    .line 444
    .local v0, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 445
    iput p2, v0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    #@26
    .line 446
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    #@28
    const/4 v3, 0x3

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-static {v2, v3, v0, v4}, Landroid/media/audiopolicy/AudioPolicy;->-wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    #@2d
    goto :goto_0

    #@2e
    .line 442
    .end local v0    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_1
    return-void
.end method
