.class public Landroid/support/v4/os/AsyncTaskCompat;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;[TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    if-nez p0, :cond_0

    #@2
    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "task can not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 43
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d
    const/16 v1, 0xb

    #@f
    if-lt v0, v1, :cond_1

    #@11
    .line 45
    invoke-static {p0, p1}, Landroid/support/v4/os/AsyncTaskCompatHoneycomb;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    #@14
    .line 51
    :goto_0
    return-object p0

    #@15
    .line 48
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@18
    goto :goto_0
.end method
