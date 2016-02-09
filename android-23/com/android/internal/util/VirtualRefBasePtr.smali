.class public final Lcom/android/internal/util/VirtualRefBasePtr;
.super Ljava/lang/Object;
.source "VirtualRefBasePtr.java"


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "ptr"    # J

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput-wide p1, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    #@5
    .line 28
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    #@7
    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nIncStrong(J)V

    #@a
    .line 26
    return-void
.end method

.method private static native nDecStrong(J)V
.end method

.method private static native nIncStrong(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 47
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 43
    return-void

    #@7
    .line 46
    :catchall_0
    move-exception v0

    #@8
    .line 47
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 46
    throw v0
.end method

.method public get()J
    .locals 2

    #@0
    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    #@2
    return-wide v0
.end method

.method public release()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 36
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 37
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    #@a
    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nDecStrong(J)V

    #@d
    .line 38
    iput-wide v2, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    #@f
    .line 35
    :cond_0
    return-void
.end method
