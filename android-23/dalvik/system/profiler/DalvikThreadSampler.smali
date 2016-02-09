.class Ldalvik/system/profiler/DalvikThreadSampler;
.super Ljava/lang/Object;
.source "DalvikThreadSampler.java"

# interfaces
.implements Ldalvik/system/profiler/ThreadSampler;


# instance fields
.field private depth:I

.field private mutableStackTraceElements:[[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 40
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    #@3
    iget v2, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    #@5
    aget-object v1, v1, v2

    #@7
    invoke-static {p1, v1}, Ldalvik/system/VMStack;->fillStackTraceElements(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)I

    #@a
    move-result v0

    #@b
    .line 41
    .local v0, "count":I
    if-nez v0, :cond_0

    #@d
    .line 42
    const/4 v1, 0x0

    #@e
    return-object v1

    #@f
    .line 44
    :cond_0
    iget v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 45
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    #@15
    iget v2, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    #@17
    aget-object v1, v1, v2

    #@19
    .line 46
    iget-object v2, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    #@1b
    aget-object v2, v2, v0

    #@1d
    .line 45
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@20
    .line 49
    :cond_1
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    #@22
    aget-object v1, v1, v0

    #@24
    return-object v1
.end method

.method public setDepth(I)V
    .locals 3
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 32
    iput p1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->depth:I

    #@2
    .line 33
    add-int/lit8 v1, p1, 0x1

    #@4
    new-array v1, v1, [[Ljava/lang/StackTraceElement;

    #@6
    iput-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    #@8
    .line 34
    const/4 v0, 0x1

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 35
    iget-object v1, p0, Ldalvik/system/profiler/DalvikThreadSampler;->mutableStackTraceElements:[[Ljava/lang/StackTraceElement;

    #@10
    new-array v2, v0, [Ljava/lang/StackTraceElement;

    #@12
    aput-object v2, v1, v0

    #@14
    .line 34
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 31
    :cond_0
    return-void
.end method
