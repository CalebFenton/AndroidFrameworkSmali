.class public Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "TemporaryBuffer.java"


# static fields
.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    #@3
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    #@0
    .prologue
    .line 28
    const-class v2, Landroid/graphics/TemporaryBuffer;

    #@2
    monitor-enter v2

    #@3
    .line 29
    :try_start_0
    sget-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    #@5
    .line 30
    .local v0, "buf":[C
    const/4 v1, 0x0

    #@6
    sput-object v1, Landroid/graphics/TemporaryBuffer;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v2

    #@9
    .line 33
    if-eqz v0, :cond_0

    #@b
    array-length v1, v0

    #@c
    if-ge v1, p0, :cond_1

    #@e
    .line 34
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    #@11
    move-result-object v0

    #@12
    .line 37
    :cond_1
    return-object v0

    #@13
    .line 28
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method

.method public static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    #@0
    .prologue
    .line 41
    array-length v0, p0

    #@1
    const/16 v1, 0x3e8

    #@3
    if-le v0, v1, :cond_0

    #@5
    return-void

    #@6
    .line 43
    :cond_0
    const-class v0, Landroid/graphics/TemporaryBuffer;

    #@8
    monitor-enter v0

    #@9
    .line 44
    :try_start_0
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v0

    #@c
    .line 40
    return-void

    #@d
    .line 43
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v0

    #@f
    throw v1
.end method
