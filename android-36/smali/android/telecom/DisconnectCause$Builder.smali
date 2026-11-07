.class public final Landroid/telecom/DisconnectCause$Builder;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/DisconnectCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisconnectCode:I

.field private blacklist mDisconnectDescription:Ljava/lang/CharSequence;

.field private blacklist mDisconnectLabel:Ljava/lang/CharSequence;

.field private blacklist mDisconnectReason:Ljava/lang/String;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mTelephonyDisconnectCause:I

.field private blacklist mTelephonyPreciseDisconnectCause:I

.field private blacklist mToneToPlay:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/DisconnectCause$Builder;->mToneToPlay:I

    .line 341
    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectCode:I

    .line 342
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telecom/DisconnectCause;
    .registers 10

    .line 432
    new-instance v0, Landroid/telecom/DisconnectCause;

    iget v1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectCode:I

    iget-object v2, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectReason:Ljava/lang/String;

    iget v5, p0, Landroid/telecom/DisconnectCause$Builder;->mToneToPlay:I

    iget v6, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyDisconnectCause:I

    iget v7, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyPreciseDisconnectCause:I

    iget-object v8, p0, Landroid/telecom/DisconnectCause$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct/range {v0 .. v8}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/telephony/ims/ImsReasonInfo;)V

    return-object v0
.end method

.method public blacklist setDescription(Ljava/lang/CharSequence;)Landroid/telecom/DisconnectCause$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 363
    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectDescription:Ljava/lang/CharSequence;

    .line 364
    return-object p0
.end method

.method public blacklist setImsReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telecom/DisconnectCause$Builder;
    .registers 2
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 423
    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 424
    return-object p0
.end method

.method public blacklist setLabel(Ljava/lang/CharSequence;)Landroid/telecom/DisconnectCause$Builder;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 351
    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectLabel:Ljava/lang/CharSequence;

    .line 352
    return-object p0
.end method

.method public blacklist setReason(Ljava/lang/String;)Landroid/telecom/DisconnectCause$Builder;
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 374
    iput-object p1, p0, Landroid/telecom/DisconnectCause$Builder;->mDisconnectReason:Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public blacklist setTelephonyDisconnectCause(I)Landroid/telecom/DisconnectCause$Builder;
    .registers 2
    .param p1, "telephonyDisconnectCause"    # I

    .line 396
    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyDisconnectCause:I

    .line 397
    return-object p0
.end method

.method public blacklist setTelephonyPreciseDisconnectCause(I)Landroid/telecom/DisconnectCause$Builder;
    .registers 2
    .param p1, "telephonyPreciseDisconnectCause"    # I

    .line 410
    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mTelephonyPreciseDisconnectCause:I

    .line 411
    return-object p0
.end method

.method public blacklist setTone(I)Landroid/telecom/DisconnectCause$Builder;
    .registers 2
    .param p1, "toneToPlay"    # I

    .line 384
    iput p1, p0, Landroid/telecom/DisconnectCause$Builder;->mToneToPlay:I

    .line 385
    return-object p0
.end method
