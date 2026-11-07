.class public abstract Ljava/lang/ClassValue;
.super Ljava/lang/Object;
.source "ClassValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ClassValue$Identity;,
        Ljava/lang/ClassValue$Version;,
        Ljava/lang/ClassValue$Entry;,
        Ljava/lang/ClassValue$ClassValueMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist CRITICAL_SECTION:Ljava/lang/Object;

.field private static final blacklist EMPTY_CACHE:[Ljava/lang/ClassValue$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist HASH_INCREMENT:I = 0x61c88647

.field static final blacklist HASH_MASK:I = 0x3fffffff

.field private static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;

.field private static final blacklist nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final blacklist hashCodeForCache:I

.field final blacklist identity:Ljava/lang/ClassValue$Identity;

.field private volatile blacklist version:Ljava/lang/ClassValue$Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ClassValue$Version<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 200
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/ClassValue$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/ClassValue;->EMPTY_CACHE:[Ljava/lang/ClassValue$Entry;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljava/lang/ClassValue;->nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/ClassValue;->CRITICAL_SECTION:Ljava/lang/Object;

    .line 378
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/lang/ClassValue;->UNSAFE:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 51
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    sget-object v0, Ljava/lang/ClassValue;->nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Ljava/lang/ClassValue;->hashCodeForCache:I

    .line 274
    new-instance v0, Ljava/lang/ClassValue$Identity;

    invoke-direct {v0}, Ljava/lang/ClassValue$Identity;-><init>()V

    iput-object v0, p0, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    .line 303
    new-instance v0, Ljava/lang/ClassValue$Version;

    invoke-direct {v0, p0}, Ljava/lang/ClassValue$Version;-><init>(Ljava/lang/ClassValue;)V

    iput-object v0, p0, Ljava/lang/ClassValue;->version:Ljava/lang/ClassValue$Version;

    .line 52
    return-void
.end method

.method private static blacklist getCacheCarefully(Ljava/lang/Class;)[Ljava/lang/ClassValue$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation

    .line 192
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->ensureExtDataPresent()Ldalvik/system/ClassExt;

    move-result-object v0

    iget-object v0, v0, Ldalvik/system/ClassExt;->classValueMap:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassValue$ClassValueMap;

    .line 193
    .local v0, "map":Ljava/lang/ClassValue$ClassValueMap;
    if-nez v0, :cond_d

    sget-object v1, Ljava/lang/ClassValue;->EMPTY_CACHE:[Ljava/lang/ClassValue$Entry;

    return-object v1

    .line 194
    :cond_d
    invoke-virtual {v0}, Ljava/lang/ClassValue$ClassValueMap;->getCache()[Ljava/lang/ClassValue$Entry;

    move-result-object v1

    .line 195
    .local v1, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    return-object v1
.end method

.method private blacklist getFromBackup([Ljava/lang/ClassValue$Entry;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 209
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p1, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p0}, Ljava/lang/ClassValue$ClassValueMap;->probeBackupLocations([Ljava/lang/ClassValue$Entry;Ljava/lang/ClassValue;)Ljava/lang/ClassValue$Entry;

    move-result-object v0

    .line 210
    .local v0, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    if-eqz v0, :cond_b

    .line 211
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->value()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 212
    :cond_b
    invoke-direct {p0, p2}, Ljava/lang/ClassValue;->getFromHashMap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getFromHashMap(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 223
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/ClassValue;->getMap(Ljava/lang/Class;)Ljava/lang/ClassValue$ClassValueMap;

    move-result-object v0

    .line 225
    .local v0, "map":Ljava/lang/ClassValue$ClassValueMap;
    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/ClassValue$ClassValueMap;->startEntry(Ljava/lang/ClassValue;)Ljava/lang/ClassValue$Entry;

    move-result-object v1

    .line 226
    .local v1, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {v1}, Ljava/lang/ClassValue$Entry;->isPromise()Z

    move-result v2

    if-nez v2, :cond_13

    .line 227
    invoke-virtual {v1}, Ljava/lang/ClassValue$Entry;->value()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 230
    :cond_13
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v2

    invoke-virtual {p0, p1}, Ljava/lang/ClassValue;->computeValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/ClassValue;->makeEntry(Ljava/lang/ClassValue$Version;Ljava/lang/Object;)Ljava/lang/ClassValue$Entry;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2c

    .line 234
    .end local v1    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .local v2, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {v0, p0, v2}, Ljava/lang/ClassValue$ClassValueMap;->finishEntry(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;

    move-result-object v1

    .line 235
    .end local v2    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .restart local v1    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    nop

    .line 236
    if-eqz v1, :cond_2b

    .line 237
    invoke-virtual {v1}, Ljava/lang/ClassValue$Entry;->value()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 239
    .end local v1    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    :cond_2b
    goto :goto_4

    .line 234
    .restart local v1    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    :catchall_2c
    move-exception v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/ClassValue$ClassValueMap;->finishEntry(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;

    move-result-object v1

    .line 235
    throw v2
.end method

.method private static blacklist getMap(Ljava/lang/Class;)Ljava/lang/ClassValue$ClassValueMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassValue$ClassValueMap;"
        }
    .end annotation

    .line 372
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->ensureExtDataPresent()Ldalvik/system/ClassExt;

    move-result-object v0

    iget-object v0, v0, Ldalvik/system/ClassExt;->classValueMap:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassValue$ClassValueMap;

    .line 373
    .local v0, "map":Ljava/lang/ClassValue$ClassValueMap;
    if-eqz v0, :cond_b

    return-object v0

    .line 374
    :cond_b
    invoke-static {p0}, Ljava/lang/ClassValue;->initializeMap(Ljava/lang/Class;)Ljava/lang/ClassValue$ClassValueMap;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist initializeMap(Ljava/lang/Class;)Ljava/lang/ClassValue$ClassValueMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassValue$ClassValueMap;"
        }
    .end annotation

    .line 381
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/ClassValue;->CRITICAL_SECTION:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->ensureExtDataPresent()Ldalvik/system/ClassExt;

    move-result-object v1

    iget-object v1, v1, Ldalvik/system/ClassExt;->classValueMap:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ClassValue$ClassValueMap;

    move-object v2, v1

    .local v2, "map":Ljava/lang/ClassValue$ClassValueMap;
    if-nez v1, :cond_1f

    .line 386
    new-instance v1, Ljava/lang/ClassValue$ClassValueMap;

    invoke-direct {v1}, Ljava/lang/ClassValue$ClassValueMap;-><init>()V

    move-object v2, v1

    .line 392
    sget-object v1, Ljava/lang/ClassValue;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v1}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 396
    invoke-virtual {p0}, Ljava/lang/Class;->ensureExtDataPresent()Ldalvik/system/ClassExt;

    move-result-object v1

    iput-object v2, v1, Ldalvik/system/ClassExt;->classValueMap:Ljava/lang/Object;

    .line 398
    :cond_1f
    monitor-exit v0

    .line 399
    return-object v2

    .line 398
    .end local v2    # "map":Ljava/lang/ClassValue$ClassValueMap;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method static blacklist makeEntry(Ljava/lang/ClassValue$Version;Ljava/lang/Object;)Ljava/lang/ClassValue$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassValue$Version<",
            "TT;>;TT;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .line 404
    .local p0, "explicitVersion":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ClassValue$Entry;

    invoke-direct {v0, p0, p1}, Ljava/lang/ClassValue$Entry;-><init>(Ljava/lang/ClassValue$Version;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method blacklist bumpVersion()V
    .registers 2

    .line 305
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    new-instance v0, Ljava/lang/ClassValue$Version;

    invoke-direct {v0, p0}, Ljava/lang/ClassValue$Version;-><init>(Ljava/lang/ClassValue;)V

    iput-object v0, p0, Ljava/lang/ClassValue;->version:Ljava/lang/ClassValue$Version;

    return-void
.end method

.method blacklist castEntry(Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue$Entry<",
            "*>;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .line 217
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p1, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    return-object p1
.end method

.method protected abstract whitelist test-api computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public whitelist test-api get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 103
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/ClassValue;->getCacheCarefully(Ljava/lang/Class;)[Ljava/lang/ClassValue$Entry;

    move-result-object v0

    move-object v1, v0

    .local v1, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    invoke-static {v0, p0}, Ljava/lang/ClassValue$ClassValueMap;->probeHomeLocation([Ljava/lang/ClassValue$Entry;Ljava/lang/ClassValue;)Ljava/lang/ClassValue$Entry;

    move-result-object v0

    .line 106
    .local v0, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p0, v0}, Ljava/lang/ClassValue;->match(Ljava/lang/ClassValue$Entry;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 110
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->value()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 116
    :cond_14
    invoke-direct {p0, v1, p1}, Ljava/lang/ClassValue;->getFromBackup([Ljava/lang/ClassValue$Entry;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method blacklist match(Ljava/lang/ClassValue$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue$Entry<",
            "*>;)Z"
        }
    .end annotation

    .line 246
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p1, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/ClassValue$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/ClassValue;->version:Ljava/lang/ClassValue$Version;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist put(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;TT;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/ClassValue;->getMap(Ljava/lang/Class;)Ljava/lang/ClassValue$ClassValueMap;

    move-result-object v0

    .line 180
    .local v0, "map":Ljava/lang/ClassValue$ClassValueMap;
    invoke-virtual {v0, p0, p2}, Ljava/lang/ClassValue$ClassValueMap;->changeEntry(Ljava/lang/ClassValue;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/ClassValue;->getMap(Ljava/lang/Class;)Ljava/lang/ClassValue$ClassValueMap;

    move-result-object v0

    .line 174
    .local v0, "map":Ljava/lang/ClassValue$ClassValueMap;
    invoke-virtual {v0, p0}, Ljava/lang/ClassValue$ClassValueMap;->removeEntry(Ljava/lang/ClassValue;)V

    .line 175
    return-void
.end method

.method blacklist version()Ljava/lang/ClassValue$Version;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ClassValue$Version<",
            "TT;>;"
        }
    .end annotation

    .line 304
    .local p0, "this":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassValue;->version:Ljava/lang/ClassValue$Version;

    return-object v0
.end method
