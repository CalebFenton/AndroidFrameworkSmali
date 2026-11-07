.class Lcom/android/internal/telephony/cat/PlayToneParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

.field blacklist mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor greylist-max-r <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V
    .registers 6

    .line 119
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 120
    iput-object p2, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 121
    new-instance p1, Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-direct {p1, p4, p3, p5}, Lcom/android/internal/telephony/cat/ToneSettings;-><init>(Lcom/android/internal/telephony/cat/Duration;Lcom/android/internal/telephony/cat/Tone;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-void
.end method


# virtual methods
.method blacklist setIcon(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz p0, :cond_a

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
