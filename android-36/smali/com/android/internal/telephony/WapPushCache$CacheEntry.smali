.class Lcom/android/internal/telephony/WapPushCache$CacheEntry;
.super Ljava/lang/Object;
.source "WapPushCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field private final blacklist mExpiry:J

.field private final blacklist mSize:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExpiry(Lcom/android/internal/telephony/WapPushCache$CacheEntry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/WapPushCache$CacheEntry;->mExpiry:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSize(Lcom/android/internal/telephony/WapPushCache$CacheEntry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/WapPushCache$CacheEntry;->mSize:J

    return-wide v0
.end method

.method constructor blacklist <init>(JJ)V
    .registers 5

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-wide p1, p0, Lcom/android/internal/telephony/WapPushCache$CacheEntry;->mSize:J

    .line 167
    iput-wide p3, p0, Lcom/android/internal/telephony/WapPushCache$CacheEntry;->mExpiry:J

    return-void
.end method
