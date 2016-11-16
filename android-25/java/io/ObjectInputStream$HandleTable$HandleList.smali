.class Ljava/io/ObjectInputStream$HandleTable$HandleList;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream$HandleTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleList"
.end annotation


# instance fields
.field private list:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 3489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3486
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@8
    .line 3487
    const/4 v0, 0x0

    #@9
    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    #@b
    .line 3489
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "handle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3493
    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    #@3
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@5
    array-length v2, v2

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 3494
    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@a
    array-length v1, v1

    #@b
    shl-int/lit8 v1, v1, 0x1

    #@d
    new-array v0, v1, [I

    #@f
    .line 3495
    .local v0, "newList":[I
    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@11
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@13
    array-length v2, v2

    #@14
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@17
    .line 3496
    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@19
    .line 3498
    .end local v0    # "newList":[I
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@1b
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    #@1d
    add-int/lit8 v3, v2, 0x1

    #@1f
    iput v3, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    #@21
    aput p1, v1, v2

    #@23
    .line 3492
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 3502
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 3503
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 3505
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    #@c
    aget v0, v0, p1

    #@e
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 3509
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    #@2
    return v0
.end method
