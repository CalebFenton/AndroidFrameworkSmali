.class public final Landroid/telephony/CallState$Builder;
.super Ljava/lang/Object;
.source "CallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallClassification:I

.field private blacklist mCallQuality:Landroid/telephony/CallQuality;

.field private blacklist mImsCallId:Ljava/lang/String;

.field private blacklist mImsCallServiceType:I

.field private blacklist mImsCallType:I

.field private blacklist mNetworkType:I

.field private blacklist mPreciseCallState:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "preciseCallState"    # I

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CallState$Builder;->mNetworkType:I

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/CallState$Builder;->mCallQuality:Landroid/telephony/CallQuality;

    .line 306
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/CallState$Builder;->mCallClassification:I

    .line 308
    iput v0, p0, Landroid/telephony/CallState$Builder;->mImsCallServiceType:I

    .line 309
    iput v0, p0, Landroid/telephony/CallState$Builder;->mImsCallType:I

    .line 316
    iput p1, p0, Landroid/telephony/CallState$Builder;->mPreciseCallState:I

    .line 317
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/CallState;
    .registers 10

    .line 399
    new-instance v0, Landroid/telephony/CallState;

    iget v1, p0, Landroid/telephony/CallState$Builder;->mPreciseCallState:I

    iget v2, p0, Landroid/telephony/CallState$Builder;->mNetworkType:I

    iget-object v3, p0, Landroid/telephony/CallState$Builder;->mCallQuality:Landroid/telephony/CallQuality;

    iget v4, p0, Landroid/telephony/CallState$Builder;->mCallClassification:I

    iget-object v5, p0, Landroid/telephony/CallState$Builder;->mImsCallId:Ljava/lang/String;

    iget v6, p0, Landroid/telephony/CallState$Builder;->mImsCallServiceType:I

    iget v7, p0, Landroid/telephony/CallState$Builder;->mImsCallType:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CallState;-><init>(IILandroid/telephony/CallQuality;ILjava/lang/String;IILandroid/telephony/CallState-IA;)V

    return-object v0
.end method

.method public blacklist setCallClassification(I)Landroid/telephony/CallState$Builder;
    .registers 2
    .param p1, "classification"    # I

    .line 352
    iput p1, p0, Landroid/telephony/CallState$Builder;->mCallClassification:I

    .line 353
    return-object p0
.end method

.method public whitelist setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;
    .registers 2
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 339
    iput-object p1, p0, Landroid/telephony/CallState$Builder;->mCallQuality:Landroid/telephony/CallQuality;

    .line 340
    return-object p0
.end method

.method public whitelist setImsCallServiceType(I)Landroid/telephony/CallState$Builder;
    .registers 2
    .param p1, "serviceType"    # I

    .line 376
    iput p1, p0, Landroid/telephony/CallState$Builder;->mImsCallServiceType:I

    .line 377
    return-object p0
.end method

.method public whitelist setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;
    .registers 2
    .param p1, "imsCallId"    # Ljava/lang/String;

    .line 364
    iput-object p1, p0, Landroid/telephony/CallState$Builder;->mImsCallId:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public whitelist setImsCallType(I)Landroid/telephony/CallState$Builder;
    .registers 2
    .param p1, "callType"    # I

    .line 388
    iput p1, p0, Landroid/telephony/CallState$Builder;->mImsCallType:I

    .line 389
    return-object p0
.end method

.method public whitelist setNetworkType(I)Landroid/telephony/CallState$Builder;
    .registers 2
    .param p1, "networkType"    # I

    .line 327
    iput p1, p0, Landroid/telephony/CallState$Builder;->mNetworkType:I

    .line 328
    return-object p0
.end method
