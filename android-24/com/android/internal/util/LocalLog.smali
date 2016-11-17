.class public Lcom/android/internal/util/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# instance fields
.field private final mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLines:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x14

    #@2
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 32
    iput v1, p0, Lcom/android/internal/util/LocalLog;->mMaxLines:I

    #@7
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@e
    .line 36
    iput-object p1, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    #@10
    .line 35
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 50
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@3
    monitor-enter v2

    #@4
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    if-gtz v1, :cond_0

    #@c
    monitor-exit v2

    #@d
    .line 52
    return v3

    #@e
    .line 54
    :cond_0
    if-eqz p2, :cond_1

    #@10
    .line 55
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 57
    :cond_1
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v1

    #@1a
    if-ge v0, v1, :cond_3

    #@1c
    .line 58
    if-eqz p3, :cond_2

    #@1e
    .line 59
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Ljava/lang/String;

    #@29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 57
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 63
    :cond_3
    const/4 v1, 0x1

    #@30
    monitor-exit v2

    #@31
    return v1

    #@32
    .line 50
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1
.end method

.method public w(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    #@5
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 42
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    const/16 v2, 0x14

    #@10
    if-lt v0, v2, :cond_0

    #@12
    .line 43
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@18
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 39
    return-void

    #@1f
    .line 40
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method
