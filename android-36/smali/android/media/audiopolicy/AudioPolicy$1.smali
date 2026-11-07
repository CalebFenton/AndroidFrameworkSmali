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
.field final synthetic blacklist this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method constructor blacklist <init>(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1166
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-direct {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .registers 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 1193
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 1198
    return-void
.end method

.method public blacklist notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .registers 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 1169
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 1174
    return-void
.end method

.method public blacklist notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .registers 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z

    .line 1177
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 1182
    return-void
.end method

.method public blacklist notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .registers 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 1185
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 1190
    return-void
.end method

.method public blacklist notifyMixStateUpdate(Ljava/lang/String;I)V
    .registers 8
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 1201
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$fgetmConfig(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    .line 1202
    .local v1, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1203
    iput p2, v1, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 1204
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 1209
    .end local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_2d
    goto :goto_e

    .line 1210
    :cond_2e
    return-void
.end method

.method public blacklist notifyUnregistration()V
    .registers 3

    .line 1220
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public blacklist notifyVolumeAdjust(I)V
    .registers 5
    .param p1, "adjustment"    # I

    .line 1213
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 1217
    return-void
.end method
