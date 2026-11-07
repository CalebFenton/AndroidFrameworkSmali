.class public abstract Lcom/android/org/conscrypt/AllocatedBuffer;
.super Ljava/lang/Object;
.source "AllocatedBuffer.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/AllocatedBuffer;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 73
    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/android/org/conscrypt/AllocatedBuffer$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AllocatedBuffer$1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist nioBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract blacklist release()Lcom/android/org/conscrypt/AllocatedBuffer;
.end method

.method public blacklist retain()Lcom/android/org/conscrypt/AllocatedBuffer;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    return-object p0
.end method
