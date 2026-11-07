.class final Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeserializationConstructorsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;",
        "Ljava/lang/invoke/MethodHandle;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MAX_SIZE:I = 0xa


# instance fields
.field private blacklist first:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

.field private blacklist last:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2579
    const-class v0, Ljava/io/ObjectStreamClass;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 2592
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 2593
    return-void
.end method


# virtual methods
.method blacklist get([Ljava/io/ObjectStreamField;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    .line 2596
    new-instance v0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;

    invoke-direct {v0, p1}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;-><init>([Ljava/io/ObjectStreamField;)V

    invoke-virtual {p0, v0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method declared-synchronized blacklist putIfAbsentAndGet([Ljava/io/ObjectStreamField;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandle;

    monitor-enter p0

    .line 2600
    :try_start_1
    new-instance v0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    invoke-direct {v0, p1}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;-><init>([Ljava/io/ObjectStreamField;)V

    .line 2601
    .local v0, "key":Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;
    invoke-virtual {p0, v0, p2}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodHandle;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3c

    .line 2602
    .local v1, "oldMh":Ljava/lang/invoke/MethodHandle;
    if-eqz v1, :cond_10

    monitor-exit p0

    return-object v1

    .line 2604
    :cond_10
    :try_start_10
    iget-object v2, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->last:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    if-nez v2, :cond_19

    .line 2605
    iput-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->first:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    iput-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->last:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    goto :goto_1f

    .line 2607
    .end local p0    # "this":Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;
    :cond_19
    iget-object v2, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->last:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    iput-object v0, v2, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->next:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    iput-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->last:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    .line 2610
    :goto_1f
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_3a

    .line 2611
    nop

    .line 2612
    iget-object v2, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->first:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    invoke-virtual {p0, v2}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    iget-object v2, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->first:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    iget-object v2, v2, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->next:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    iput-object v2, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->first:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    .line 2614
    iget-object v2, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->first:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;

    if-nez v2, :cond_3a

    .line 2615
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->last:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_3c

    .line 2618
    :cond_3a
    monitor-exit p0

    return-object p2

    .line 2599
    .end local v0    # "key":Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;
    .end local v1    # "oldMh":Ljava/lang/invoke/MethodHandle;
    .end local p1    # "fields":[Ljava/io/ObjectStreamField;
    .end local p2    # "mh":Ljava/lang/invoke/MethodHandle;
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method
