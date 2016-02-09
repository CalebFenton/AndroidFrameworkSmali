.class abstract Landroid/speech/tts/AbstractSynthesisCallback;
.super Ljava/lang/Object;
.source "AbstractSynthesisCallback.java"

# interfaces
.implements Landroid/speech/tts/SynthesisCallback;


# instance fields
.field protected final mClientIsUsingV2:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "clientIsUsingV2"    # Z

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-boolean p1, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    #@5
    .line 37
    return-void
.end method


# virtual methods
.method errorCodeOnStop()I
    .locals 1

    #@0
    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/speech/tts/AbstractSynthesisCallback;->mClientIsUsingV2:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, -0x2

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, -0x1

    #@7
    goto :goto_0
.end method

.method abstract stop()V
.end method
