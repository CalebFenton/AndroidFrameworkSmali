.class public final synthetic Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->lambda$updateMixingRules$3(I)[Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object p1

    return-object p1
.end method
