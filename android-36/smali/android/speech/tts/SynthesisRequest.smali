.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SynthesisRequest.java"


# instance fields
.field private greylist-max-o mCallerUid:I

.field private greylist-max-o mCountry:Ljava/lang/String;

.field private greylist-max-o mLanguage:Ljava/lang/String;

.field private final greylist-max-o mParams:Landroid/os/Bundle;

.field private greylist-max-o mPitch:I

.field private greylist-max-o mSpeechRate:I

.field private final greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mVariant:Ljava/lang/String;

.field private greylist-max-o mVoiceName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist getCallerUid()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return v0
.end method

.method public whitelist getCharSequenceText()Ljava/lang/CharSequence;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCountry()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParams()Landroid/os/Bundle;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPitch()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return v0
.end method

.method public whitelist getSpeechRate()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVariant()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVoiceName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o setCallerUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 168
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    .line 169
    return-void
.end method

.method greylist-max-o setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    .line 141
    return-void
.end method

.method greylist-max-o setPitch(I)V
    .registers 2
    .param p1, "pitch"    # I

    .line 161
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    .line 162
    return-void
.end method

.method greylist-max-o setSpeechRate(I)V
    .registers 2
    .param p1, "speechRate"    # I

    .line 154
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    .line 155
    return-void
.end method

.method greylist-max-o setVoiceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "voiceName"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    .line 148
    return-void
.end method
