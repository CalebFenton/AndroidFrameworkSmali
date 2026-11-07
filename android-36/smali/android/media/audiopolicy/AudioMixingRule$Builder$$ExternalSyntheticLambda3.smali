.class public final synthetic Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    invoke-static {v0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->lambda$addRuleInternal$0(ILandroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Z

    move-result p1

    return p1
.end method
