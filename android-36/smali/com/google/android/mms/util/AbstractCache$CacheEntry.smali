.class Lcom/google/android/mms/util/AbstractCache$CacheEntry;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/util/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
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
.field blacklist hit:I

.field blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 115
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/google/android/mms/util/AbstractCache-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/mms/util/AbstractCache$CacheEntry;-><init>()V

    return-void
.end method
