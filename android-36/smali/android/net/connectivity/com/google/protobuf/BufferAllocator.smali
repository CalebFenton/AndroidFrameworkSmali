.class abstract Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist UNPOOLED:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/BufferAllocator$1;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/BufferAllocator$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;->UNPOOLED:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist unpooled()Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
    .registers 1

    .line 57
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;->UNPOOLED:Landroid/net/connectivity/com/google/protobuf/BufferAllocator;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist allocateDirectBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
.end method

.method public abstract blacklist allocateHeapBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
.end method
