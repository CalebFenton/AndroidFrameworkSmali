.class Ljava/io/ObjectOutputStream$ReplaceTable;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplaceTable"
.end annotation


# instance fields
.field private final htab:Ljava/io/ObjectOutputStream$HandleTable;

.field private reps:[Ljava/lang/Object;


# direct methods
.method constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 2449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2450
    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    #@5
    invoke-direct {v0, p1, p2}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    #@8
    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    #@a
    .line 2451
    new-array v0, p1, [Ljava/lang/Object;

    #@c
    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@e
    .line 2449
    return-void
.end method

.method private grow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2493
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    shl-int/lit8 v1, v1, 0x1

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    new-array v0, v1, [Ljava/lang/Object;

    #@a
    .line 2494
    .local v0, "newReps":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@c
    iget-object v2, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@e
    array-length v2, v2

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 2495
    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@14
    .line 2492
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "rep"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2458
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    #@2
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 2459
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@8
    array-length v1, v1

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 2460
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$ReplaceTable;->grow()V

    #@e
    goto :goto_0

    #@f
    .line 2462
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@11
    aput-object p2, v1, v0

    #@13
    .line 2457
    return-void
.end method

.method clear()V
    .locals 4

    #@0
    .prologue
    .line 2478
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@2
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    #@4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@d
    .line 2479
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    #@f
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    #@12
    .line 2477
    return-void
.end method

.method lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2470
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    #@2
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 2471
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    #@a
    aget-object p1, v1, v0

    #@c
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 2486
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    #@2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
