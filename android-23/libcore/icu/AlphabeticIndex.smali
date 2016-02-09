.class public final Llibcore/icu/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/AlphabeticIndex$ImmutableIndex;
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method static synthetic -wrap0(J)V
    .locals 0
    .param p0, "peer"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Llibcore/icu/AlphabeticIndex;->destroy(J)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Llibcore/icu/AlphabeticIndex;->create(Ljava/lang/String;)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@d
    .line 80
    return-void
.end method

.method private static native addLabelRange(JII)V
.end method

.method private static native addLabels(JLjava/lang/String;)V
.end method

.method private static native buildImmutableIndex(J)J
.end method

.method private static native create(Ljava/lang/String;)J
.end method

.method private static native destroy(J)V
.end method

.method private static native getBucketCount(J)I
.end method

.method private static native getBucketIndex(JLjava/lang/String;)I
.end method

.method private static native getBucketLabel(JI)Ljava/lang/String;
.end method

.method private static native getMaxLabelCount(J)I
.end method

.method private static native setMaxLabelCount(JI)V
.end method


# virtual methods
.method public declared-synchronized addLabelRange(II)Llibcore/icu/AlphabeticIndex;
    .locals 2
    .param p1, "codePointStart"    # I
    .param p2, "codePointEnd"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 127
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-static {v0, v1, p1, p2}, Llibcore/icu/AlphabeticIndex;->addLabelRange(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 128
    return-object p0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 118
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-static {v0, v1, v2}, Llibcore/icu/AlphabeticIndex;->addLabels(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 119
    return-object p0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

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
    .line 86
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->destroy(J)V

    #@6
    .line 87
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 89
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d
    monitor-exit p0

    #@e
    .line 84
    return-void

    #@f
    .line 88
    :catchall_0
    move-exception v0

    #@10
    .line 89
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@13
    .line 88
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

.method public declared-synchronized getBucketCount()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 135
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->getBucketCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized getBucketIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 144
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex;->getBucketIndex(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized getBucketLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 151
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex;->getBucketLabel(JI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized getImmutableIndex()Llibcore/icu/AlphabeticIndex$ImmutableIndex;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 158
    :try_start_0
    new-instance v0, Llibcore/icu/AlphabeticIndex$ImmutableIndex;

    #@3
    iget-wide v2, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@5
    invoke-static {v2, v3}, Llibcore/icu/AlphabeticIndex;->buildImmutableIndex(J)J

    #@8
    move-result-wide v2

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, v2, v3, v1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;-><init>(JLlibcore/icu/AlphabeticIndex$ImmutableIndex;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized getMaxLabelCount()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 97
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-static {v0, v1}, Llibcore/icu/AlphabeticIndex;->getMaxLabelCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized setMaxLabelCount(I)Llibcore/icu/AlphabeticIndex;
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/AlphabeticIndex;->peer:J

    #@3
    invoke-static {v0, v1, p1}, Llibcore/icu/AlphabeticIndex;->setMaxLabelCount(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 106
    return-object p0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
