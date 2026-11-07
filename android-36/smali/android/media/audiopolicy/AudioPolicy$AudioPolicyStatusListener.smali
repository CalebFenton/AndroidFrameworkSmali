.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyStatusListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMixStateUpdate(Landroid/media/audiopolicy/AudioMix;)V
    .registers 2
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;

    .line 1113
    return-void
.end method

.method public whitelist onStatusChange()V
    .registers 1

    .line 1112
    return-void
.end method
