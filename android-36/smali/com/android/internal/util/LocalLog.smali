.class public Lcom/android/internal/util/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# instance fields
.field private final blacklist mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxLines:I

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/LocalLog;->mMaxLines:I

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "header"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_e

    .line 55
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_e
    if-eqz p2, :cond_16

    .line 58
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 61
    :cond_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 62
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 64
    .end local v1    # "i":I
    :cond_2d
    if-eqz p2, :cond_32

    .line 65
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 67
    :cond_32
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 68
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 74
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v2

    .line 75
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    :try_start_8
    iget-object v4, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_23

    .line 76
    iget-object v4, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x20900000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 78
    .end local v3    # "i":I
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_28

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 81
    return-void

    .line 78
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public blacklist w(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_18

    .line 46
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    :cond_18
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method
