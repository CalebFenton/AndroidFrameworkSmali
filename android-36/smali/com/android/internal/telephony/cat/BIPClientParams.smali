.class Lcom/android/internal/telephony/cat/BIPClientParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mHasAlphaId:Z

.field blacklist mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V
    .registers 4

    .line 232
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 233
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 234
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    return-void
.end method


# virtual methods
.method blacklist setIcon(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz p0, :cond_a

    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
