.class public final synthetic Landroid/media/audiopolicy/AudioPolicyConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/audiopolicy/AudioMix;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioMix;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicyConfig$$ExternalSyntheticLambda1;->f$0:Landroid/media/audiopolicy/AudioMix;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicyConfig$$ExternalSyntheticLambda1;->f$0:Landroid/media/audiopolicy/AudioMix;

    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMix;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
