.class Lcom/android/internal/util/RateLimitingCache$CachedValue;
.super Ljava/lang/Object;
.source "RateLimitingCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/RateLimitingCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachedValue"
.end annotation


# instance fields
.field blacklist count:Ljava/util/concurrent/atomic/AtomicInteger;

.field blacklist timestamp:J

.field blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TValue;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/RateLimitingCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/util/RateLimitingCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/android/internal/util/RateLimitingCache$CachedValue;, "Lcom/android/internal/util/RateLimitingCache<TValue;>.CachedValue;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
