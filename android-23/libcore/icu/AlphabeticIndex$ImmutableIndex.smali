.class public final Llibcore/icu/AlphabeticIndex$ImmutableIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableIndex"
.end annotation


# instance fields
.field private peer:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "peer"    # J

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-wide p1, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    #@5
    .line 34
    return-void
.end method

.method synthetic constructor <init>(JLlibcore/icu/AlphabeticIndex$ImmutableIndex;)V
    .locals 1
    .param p1, "peer"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;-><init>(J)V

    #@3
    return-void
.end method

.method private static native getBucketCount(J)I
.end method

.method private static native getBucketIndex(JLjava/lang/String;)I
.end method

.method private static native getBucketLabel(JI)Ljava/lang/String;
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 40
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    #@3
    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->-wrap0(J)V

    #@6
    .line 41
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 43
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d
    monitor-exit p0

    #@e
    .line 38
    return-void

    #@f
    .line 42
    :catchall_0
    move-exception v0

    #@10
    .line 43
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@13
    .line 42
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@14
    :catchall_1
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public getBucketCount()I
    .locals 2

    #@0
    .prologue
    .line 51
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketCount(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketIndex(JLjava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->peer:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketLabel(JI)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
