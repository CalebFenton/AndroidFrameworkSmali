.class public final Lcom/android/internal/util/VirtualRefBasePtr;
.super Ljava/lang/Object;
.source "VirtualRefBasePtr.java"


# instance fields
.field private greylist-max-o mNativePtr:J


# direct methods
.method public constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "ptr"    # J

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 31
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nIncStrong(J)V

    .line 32
    return-void
.end method

.method private static native greylist-max-o nDecStrong(J)V
.end method

.method private static native greylist-max-o nIncStrong(J)V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    nop

    .line 60
    return-void

    .line 58
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    throw v0
.end method

.method public greylist-max-o get()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    return-wide v0
.end method

.method public greylist-max-o release()V
    .registers 5

    .line 47
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 48
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nDecStrong(J)V

    .line 49
    iput-wide v2, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 51
    :cond_f
    return-void
.end method
