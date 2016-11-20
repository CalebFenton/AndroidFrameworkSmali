.class Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"

# interfaces
.implements Ldalvik/system/profiler/SamplingProfiler$ThreadSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadGroupThreadSet"
.end annotation


# instance fields
.field private lastThread:I

.field private final threadGroup:Ljava/lang/ThreadGroup;

.field private threads:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;)V
    .locals 2
    .param p1, "threadGroup"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 235
    if-nez p1, :cond_0

    #@5
    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "threadGroup == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 238
    :cond_0
    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    #@10
    .line 239
    invoke-direct {p0}, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->resize()V

    #@13
    .line 234
    return-void
.end method

.method private resize()V
    .locals 2

    #@0
    .prologue
    .line 243
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I

    #@5
    move-result v0

    #@6
    .line 248
    .local v0, "count":I
    mul-int/lit8 v1, v0, 0x2

    #@8
    new-array v1, v1, [Ljava/lang/Thread;

    #@a
    iput-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    #@c
    .line 249
    const/4 v1, 0x0

    #@d
    iput v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    #@f
    .line 242
    return-void
.end method


# virtual methods
.method public threads()[Ljava/lang/Thread;
    .locals 4

    #@0
    .prologue
    .line 255
    :goto_0
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threadGroup:Ljava/lang/ThreadGroup;

    #@2
    iget-object v2, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    #@7
    move-result v0

    #@8
    .line 256
    .local v0, "threadCount":I
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    #@a
    array-length v1, v1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 257
    invoke-direct {p0}, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->resize()V

    #@10
    goto :goto_0

    #@11
    .line 262
    :cond_0
    iget v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 264
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    #@17
    iget v2, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@1d
    .line 266
    :cond_1
    iput v0, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->lastThread:I

    #@1f
    .line 267
    iget-object v1, p0, Ldalvik/system/profiler/SamplingProfiler$ThreadGroupThreadSet;->threads:[Ljava/lang/Thread;

    #@21
    return-object v1
.end method
