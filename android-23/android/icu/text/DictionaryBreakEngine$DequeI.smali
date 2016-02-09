.class Landroid/icu/text/DictionaryBreakEngine$DequeI;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DequeI"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private data:[I

.field private firstIdx:I

.field private lastIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    #@b
    .line 90
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 91
    const/16 v0, 0x32

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@a
    .line 92
    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@c
    .line 93
    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@e
    .line 90
    return-void
.end method

.method private grow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 104
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@3
    array-length v1, v1

    #@4
    mul-int/lit8 v1, v1, 0x2

    #@6
    new-array v0, v1, [I

    #@8
    .line 105
    .local v0, "newData":[I
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@a
    iget-object v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@c
    array-length v2, v2

    #@d
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@10
    .line 106
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@12
    .line 103
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2
    .param p1, "v"    # I

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@2
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 145
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@8
    aget v1, v1, v0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 146
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 149
    :cond_1
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 100
    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method offer(I)V
    .locals 2
    .param p1, "v"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 112
    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    if-nez v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    .line 113
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@14
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@1a
    aput p1, v0, v1

    #@1c
    .line 109
    return-void
.end method

.method peek()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 129
    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    .line 130
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@16
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    aget v0, v0, v1

    #@1c
    return v0
.end method

.method peekLast()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 134
    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    .line 135
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@16
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@18
    aget v0, v0, v1

    #@1a
    return v0
.end method

.method pollLast()I
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 139
    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    .line 140
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@16
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@18
    add-int/lit8 v2, v1, 0x1

    #@1a
    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@1c
    aget v0, v0, v1

    #@1e
    return v0
.end method

.method pop()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 124
    sget-boolean v1, Landroid/icu/text/DictionaryBreakEngine$DequeI;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    .line 125
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@16
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@1c
    aget v0, v0, v1

    #@1e
    return v0
.end method

.method push(I)V
    .locals 3
    .param p1, "v"    # I

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@2
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 118
    invoke-direct {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->grow()V

    #@a
    .line 120
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    #@c
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@12
    aput p1, v0, v1

    #@14
    .line 116
    return-void
.end method

.method size()I
    .locals 2

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    #@2
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method
