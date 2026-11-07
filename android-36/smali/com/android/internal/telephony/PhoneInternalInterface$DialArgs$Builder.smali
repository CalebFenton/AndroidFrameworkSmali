.class public Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
.super Ljava/lang/Object;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected blacklist mClirMode:I

.field protected blacklist mEccCategory:I

.field protected blacklist mIntentExtras:Landroid/os/Bundle;

.field protected blacklist mIsEmergency:Z

.field protected blacklist mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field protected blacklist mVideoState:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mClirMode:I

    .line 83
    iput v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mVideoState:I

    .line 85
    iput v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mEccCategory:I

    return-void
.end method

.method public static blacklist from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .registers 3

    .line 88
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setEccCategory(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .registers 2

    .line 128
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;-><init>(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;)V

    return-object v0
.end method

.method public blacklist setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 103
    iput p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mClirMode:I

    return-object p0
.end method

.method public blacklist setEccCategory(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 123
    iput p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mEccCategory:I

    return-object p0
.end method

.method public blacklist setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mIntentExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 108
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mIsEmergency:Z

    return-object p0
.end method

.method public blacklist setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/UUSInfo;",
            ")TT;"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object p0
.end method

.method public blacklist setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 113
    iput p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mVideoState:I

    return-object p0
.end method
