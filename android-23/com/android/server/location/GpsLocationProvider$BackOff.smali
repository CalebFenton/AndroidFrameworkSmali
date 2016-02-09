.class final Lcom/android/server/location/GpsLocationProvider$BackOff;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackOff"
.end annotation


# static fields
.field private static final MULTIPLIER:I = 0x2


# instance fields
.field private mCurrentIntervalMillis:J

.field private final mInitIntervalMillis:J

.field private final mMaxIntervalMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "initIntervalMillis"    # J
    .param p3, "maxIntervalMillis"    # J

    #@0
    .prologue
    .line 2213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2214
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mInitIntervalMillis:J

    #@5
    .line 2215
    iput-wide p3, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mMaxIntervalMillis:J

    #@7
    .line 2217
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mInitIntervalMillis:J

    #@9
    const-wide/16 v2, 0x2

    #@b
    div-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    #@e
    .line 2213
    return-void
.end method


# virtual methods
.method public nextBackoffMillis()J
    .locals 4

    #@0
    .prologue
    .line 2221
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    #@2
    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mMaxIntervalMillis:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    .line 2222
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mMaxIntervalMillis:J

    #@a
    return-wide v0

    #@b
    .line 2225
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    #@d
    const-wide/16 v2, 0x2

    #@f
    mul-long/2addr v0, v2

    #@10
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    #@12
    .line 2226
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    #@14
    return-wide v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    .line 2230
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mInitIntervalMillis:J

    #@2
    const-wide/16 v2, 0x2

    #@4
    div-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider$BackOff;->mCurrentIntervalMillis:J

    #@7
    .line 2229
    return-void
.end method
