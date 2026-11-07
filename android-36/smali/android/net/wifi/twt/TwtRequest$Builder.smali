.class public final Landroid/net/wifi/twt/TwtRequest$Builder;
.super Ljava/lang/Object;
.source "TwtRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/twt/TwtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLinkId:I

.field private final blacklist mMaxWakeDurationMicros:I

.field private final blacklist mMaxWakeIntervalMicros:J

.field private final blacklist mMinWakeDurationMicros:I

.field private final blacklist mMinWakeIntervalMicros:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLinkId(Landroid/net/wifi/twt/TwtRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mLinkId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxWakeDurationMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMaxWakeDurationMicros:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxWakeIntervalMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMaxWakeIntervalMicros:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinWakeDurationMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMinWakeDurationMicros:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinWakeIntervalMicros(Landroid/net/wifi/twt/TwtRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMinWakeIntervalMicros:J

    return-wide v0
.end method

.method public constructor whitelist <init>(IIJJ)V
    .registers 8
    .param p1, "minWakeDurationMicros"    # I
    .param p2, "maxWakeDurationMicros"    # I
    .param p3, "minWakeIntervalMicros"    # J
    .param p5, "maxWakeIntervalMicros"    # J

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mLinkId:I

    .line 198
    iput p1, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMinWakeDurationMicros:I

    .line 199
    iput p2, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMaxWakeDurationMicros:I

    .line 200
    iput-wide p3, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMinWakeIntervalMicros:J

    .line 201
    iput-wide p5, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mMaxWakeIntervalMicros:J

    .line 202
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/twt/TwtRequest;
    .registers 3

    .line 210
    new-instance v0, Landroid/net/wifi/twt/TwtRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/twt/TwtRequest;-><init>(Landroid/net/wifi/twt/TwtRequest$Builder;Landroid/net/wifi/twt/TwtRequest-IA;)V

    return-object v0
.end method

.method public whitelist setLinkId(I)Landroid/net/wifi/twt/TwtRequest$Builder;
    .registers 4
    .param p1, "linkId"    # I

    .line 180
    if-ltz p1, :cond_9

    const/16 v0, 0xf

    if-gt p1, v0, :cond_9

    .line 183
    iput p1, p0, Landroid/net/wifi/twt/TwtRequest$Builder;->mLinkId:I

    .line 184
    return-object p0

    .line 181
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "linkId is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
