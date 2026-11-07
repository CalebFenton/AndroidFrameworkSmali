.class Landroid/app/PropertyInvalidatedCache$CacheMap$1;
.super Ljava/util/LinkedHashMap;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PropertyInvalidatedCache$CacheMap;->createMap()Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TQuery;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$CacheMap;IFZ)V
    .registers 5
    .param p1, "this$1"    # Landroid/app/PropertyInvalidatedCache$CacheMap;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # F
    .param p4, "arg3"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 410
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap$1;, "Landroid/app/PropertyInvalidatedCache$CacheMap$1;"
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 8
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .line 414
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap$1;, "Landroid/app/PropertyInvalidatedCache$CacheMap$1;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->size()I

    move-result v0

    .line 415
    .local v0, "size":I
    int-to-long v1, v0

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object v3, v3, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 416
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object v1, v1, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V

    .line 418
    :cond_19
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object v1, v1, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I

    move-result v1

    if-le v0, v1, :cond_33

    .line 419
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object v1, v1, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V

    .line 420
    const/4 v1, 0x1

    return v1

    .line 422
    :cond_33
    const/4 v1, 0x0

    return v1
.end method
