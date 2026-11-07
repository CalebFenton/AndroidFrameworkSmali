.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyFocusListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .registers 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 1136
    return-void
.end method

.method public whitelist onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .registers 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 1117
    return-void
.end method

.method public whitelist onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .registers 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z

    .line 1118
    return-void
.end method

.method public whitelist onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .registers 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 1128
    return-void
.end method
