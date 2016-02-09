.class Ldalvik/system/profiler/PortableThreadSampler;
.super Ljava/lang/Object;
.source "PortableThreadSampler.java"

# interfaces
.implements Ldalvik/system/profiler/ThreadSampler;


# instance fields
.field private depth:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
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
    .line 34
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@4
    move-result-object v0

    #@5
    .line 35
    .local v0, "stackFrames":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    #@6
    if-nez v1, :cond_0

    #@8
    .line 36
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 38
    :cond_0
    array-length v1, v0

    #@b
    iget v2, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    #@d
    if-le v1, v2, :cond_1

    #@f
    .line 39
    iget v1, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    #@11
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .end local v0    # "stackFrames":[Ljava/lang/StackTraceElement;
    check-cast v0, [Ljava/lang/StackTraceElement;

    #@17
    .line 41
    .restart local v0    # "stackFrames":[Ljava/lang/StackTraceElement;
    :cond_1
    return-object v0
.end method

.method public setDepth(I)V
    .locals 0
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 30
    iput p1, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    #@2
    .line 29
    return-void
.end method
