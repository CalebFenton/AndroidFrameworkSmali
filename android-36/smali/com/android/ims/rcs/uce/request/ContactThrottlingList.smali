.class public Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
.super Ljava/lang/Object;
.source "ContactThrottlingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mSubId:I

.field private final blacklist mThrottlingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Khgc8lcaGxr9b4kAQf2wcB9xEqg(Lcom/android/ims/rcs/uce/request/ContactThrottlingList;Landroid/net/Uri;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->lambda$getInThrottlingListUris$3(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ThrottlingList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    .line 51
    iput p1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mSubId:I

    .line 52
    return-void
.end method

.method private declared-synchronized blacklist cleanUpExpiredContacts()V
    .registers 5

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    .local v0, "previousSize":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda1;-><init>()V

    .line 100
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 102
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    .local v1, "expiredContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;>;"
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpExpiredContacts: previous size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->logd(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 107
    monitor-exit p0

    return-void

    .line 97
    .end local v0    # "previousSize":I
    .end local v1    # "expiredContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;>;"
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return-object v0
.end method

.method private declared-synchronized blacklist getNotInThrottlingListUris(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 78
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    .local v0, "throttlingUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .local v1, "addToThrottlingUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 81
    monitor-exit p0

    return-object v1

    .line 76
    .end local v0    # "throttlingUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v1    # "addToThrottlingUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
    .end local p1    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method static synthetic blacklist lambda$addToThrottlingList$0(ILjava/time/Instant;Landroid/net/Uri;)Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;
    .registers 4
    .param p0, "sipCode"    # I
    .param p1, "timestamp"    # Ljava/time/Instant;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 67
    new-instance v0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;-><init>(Landroid/net/Uri;ILjava/time/Instant;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$cleanUpExpiredContacts$4(Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;)Z
    .registers 3
    .param p0, "contactInfo"    # Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;

    .line 100
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;->mThrottleEndTimestamp:Ljava/time/Instant;

    .line 101
    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    .line 100
    return v0
.end method

.method static synthetic blacklist lambda$getInThrottlingListUris$2(Landroid/net/Uri;Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "contactInfo"    # Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;

    .line 90
    iget-object v0, p1, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$getInThrottlingListUris$3(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 89
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda0;-><init>(Landroid/net/Uri;)V

    .line 90
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 89
    return v0
.end method

.method static synthetic blacklist lambda$getNotInThrottlingListUris$1(Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;)Landroid/net/Uri;
    .registers 2
    .param p0, "contactInfo"    # Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;

    .line 78
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addToThrottlingList(Ljava/util/List;I)V
    .registers 11
    .param p2, "sipCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 60
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->cleanUpExpiredContacts()V

    .line 62
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->getNotInThrottlingListUris(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "addToThrottlingList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget v1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mSubId:I

    invoke-static {v1}, Lcom/android/ims/rcs/uce/util/UceUtils;->getAvailabilityCacheExpiration(I)J

    move-result-wide v1

    .line 64
    .local v1, "expiration":J
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v3

    .line 66
    .local v3, "timestamp":Ljava/time/Instant;
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2, v3}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda2;-><init>(ILjava/time/Instant;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 67
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 69
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;>;"
    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 70
    .local v5, "previousSize":I
    iget-object v6, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToThrottlingList: previous size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", current size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    .line 73
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expired time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-direct {p0, v6}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->logd(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_6a

    .line 74
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "addToThrottlingList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v1    # "expiration":J
    .end local v3    # "timestamp":Ljava/time/Instant;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;>;"
    .end local v5    # "previousSize":I
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
    .end local p1    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local p2    # "sipCode":I
    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public declared-synchronized blacklist getInThrottlingListUris(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 86
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->cleanUpExpiredContacts()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/rcs/uce/request/ContactThrottlingList;)V

    .line 89
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 91
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 88
    monitor-exit p0

    return-object v0

    .line 85
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
    .end local p1    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public declared-synchronized blacklist reset()V
    .registers 2

    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->mThrottlingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 56
    monitor-exit p0

    return-void

    .line 54
    .end local p0    # "this":Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method
