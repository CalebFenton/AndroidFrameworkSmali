.class Lcom/android/org/conscrypt/BufferAllocator$1;
.super Lcom/android/org/conscrypt/BufferAllocator;
.source "BufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/org/conscrypt/BufferAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;
    .registers 3
    .param p1, "capacity"    # I

    .line 31
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method
