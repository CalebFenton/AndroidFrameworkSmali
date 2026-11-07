.class public abstract Lcom/android/org/conscrypt/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# static fields
.field private static final blacklist UNPOOLED:Lcom/android/org/conscrypt/BufferAllocator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/android/org/conscrypt/BufferAllocator$1;

    invoke-direct {v0}, Lcom/android/org/conscrypt/BufferAllocator$1;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/BufferAllocator;->UNPOOLED:Lcom/android/org/conscrypt/BufferAllocator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist unpooled()Lcom/android/org/conscrypt/BufferAllocator;
    .registers 1

    .line 39
    sget-object v0, Lcom/android/org/conscrypt/BufferAllocator;->UNPOOLED:Lcom/android/org/conscrypt/BufferAllocator;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;
.end method
