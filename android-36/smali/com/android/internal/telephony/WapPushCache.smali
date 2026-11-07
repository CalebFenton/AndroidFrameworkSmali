.class public Lcom/android/internal/telephony/WapPushCache;
.super Ljava/lang/Object;
.source "WapPushCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_EXPIRY_TIME:J

.field private static final blacklist sMessageSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/WapPushCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/WapPushCache;->CACHE_EXPIRY_TIME:J

    .line 54
    new-instance v0, Lcom/android/internal/telephony/WapPushCache$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/WapPushCache$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/WapPushCache;->sMessageSizes:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/TelephonyFacade;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyFacade;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/WapPushCache;->sTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clear()V
    .registers 1

    .line 150
    sget-object v0, Lcom/android/internal/telephony/WapPushCache;->sMessageSizes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static blacklist getWapMessageSize([B)J
    .registers 4

    .line 133
    array-length v0, p0

    if-eqz v0, :cond_31

    .line 136
    sget-object v0, Lcom/android/internal/telephony/WapPushCache;->sMessageSizes:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/WapPushCache$CacheEntry;

    if-eqz v0, :cond_16

    .line 142
    invoke-static {v0}, Lcom/android/internal/telephony/WapPushCache$CacheEntry;->-$$Nest$fgetmSize(Lcom/android/internal/telephony/WapPushCache$CacheEntry;)J

    move-result-wide v0

    return-wide v0

    .line 138
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cached WAP size for locationUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Found empty locationUrl"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist invalidateOldEntries()V
    .registers 5

    .line 105
    sget-object v0, Lcom/android/internal/telephony/WapPushCache;->sTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 109
    sget-object v2, Lcom/android/internal/telephony/WapPushCache;->sMessageSizes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/WapPushCache$CacheEntry;

    .line 111
    invoke-static {v3}, Lcom/android/internal/telephony/WapPushCache$CacheEntry;->-$$Nest$fgetmExpiry(Lcom/android/internal/telephony/WapPushCache$CacheEntry;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_28

    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_28
    return-void
.end method

.method public static blacklist putWapMessageSize([B[BJ)V
    .registers 9

    .line 82
    sget-object v0, Lcom/android/internal/telephony/WapPushCache;->sTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/internal/telephony/WapPushCache;->CACHE_EXPIRY_TIME:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_2b

    .line 84
    const-string p0, "WAP PUSH CACHE"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid message size of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ". Not inserting."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_2b
    sget-object v2, Lcom/android/internal/telephony/WapPushCache;->sMessageSizes:Ljava/util/HashMap;

    monitor-enter v2

    .line 88
    :try_start_2e
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/WapPushCache$CacheEntry;

    invoke-direct {v4, p2, p3, v0, v1}, Lcom/android/internal/telephony/WapPushCache$CacheEntry;-><init>(JJ)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    array-length v3, p0

    array-length v4, p1

    add-int/2addr v3, v4

    .line 92
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 93
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 94
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 96
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/WapPushCache$CacheEntry;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/internal/telephony/WapPushCache$CacheEntry;-><init>(JJ)V

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/WapPushCache;->invalidateOldEntries()V

    .line 98
    monitor-exit v2

    return-void

    :catchall_5e
    move-exception p0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_2e .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public static blacklist size()I
    .registers 1

    .line 159
    sget-object v0, Lcom/android/internal/telephony/WapPushCache;->sMessageSizes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
