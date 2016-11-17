.class public Ljava/util/concurrent/atomic/AtomicMarkableReference;
.super Ljava/lang/Object;
.source "AtomicMarkableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PAIR:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 164
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;->U:Lsun/misc/Unsafe;

    #@6
    .line 168
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;->U:Lsun/misc/Unsafe;

    #@8
    .line 169
    const-class v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    #@a
    const-string/jumbo v3, "pair"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 168
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;->PAIR:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 21
    return-void

    #@18
    .line 170
    :catch_0
    move-exception v0

    #@19
    .line 171
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "initialMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "initialRef":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@9
    .line 44
    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    .local p2, "val":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;->PAIR:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method


# virtual methods
.method public attemptMark(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@2
    .line 157
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 158
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    #@8
    if-eq p2, v1, :cond_0

    #@a
    .line 159
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

    #@11
    move-result v1

    #@12
    .line 156
    :goto_0
    return v1

    #@13
    .line 158
    :cond_0
    const/4 v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 157
    :cond_1
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .locals 2
    .param p3, "expectedMark"    # Z
    .param p4, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@2
    .line 122
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 123
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    #@8
    if-ne p3, v1, :cond_1

    #@a
    .line 124
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    #@c
    if-ne p2, v1, :cond_0

    #@e
    .line 125
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    #@10
    if-ne p4, v1, :cond_0

    #@12
    .line 124
    const/4 v1, 0x1

    #@13
    .line 121
    :goto_0
    return v1

    #@14
    .line 126
    :cond_0
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

    #@1b
    move-result v1

    #@1c
    goto :goto_0

    #@1d
    .line 122
    :cond_1
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method public get([Z)Ljava/lang/Object;
    .locals 3
    .param p1, "markHolder"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@2
    .line 76
    .local v0, "pair":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    #@4
    const/4 v2, 0x0

    #@5
    aput-boolean v1, p1, v2

    #@7
    .line 77
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    #@9
    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@2
    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    #@4
    return-object v0
.end method

.method public isMarked()Z
    .locals 1

    #@0
    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@2
    iget-boolean v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    #@4
    return v0
.end method

.method public set(Ljava/lang/Object;Z)V
    .locals 2
    .param p2, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@2
    .line 137
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    #@4
    if-ne p1, v1, :cond_0

    #@6
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    #@8
    if-eq p2, v1, :cond_1

    #@a
    .line 138
    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    #@10
    .line 135
    :cond_1
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .locals 1
    .param p3, "expectedMark"    # Z
    .param p4, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
