.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field private blacklist mCachedTime:J

.field private blacklist mCallDirection:I

.field private blacklist mConnectElapsedTime:J

.field private blacklist mConnectTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCachedTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mCachedTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallDirection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mCallDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectElapsedTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectElapsedTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectTime(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectTime:J

    return-wide v0
.end method

.method constructor blacklist <init>(JJJI)V
    .registers 8

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mCachedTime:J

    .line 739
    iput-wide p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectTime:J

    .line 740
    iput-wide p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectElapsedTime:J

    .line 741
    iput p7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mCallDirection:I

    return-void
.end method
