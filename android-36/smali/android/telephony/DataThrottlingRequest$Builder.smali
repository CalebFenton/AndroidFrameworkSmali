.class public final Landroid/telephony/DataThrottlingRequest$Builder;
.super Ljava/lang/Object;
.source "DataThrottlingRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DataThrottlingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCompletionDurationMillis:J

.field private blacklist mDataThrottlingAction:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/DataThrottlingRequest;
    .registers 6

    .line 239
    iget-wide v0, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mCompletionDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    .line 244
    iget v0, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mDataThrottlingAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    iget-wide v0, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mCompletionDurationMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    goto :goto_1c

    .line 246
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "completionDurationMillis must be 0 for DataThrottlingRequest.DATA_THROTTLING_ACTION_HOLD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1c
    :goto_1c
    new-instance v0, Landroid/telephony/DataThrottlingRequest;

    iget v1, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mDataThrottlingAction:I

    iget-wide v2, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mCompletionDurationMillis:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/DataThrottlingRequest;-><init>(IJLandroid/telephony/DataThrottlingRequest-IA;)V

    return-object v0

    .line 240
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "completionDurationMillis cannot be a negative number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCompletionDurationMillis(J)Landroid/telephony/DataThrottlingRequest$Builder;
    .registers 3
    .param p1, "completionDurationMillis"    # J

    .line 229
    iput-wide p1, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mCompletionDurationMillis:J

    .line 230
    return-object p0
.end method

.method public whitelist setDataThrottlingAction(I)Landroid/telephony/DataThrottlingRequest$Builder;
    .registers 2
    .param p1, "dataThrottlingAction"    # I

    .line 214
    iput p1, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mDataThrottlingAction:I

    .line 215
    return-object p0
.end method
