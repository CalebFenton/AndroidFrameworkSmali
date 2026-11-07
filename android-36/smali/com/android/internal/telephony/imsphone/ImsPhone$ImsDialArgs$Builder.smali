.class public Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
.super Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder<",
        "Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mIsWpsCall:Z

.field private blacklist mRetryCallFailCause:I

.field private blacklist mRetryCallFailNetworkType:I

.field private blacklist mRttTextStream:Landroid/telecom/Connection$RttTextStream;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsWpsCall(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mIsWpsCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryCallFailCause(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRetryCallFailCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryCallFailNetworkType(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRetryCallFailNetworkType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRttTextStream(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;)Landroid/telecom/Connection$RttTextStream;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRetryCallFailCause:I

    .line 195
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRetryCallFailNetworkType:I

    .line 196
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mIsWpsCall:Z

    return-void
.end method

.method public static blacklist from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .registers 4

    .line 199
    instance-of v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    if-eqz v0, :cond_55

    .line 200
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 201
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setEccCategory(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 205
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 206
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRttTextStream(Landroid/telecom/Connection$RttTextStream;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 207
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailCause:I

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRetryCallFailCause(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p0

    iget v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailNetworkType:I

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setRetryCallFailNetworkType(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p0

    iget-boolean v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->isWpsCall:Z

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIsWpsCall(Z)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p0

    return-object p0

    .line 213
    :cond_55
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 218
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic blacklist build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .registers 1

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p0

    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    .registers 3

    .line 243
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;Lcom/android/internal/telephony/imsphone/ImsPhone-IA;)V

    return-object v0
.end method

.method public blacklist setIsWpsCall(Z)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .registers 2

    .line 238
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mIsWpsCall:Z

    return-object p0
.end method

.method public blacklist setRetryCallFailCause(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .registers 2

    .line 228
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRetryCallFailCause:I

    return-object p0
.end method

.method public blacklist setRetryCallFailNetworkType(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .registers 2

    .line 233
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRetryCallFailNetworkType:I

    return-object p0
.end method

.method public blacklist setRttTextStream(Landroid/telecom/Connection$RttTextStream;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-object p0
.end method
