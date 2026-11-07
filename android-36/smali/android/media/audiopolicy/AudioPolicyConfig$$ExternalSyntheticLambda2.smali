.class public final synthetic Landroid/media/audiopolicy/AudioPolicyConfig$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicyConfig$$ExternalSyntheticLambda2;->f$0:Landroid/media/audiopolicy/AudioMixingRule;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig$$ExternalSyntheticLambda2;->f$0:Landroid/media/audiopolicy/AudioMixingRule;

    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    invoke-static {v0, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->lambda$updateMixingRule$1(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/audiopolicy/AudioMix;)V

    return-void
.end method
