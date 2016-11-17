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
.field private static final BASE_OFFSET:I

.field private static final LEN_OFFSET:I

.field private static final SIZE_IOVEC:I

.field static addressSize:I

.field private static final cached:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/IOVecWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final address:J

.field private final buf:[Ljava/nio/ByteBuffer;

.field private final position:[I

.field private final remaining:[I

.field private final shadow:[Ljava/nio/ByteBuffer;

.field private final size:I

.field private final vecArray:Lsun/nio/ch/AllocatedNativeObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    .line 82
    sput-object v0, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    #@7
    .line 158
    invoke-static {}, Lsun/nio/ch/Util;->unsafe()Lsun/misc/Unsafe;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    #@e
    move-result v0

    #@f
    sput v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    #@11
    .line 159
    sget v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    #@13
    sput v0, Lsun/nio/ch/IOVecWrapper;->LEN_OFFSET:I

    #@15
    .line 160
    sget v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    #@17
    mul-int/lit8 v0, v0, 0x2

    #@19
    int-to-short v0, v0

    #@1a
    sput v0, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    #@1c
    .line 44
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    iput p1, p0, Lsun/nio/ch/IOVecWrapper;->size:I

    #@5
    .line 87
    new-array v0, p1, [Ljava/nio/ByteBuffer;

    #@7
    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    #@9
    .line 88
    new-array v0, p1, [I

    #@b
    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    #@d
    .line 89
    new-array v0, p1, [I

    #@f
    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    #@11
    .line 90
    new-array v0, p1, [Ljava/nio/ByteBuffer;

    #@13
    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    #@15
    .line 91
    new-instance v0, Lsun/nio/ch/AllocatedNativeObject;

    #@17
    sget v1, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    #@19
    mul-int/2addr v1, p1

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-direct {v0, v1, v2}, Lsun/nio/ch/AllocatedNativeObject;-><init>(IZ)V

    #@1e
    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@20
    .line 92
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@22
    invoke-virtual {v0}, Lsun/nio/ch/NativeObject;->address()J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Lsun/nio/ch/IOVecWrapper;->address:J

    #@28
    .line 85
    return-void
.end method

.method static get(I)Lsun/nio/ch/IOVecWrapper;
    .locals 3
    .param p0, "size"    # I

    #@0
    .prologue
    .line 96
    sget-object v1, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/nio/ch/IOVecWrapper;

    #@8
    .line 97
    .local v0, "wrapper":Lsun/nio/ch/IOVecWrapper;
    if-eqz v0, :cond_0

    #@a
    iget v1, v0, Lsun/nio/ch/IOVecWrapper;->size:I

    #@c
    if-ge v1, p0, :cond_0

    #@e
    .line 99
    iget-object v1, v0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@10
    invoke-virtual {v1}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    #@13
    .line 100
    const/4 v0, 0x0

    #@14
    .line 102
    .end local v0    # "wrapper":Lsun/nio/ch/IOVecWrapper;
    :cond_0
    if-nez v0, :cond_1

    #@16
    .line 103
    new-instance v0, Lsun/nio/ch/IOVecWrapper;

    #@18
    invoke-direct {v0, p0}, Lsun/nio/ch/IOVecWrapper;-><init>(I)V

    #@1b
    .line 104
    .restart local v0    # "wrapper":Lsun/nio/ch/IOVecWrapper;
    new-instance v1, Lsun/nio/ch/IOVecWrapper$Deallocator;

    #@1d
    iget-object v2, v0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@1f
    invoke-direct {v1, v2}, Lsun/nio/ch/IOVecWrapper$Deallocator;-><init>(Lsun/nio/ch/AllocatedNativeObject;)V

    #@22
    invoke-static {v0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    #@25
    .line 105
    sget-object v1, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@2a
    .line 107
    .end local v0    # "wrapper":Lsun/nio/ch/IOVecWrapper;
    :cond_1
    return-object v0
.end method


# virtual methods
.method clearRefs(I)V
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    #@3
    aput-object v1, v0, p1

    #@5
    .line 138
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    #@7
    aput-object v1, v0, p1

    #@9
    .line 136
    return-void
.end method

.method getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method getPosition(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method getRemaining(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method getShadow(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method putBase(IJ)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "base"    # J

    #@0
    .prologue
    .line 142
    sget v1, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    #@2
    mul-int/2addr v1, p1

    #@3
    add-int/lit8 v0, v1, 0x0

    #@5
    .line 143
    .local v0, "offset":I
    sget v1, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    #@7
    const/4 v2, 0x4

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 144
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@c
    long-to-int v2, p2

    #@d
    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/NativeObject;->putInt(II)V

    #@10
    .line 141
    :goto_0
    return-void

    #@11
    .line 146
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@13
    invoke-virtual {v1, v0, p2, p3}, Lsun/nio/ch/NativeObject;->putLong(IJ)V

    #@16
    goto :goto_0
.end method

.method putLen(IJ)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "len"    # J

    #@0
    .prologue
    .line 150
    sget v1, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    #@2
    mul-int/2addr v1, p1

    #@3
    sget v2, Lsun/nio/ch/IOVecWrapper;->LEN_OFFSET:I

    #@5
    add-int v0, v1, v2

    #@7
    .line 151
    .local v0, "offset":I
    sget v1, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    #@9
    const/4 v2, 0x4

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 152
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@e
    long-to-int v2, p2

    #@f
    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/NativeObject;->putInt(II)V

    #@12
    .line 149
    :goto_0
    return-void

    #@13
    .line 154
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    #@15
    invoke-virtual {v1, v0, p2, p3}, Lsun/nio/ch/NativeObject;->putLong(IJ)V

    #@18
    goto :goto_0
.end method

.method setBuffer(ILjava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "pos"    # I
    .param p4, "rem"    # I

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    #@2
    aput-object p2, v0, p1

    #@4
    .line 112
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    #@6
    aput p3, v0, p1

    #@8
    .line 113
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    #@a
    aput p4, v0, p1

    #@c
    .line 110
    return-void
.end method

.method setShadow(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    #@2
    aput-object p2, v0, p1

    #@4
    .line 116
    return-void
.end method
