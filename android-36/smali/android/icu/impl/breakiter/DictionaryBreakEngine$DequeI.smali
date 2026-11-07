.class public Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DequeI"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist data:[I

.field private blacklist firstIdx:I

.field private blacklist lastIdx:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    const-class v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    .line 100
    iput v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    return-void
.end method

.method private blacklist grow()V
    .registers 5

    .line 118
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 119
    .local v0, "newData":[I
    iget-object v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget-object v2, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 104
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    .line 105
    .local v0, "result":Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    iget-object v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    .line 106
    return-object v0
.end method

.method blacklist contains(I)Z
    .registers 4
    .param p1, "v"    # I

    .line 158
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    .local v0, "i":I
    :goto_2
    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    if-ge v0, v1, :cond_11

    .line 159
    iget-object v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 160
    const/4 v1, 0x1

    return v1

    .line 158
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist elementAt(I)I
    .registers 4
    .param p1, "i"    # I

    .line 167
    nop

    .line 168
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 114
    invoke-virtual {p0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist offer(I)V
    .registers 4
    .param p1, "v"    # I

    .line 126
    nop

    .line 127
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    aput p1, v0, v1

    .line 128
    return-void
.end method

.method public blacklist peek()I
    .registers 3

    .line 143
    nop

    .line 144
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method blacklist peekLast()I
    .registers 3

    .line 148
    nop

    .line 149
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method blacklist pollLast()I
    .registers 4

    .line 153
    nop

    .line 154
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method public blacklist pop()I
    .registers 3

    .line 138
    nop

    .line 139
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    aget v0, v0, v1

    return v0
.end method

.method public blacklist push(I)V
    .registers 5
    .param p1, "v"    # I

    .line 131
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget-object v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 132
    invoke-direct {p0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->grow()V

    .line 134
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    aput p1, v0, v1

    .line 135
    return-void
.end method

.method public blacklist removeAllElements()V
    .registers 2

    .line 172
    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    iput v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    .line 173
    return-void
.end method

.method public blacklist size()I
    .registers 3

    .line 110
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->lastIdx:I

    sub-int/2addr v0, v1

    return v0
.end method
