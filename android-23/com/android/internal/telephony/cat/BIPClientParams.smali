.class Lcom/android/internal/telephony/cat/BIPClientParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mHasAlphaId:Z

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "has_alpha_id"    # Z

    #@0
    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@3
    .line 212
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@5
    .line 213
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    #@7
    .line 210
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 218
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@8
    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@a
    .line 220
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 222
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method
