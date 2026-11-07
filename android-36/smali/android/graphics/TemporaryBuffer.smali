.class public Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "TemporaryBuffer.java"


# static fields
.field private static greylist-max-o sTemp:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist obtain(I)[C
    .registers 4
    .param p0, "len"    # I

    .line 32
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    .line 33
    :try_start_3
    sget-object v1, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 34
    .local v1, "buf":[C
    const/4 v2, 0x0

    sput-object v2, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 35
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 37
    if-eqz v1, :cond_e

    array-length v0, v1

    if-ge v0, p0, :cond_12

    .line 38
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 41
    :cond_12
    return-object v1

    .line 35
    .end local v1    # "buf":[C
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static greylist recycle([C)V
    .registers 3
    .param p0, "temp"    # [C

    .line 46
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    return-void

    .line 48
    :cond_6
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    .line 49
    :try_start_9
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 50
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method
