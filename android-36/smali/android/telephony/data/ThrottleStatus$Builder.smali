.class public final Landroid/telephony/data/ThrottleStatus$Builder;
.super Ljava/lang/Object;
.source "ThrottleStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ThrottleStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final blacklist NO_THROTTLE_EXPIRY_TIME:J = -0x1L


# instance fields
.field private blacklist mApnType:I

.field private blacklist mRetryType:I

.field private blacklist mSlotIndex:I

.field private blacklist mThrottleExpiryTimeMillis:J

.field private blacklist mThrottleType:I

.field private blacklist mTransportType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/ThrottleStatus;
    .registers 10

    .line 382
    new-instance v0, Landroid/telephony/data/ThrottleStatus;

    iget v1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mSlotIndex:I

    iget v2, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mTransportType:I

    iget v3, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mApnType:I

    iget v4, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleType:I

    iget-wide v5, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleExpiryTimeMillis:J

    iget v7, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mRetryType:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/telephony/data/ThrottleStatus;-><init>(IIIIJILandroid/telephony/data/ThrottleStatus-IA;)V

    return-object v0
.end method

.method public whitelist setApnType(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2
    .param p1, "apnType"    # I

    .line 314
    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mApnType:I

    .line 315
    return-object p0
.end method

.method public whitelist setNoThrottle()Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 3

    .line 357
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleType:I

    .line 358
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleExpiryTimeMillis:J

    .line 359
    return-object p0
.end method

.method public whitelist setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2
    .param p1, "retryType"    # I

    .line 371
    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mRetryType:I

    .line 372
    return-object p0
.end method

.method public whitelist setSlotIndex(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2
    .param p1, "slotIndex"    # I

    .line 289
    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mSlotIndex:I

    .line 290
    return-object p0
.end method

.method public whitelist setThrottleExpiryTimeMillis(J)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 5
    .param p1, "throttleExpiryTimeMillis"    # J

    .line 335
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    .line 336
    iput-wide p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleExpiryTimeMillis:J

    .line 337
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleType:I

    .line 342
    return-object p0

    .line 339
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "throttleExpiryTimeMillis must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransportType(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2
    .param p1, "transportType"    # I

    .line 302
    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mTransportType:I

    .line 303
    return-object p0
.end method
