.class Lcom/android/org/conscrypt/AllocatedBuffer$1;
.super Lcom/android/org/conscrypt/AllocatedBuffer;
.source "AllocatedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/org/conscrypt/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/android/org/conscrypt/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist nioBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/org/conscrypt/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist release()Lcom/android/org/conscrypt/AllocatedBuffer;
    .registers 1

    .line 85
    return-object p0
.end method
