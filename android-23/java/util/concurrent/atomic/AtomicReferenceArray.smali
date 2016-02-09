.class public Ljava/util/concurrent/atomic/AtomicReferenceArray;
.super Ljava/lang/Object;
.source "AtomicReferenceArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final arrayFieldOffset:J

.field private static final base:I

.field private static final serialVersionUID:J = -0x562d215e419a9ff4L

.field private static final shift:I

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 34
    sget-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@8
    .line 35
    const-class v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    #@a
    const-string/jumbo v4, "array"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 34
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->arrayFieldOffset:J

    #@17
    .line 36
    sget-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@19
    const-class v3, [Ljava/lang/Object;

    #@1b
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    #@1e
    move-result v2

    #@1f
    sput v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->base:I

    #@21
    .line 37
    sget-object v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@23
    const-class v3, [Ljava/lang/Object;

    #@25
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    #@28
    move-result v1

    #@29
    .line 38
    .local v1, "scale":I
    add-int/lit8 v2, v1, -0x1

    #@2b
    and-int/2addr v2, v1

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 39
    new-instance v2, Ljava/lang/Error;

    #@30
    const-string/jumbo v3, "data type scale not a power of two"

    #@33
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@36
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 41
    :catch_0
    move-exception v0

    #@38
    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@3a
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3d
    throw v2

    #@3e
    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@41
    move-result v2

    #@42
    rsub-int/lit8 v2, v2, 0x1f

    #@44
    sput v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->shift:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@46
    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 63
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-array v0, p1, [Ljava/lang/Object;

    #@5
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@7
    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    array-length v0, p1

    #@4
    const-class v1, [Ljava/lang/Object;

    #@6
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@c
    .line 74
    return-void
.end method

.method private static byteOffset(I)J
    .locals 4
    .param p0, "i"    # I

    #@0
    .prologue
    .line 54
    int-to-long v0, p0

    #@1
    sget v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->shift:I

    #@3
    shl-long/2addr v0, v2

    #@4
    sget v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->base:I

    #@6
    int-to-long v2, v2

    #@7
    add-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 47
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "index "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 50
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->byteOffset(I)J

    #@24
    move-result-wide v0

    #@25
    return-wide v0
.end method

.method private compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 156
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p3, "expect":Ljava/lang/Object;, "TE;"
    .local p4, "update":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@4
    move-wide v2, p1

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private getRaw(J)Ljava/lang/Object;
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 202
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v1

    #@5
    const-string/jumbo v2, "array"

    #@8
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 203
    .local v0, "a":Ljava/lang/Object;
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v1

    #@1c
    const-class v2, [Ljava/lang/Object;

    #@1e
    if-eq v1, v2, :cond_0

    #@20
    move-object v1, v0

    #@21
    .line 206
    check-cast v1, [Ljava/lang/Object;

    #@23
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@26
    move-result v2

    #@27
    const-class v3, [Ljava/lang/Object;

    #@29
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    .line 207
    :cond_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@2f
    sget-wide v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;->arrayFieldOffset:J

    #@31
    invoke-virtual {v1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@34
    .line 200
    return-void

    #@35
    .line 204
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    #@37
    const-string/jumbo v2, "Not array type"

    #@3a
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1
.end method


# virtual methods
.method public final compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expect":Ljava/lang/Object;, "TE;"
    .local p3, "update":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 133
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    #@3
    move-result-wide v2

    #@4
    .line 135
    .local v2, "offset":J
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 136
    .local v0, "current":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v2, v3, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSetRaw(JLjava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 137
    return-object v0
.end method

.method public final lazySet(ILjava/lang/Object;)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@b
    .line 120
    return-void
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 85
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@4
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->checkedByteOffset(I)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@b
    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 181
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    #@2
    array-length v3, v3

    #@3
    add-int/lit8 v2, v3, -0x1

    #@5
    .line 182
    .local v2, "iMax":I
    const/4 v3, -0x1

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 183
    const-string/jumbo v3, "[]"

    #@b
    return-object v3

    #@c
    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 186
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 187
    const/4 v1, 0x0

    #@17
    .line 188
    .local v1, "i":I
    :goto_0
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->byteOffset(I)J

    #@1a
    move-result-wide v4

    #@1b
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getRaw(J)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    .line 189
    if-ne v1, v2, :cond_1

    #@24
    .line 190
    const/16 v3, 0x5d

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 191
    :cond_1
    const/16 v3, 0x2c

    #@31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const/16 v4, 0x20

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 187
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0
.end method

.method public final weakCompareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expect":Ljava/lang/Object;, "TE;"
    .local p3, "update":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
