.class public Lcom/android/internal/util/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private blacklist mCursor:J

.field private final blacklist mNewItem:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 5
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/internal/util/RingBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/util/RingBuffer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/android/internal/util/RingBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/internal/util/RingBuffer$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V
    .registers 6
    .param p3, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;I)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    .local p1, "newItem":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p2, "newBacking":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    .line 62
    const-string v0, "A RingBuffer cannot have 0 capacity"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 63
    invoke-interface {p2, p3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/internal/util/RingBuffer;->mNewItem:Ljava/util/function/Supplier;

    .line 65
    return-void
.end method

.method private static blacklist createNewItem(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "c"    # Ljava/lang/Class;

    .line 54
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 55
    :catch_e
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist indexOf(J)I
    .registers 5
    .param p1, "cursor"    # J

    .line 112
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .param p0, "c"    # Ljava/lang/Class;

    .line 49
    invoke-static {p0}, Lcom/android/internal/util/RingBuffer;->createNewItem(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "cap"    # I

    .line 49
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public blacklist append(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v1

    aput-object p1, v0, v1

    .line 84
    return-void
.end method

.method public blacklist clear()V
    .registers 4

    .line 76
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 77
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "i":I
    :cond_f
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    .line 80
    return-void
.end method

.method public blacklist getNextSlot()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v0

    .line 93
    .local v0, "nextSlotIdx":I
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_1b

    .line 94
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/util/RingBuffer;->mNewItem:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 96
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 72
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist size()I
    .registers 5

    .line 68
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public blacklist toArray()[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "out":[Ljava/lang/Object;, "[TT;"
    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 104
    .local v1, "inCursor":J
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 105
    .local v5, "outIdx":I
    :goto_18
    if-ltz v5, :cond_2b

    .line 106
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "outIdx":I
    .local v6, "outIdx":I
    iget-object v7, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    sub-long v8, v1, v3

    .end local v1    # "inCursor":J
    .local v8, "inCursor":J
    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v1

    aget-object v1, v7, v1

    aput-object v1, v0, v5

    move v5, v6

    move-wide v1, v8

    goto :goto_18

    .line 108
    .end local v6    # "outIdx":I
    .end local v8    # "inCursor":J
    .restart local v1    # "inCursor":J
    .restart local v5    # "outIdx":I
    :cond_2b
    return-object v0
.end method
