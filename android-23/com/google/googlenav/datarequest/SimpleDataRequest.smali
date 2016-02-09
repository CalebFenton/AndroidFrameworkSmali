.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "SimpleDataRequest.java"


# instance fields
.field private final data:[B

.field private final foreground:Z

.field private final immediate:Z

.field private received:Z

.field private final requestType:I

.field private sent:Z

.field private final waitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZ)V
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "data"    # [B
    .param p3, "immediate"    # Z
    .param p4, "foreground"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    .line 37
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZLjava/lang/Object;)V

    #@9
    .line 38
    return-void
.end method

.method public constructor <init>(I[BZZLjava/lang/Object;)V
    .locals 0
    .param p1, "requestType"    # I
    .param p2, "data"    # [B
    .param p3, "immediate"    # Z
    .param p4, "foreground"    # Z
    .param p5, "waitObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    #@3
    .line 52
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->requestType:I

    #@5
    .line 53
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->data:[B

    #@7
    .line 54
    iput-boolean p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    #@9
    .line 55
    iput-boolean p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    #@b
    .line 56
    iput-object p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    #@d
    .line 57
    return-void
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->requestType:I

    #@2
    return v0
.end method

.method public isForeground()Z
    .locals 1

    #@0
    .prologue
    .line 68
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->foreground:Z

    #@2
    return v0
.end method

.method public isImmediate()Z
    .locals 1

    #@0
    .prologue
    .line 64
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->immediate:Z

    #@2
    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 3
    .param p1, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 82
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->received:Z

    #@3
    .line 83
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 89
    :goto_0
    return v2

    #@8
    .line 84
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    .line 85
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@10
    .line 86
    monitor-exit v1

    #@11
    goto :goto_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    throw v0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->data:[B

    #@2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    #@5
    .line 73
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->sent:Z

    #@8
    .line 74
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 79
    :goto_0
    return-void

    #@d
    .line 75
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    #@f
    monitor-enter v1

    #@10
    .line 76
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;->waitObject:Ljava/lang/Object;

    #@12
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    #@15
    .line 77
    monitor-exit v1

    #@16
    goto :goto_0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    throw v0
.end method
