.class Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;
.super Ljava/util/LinkedHashMap;
.source "BasicLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/internal/BasicLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist maxSize:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "maxSize"    # I

    .line 33
    .local p0, "this":Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;, "Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 34
    iput p1, p0, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;->maxSize:I

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/i18n/timezone/internal/BasicLruCache-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;, "Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;->maxSize:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
