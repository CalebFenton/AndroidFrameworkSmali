.class public Lcom/android/internal/os/BinderfsStatsReader;
.super Ljava/lang/Object;
.source "BinderfsStatsReader.java"


# instance fields
.field private final blacklist mPath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "/dev/binderfs/binder_logs/stats"

    iput-object v0, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist handleFreeAsyncSpace(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p2, "biConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    :try_start_0
    new-instance v0, Lcom/android/internal/util/ProcFileReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_93
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_93

    .line 68
    .local v0, "mReader":Lcom/android/internal/util/ProcFileReader;
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "proc"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 71
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 72
    goto :goto_c

    .line 76
    :cond_23
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v1

    .line 77
    .local v1, "pid":I
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 81
    goto :goto_c

    .line 85
    :cond_35
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 86
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 88
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "free"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 90
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 91
    goto :goto_c

    .line 93
    :cond_51
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "async"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 94
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 95
    goto :goto_c

    .line 97
    :cond_61
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "space"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 98
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 99
    goto :goto_c

    .line 101
    :cond_72
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 102
    .local v2, "free":I
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_c .. :try_end_84} :catchall_89

    .line 104
    .end local v1    # "pid":I
    .end local v2    # "free":I
    goto :goto_c

    .line 105
    :cond_85
    :try_start_85
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_93
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_88} :catch_93

    .line 107
    .end local v0    # "mReader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_97

    .line 67
    .restart local v0    # "mReader":Lcom/android/internal/util/ProcFileReader;
    :catchall_89
    move-exception v1

    :try_start_8a
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v2

    :try_start_8f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/os/BinderfsStatsReader;
    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .end local p2    # "biConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local p3    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    :goto_92
    throw v1
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_93
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_93} :catch_93

    .line 105
    .end local v0    # "mReader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "this":Lcom/android/internal/os/BinderfsStatsReader;
    .restart local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .restart local p2    # "biConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local p3    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    :catch_93
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_97
    return-void
.end method
