.class public Ljava/util/concurrent/atomic/AtomicStampedReference;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
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
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final pairOffset:J


# instance fields
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 164
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 166
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    #@8
    const-string/jumbo v1, "pair"

    #@b
    const-class v2, Ljava/util/concurrent/atomic/AtomicStampedReference;

    #@d
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    #@10
    move-result-wide v0

    #@11
    .line 165
    sput-wide v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pairOffset:J

    #@13
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "initialStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "initialRef":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@9
    .line 44
    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    .local p2, "val":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicStampedReference;->pairOffset:J

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

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .param p0, "UNSAFE"    # Lsun/misc/Unsafe;
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 175
    .local p2, "klazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    return-wide v2

    #@9
    .line 176
    :catch_0
    move-exception v0

    #@a
    .line 178
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    #@c
    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    #@f
    .line 179
    .local v1, "error":Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@12
    .line 180
    throw v1
.end method


# virtual methods
.method public attemptStamp(Ljava/lang/Object;I)Z
    .locals 2
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@2
    .line 157
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 158
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    #@8
    if-eq p2, v1, :cond_0

    #@a
    .line 159
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

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

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 2
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@2
    .line 122
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 123
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    #@8
    if-ne p3, v1, :cond_1

    #@a
    .line 124
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    #@c
    if-ne p2, v1, :cond_0

    #@e
    .line 125
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

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
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

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

.method public get([I)Ljava/lang/Object;
    .locals 3
    .param p1, "stampHolder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@2
    .line 76
    .local v0, "pair":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    #@4
    const/4 v2, 0x0

    #@5
    aput v1, p1, v2

    #@7
    .line 77
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

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
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@2
    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    #@4
    return-object v0
.end method

.method public getStamp()I
    .locals 1

    #@0
    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@2
    iget v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    #@4
    return v0
.end method

.method public set(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@2
    .line 137
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    #@4
    if-ne p1, v1, :cond_0

    #@6
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    #@8
    if-eq p2, v1, :cond_1

    #@a
    .line 138
    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    #@10
    .line 135
    :cond_1
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 1
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
