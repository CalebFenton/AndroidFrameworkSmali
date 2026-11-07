.class public final Ljdk/internal/vm/StackChunk;
.super Ljava/lang/Object;
.source "StackChunk.java"


# instance fields
.field private blacklist argsize:I

.field private blacklist parent:Ljdk/internal/vm/StackChunk;

.field private blacklist size:I

.field private blacklist sp:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist init()V
    .registers 0

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist isEmpty()Z
    .registers 4

    .line 39
    iget v0, p0, Ljdk/internal/vm/StackChunk;->sp:I

    iget v1, p0, Ljdk/internal/vm/StackChunk;->size:I

    iget v2, p0, Ljdk/internal/vm/StackChunk;->argsize:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist parent()Ljdk/internal/vm/StackChunk;
    .registers 2

    .line 38
    iget-object v0, p0, Ljdk/internal/vm/StackChunk;->parent:Ljdk/internal/vm/StackChunk;

    return-object v0
.end method
