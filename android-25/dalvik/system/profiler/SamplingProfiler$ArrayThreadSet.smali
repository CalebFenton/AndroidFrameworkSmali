.class Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;
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
    name = "ArrayThreadSet"
.end annotation


# instance fields
.field private final threads:[Ljava/lang/Thread;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Thread;)V
    .locals 2
    .param p1, "threads"    # [Ljava/lang/Thread;

    #@0
    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 206
    if-nez p1, :cond_0

    #@5
    .line 207
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "threads == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 209
    :cond_0
    iput-object p1, p0, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;->threads:[Ljava/lang/Thread;

    #@10
    .line 205
    return-void
.end method


# virtual methods
.method public threads()[Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Ldalvik/system/profiler/SamplingProfiler$ArrayThreadSet;->threads:[Ljava/lang/Thread;

    #@2
    return-object v0
.end method
