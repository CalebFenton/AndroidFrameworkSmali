.class abstract Landroid/speech/tts/AbstractSynthesisCallback;
.super Ljava/lang/Object;
.source "AbstractSynthesisCallback.java"

# interfaces
.implements Landroid/speech/tts/SynthesisCallback;


# instance fields
.field protected final greylist-max-o mClientIsUsingV2:Z


# direct methods
.method constructor greylist-max-o <init>(Z)V
    .registers 2
    .param p1, "clientIsUsingV2"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    .line 39
    return-void
.end method


# virtual methods
.method greylist-max-o errorCodeOnStop()I
    .registers 2

    .line 57
    iget-boolean v0, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x2

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    return v0
.end method

.method abstract greylist-max-o stop()V
.end method
