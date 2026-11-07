.class Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;
.super Ljava/lang/Object;
.source "LruCacheWithExpiry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/LruCacheWithExpiry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist entry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final blacklist timestamp:J


# direct methods
.method constructor blacklist <init>(JLjava/lang/Object;)V
    .registers 4
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;, "Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue<TV;>;"
    .local p3, "entry":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-wide p1, p0, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;->timestamp:J

    .line 166
    iput-object p3, p0, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;->entry:Ljava/lang/Object;

    .line 167
    return-void
.end method
