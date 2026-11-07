.class public final Landroid/media/AudioMixerAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioMixerAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMixerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFormat:Landroid/media/AudioFormat;

.field private blacklist mMixerBehavior:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/AudioFormat;)V
    .registers 3
    .param p1, "format"    # Landroid/media/AudioFormat;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    .line 97
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Landroid/media/AudioMixerAttributes$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioMixerAttributes;
    .registers 4

    .line 107
    new-instance v0, Landroid/media/AudioMixerAttributes;

    iget-object v1, p0, Landroid/media/AudioMixerAttributes$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v2, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixerAttributes;-><init>(Landroid/media/AudioFormat;I)V

    .line 108
    .local v0, "ama":Landroid/media/AudioMixerAttributes;
    return-object v0
.end method

.method public whitelist setMixerBehavior(I)Landroid/media/AudioMixerAttributes$Builder;
    .registers 5
    .param p1, "mixerBehavior"    # I

    .line 118
    packed-switch p1, :pswitch_data_20

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mixer behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioMixerAttributes$Builder;->mMixerBehavior:I

    .line 122
    nop

    .line 126
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
