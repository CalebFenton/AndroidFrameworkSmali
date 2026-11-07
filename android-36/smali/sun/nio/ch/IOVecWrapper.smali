.class Lsun/nio/ch/IOVecWrapper;
.super Ljava/lang/Object;
.source "IOVecWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/IOVecWrapper$Deallocator;
    }
.end annotation


# static fields
.field private static final blacklist BASE_OFFSET:I

.field private static final blacklist LEN_OFFSET:I

.field private static final blacklist SIZE_IOVEC:I

.field static blacklist addressSize:I

.field private static final blacklist cached:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lsun/nio/ch/IOVecWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist address:J

.field private final blacklist buf:[Ljava/nio/ByteBuffer;

.field private final blacklist position:[I

.field private final blacklist remaining:[I

.field private final blacklist shadow:[Ljava/nio/ByteBuffer;

.field private final blacklist size:I

.field private final blacklist vecArray:Lsun/nio/ch/AllocatedNativeObject;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    .line 158
    invoke-static {}, Lsun/nio/ch/Util;->unsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->addressSize()I

    move-result v0

    sput v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    .line 159
    sget v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    sput v0, Lsun/nio/ch/IOVecWrapper;->LEN_OFFSET:I

    .line 160
    sget v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    sput v0, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    .line 161
    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 5
    .param p1, "size"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lsun/nio/ch/IOVecWrapper;->size:I

    .line 87
    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    .line 88
    new-array v0, p1, [I

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    .line 89
    new-array v0, p1, [I

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    .line 90
    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    .line 91
    new-instance v0, Lsun/nio/ch/AllocatedNativeObject;

    sget v1, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/AllocatedNativeObject;-><init>(IZ)V

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    .line 92
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/ch/IOVecWrapper;->address:J

    .line 93
    return-void
.end method

.method static blacklist get(I)Lsun/nio/ch/IOVecWrapper;
    .registers 4
    .param p0, "size"    # I

    .line 96
    sget-object v0, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/IOVecWrapper;

    .line 97
    .local v0, "wrapper":Lsun/nio/ch/IOVecWrapper;
    if-eqz v0, :cond_14

    iget v1, v0, Lsun/nio/ch/IOVecWrapper;->size:I

    if-ge v1, p0, :cond_14

    .line 99
    iget-object v1, v0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    .line 100
    const/4 v0, 0x0

    .line 102
    :cond_14
    if-nez v0, :cond_2b

    .line 103
    new-instance v1, Lsun/nio/ch/IOVecWrapper;

    invoke-direct {v1, p0}, Lsun/nio/ch/IOVecWrapper;-><init>(I)V

    move-object v0, v1

    .line 104
    new-instance v1, Lsun/nio/ch/IOVecWrapper$Deallocator;

    iget-object v2, v0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-direct {v1, v2}, Lsun/nio/ch/IOVecWrapper$Deallocator;-><init>(Lsun/nio/ch/AllocatedNativeObject;)V

    invoke-static {v0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 105
    sget-object v1, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :cond_2b
    return-object v0
.end method


# virtual methods
.method blacklist clearRefs(I)V
    .registers 4
    .param p1, "i"    # I

    .line 137
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 138
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    aput-object v1, v0, p1

    .line 139
    return-void
.end method

.method blacklist getBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "i"    # I

    .line 121
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist getPosition(I)I
    .registers 3
    .param p1, "i"    # I

    .line 125
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    aget v0, v0, p1

    return v0
.end method

.method blacklist getRemaining(I)I
    .registers 3
    .param p1, "i"    # I

    .line 129
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    aget v0, v0, p1

    return v0
.end method

.method blacklist getShadow(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "i"    # I

    .line 133
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist putBase(IJ)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "base"    # J

    .line 142
    sget v0, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x0

    .line 143
    .local v0, "offset":I
    sget v1, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    .line 144
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putInt(II)V

    goto :goto_16

    .line 146
    :cond_11
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0, p2, p3}, Lsun/nio/ch/AllocatedNativeObject;->putLong(IJ)V

    .line 147
    :goto_16
    return-void
.end method

.method blacklist putLen(IJ)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "len"    # J

    .line 150
    sget v0, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    mul-int/2addr v0, p1

    sget v1, Lsun/nio/ch/IOVecWrapper;->LEN_OFFSET:I

    add-int/2addr v0, v1

    .line 151
    .local v0, "offset":I
    sget v1, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 152
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putInt(II)V

    goto :goto_17

    .line 154
    :cond_12
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0, p2, p3}, Lsun/nio/ch/AllocatedNativeObject;->putLong(IJ)V

    .line 155
    :goto_17
    return-void
.end method

.method blacklist setBuffer(ILjava/nio/ByteBuffer;II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "pos"    # I
    .param p4, "rem"    # I

    .line 111
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    aput-object p2, v0, p1

    .line 112
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    aput p3, v0, p1

    .line 113
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    aput p4, v0, p1

    .line 114
    return-void
.end method

.method blacklist setShadow(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .line 117
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    aput-object p2, v0, p1

    .line 118
    return-void
.end method
