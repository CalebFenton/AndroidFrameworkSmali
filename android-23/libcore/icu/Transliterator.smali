.class public final Llibcore/icu/Transliterator;
.super Ljava/lang/Object;
.source "Transliterator.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    invoke-static {p1}, Llibcore/icu/Transliterator;->create(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Llibcore/icu/Transliterator;->peer:J

    #@9
    .line 28
    return-void
.end method

.method private static native create(Ljava/lang/String;)J
.end method

.method private static native destroy(J)V
.end method

.method public static native getAvailableIDs()[Ljava/lang/String;
.end method

.method private static native transliterate(JLjava/lang/String;)Ljava/lang/String;
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
    .line 34
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/Transliterator;->peer:J

    #@3
    invoke-static {v0, v1}, Llibcore/icu/Transliterator;->destroy(J)V

    #@6
    .line 35
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Llibcore/icu/Transliterator;->peer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 37
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d
    monitor-exit p0

    #@e
    .line 32
    return-void

    #@f
    .line 36
    :catchall_0
    move-exception v0

    #@10
    .line 37
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@13
    .line 36
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

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    iget-wide v0, p0, Llibcore/icu/Transliterator;->peer:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/Transliterator;->transliterate(JLjava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
