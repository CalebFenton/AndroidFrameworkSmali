.class Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "DataRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CookieDataRequest"
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    #@0
    .prologue
    .line 1490
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@2
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .param p2, "x1"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;

    #@0
    .prologue
    .line 1490
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    #@3
    return-void
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    #@0
    .prologue
    const/16 v0, 0xf

    #@2
    .line 1493
    return v0
.end method

.method public isImmediate()Z
    .locals 1

    #@0
    .prologue
    .line 1497
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 4
    .param p1, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1505
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@2
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    #@5
    move-result-wide v2

    #@6
    iput-wide v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    #@8
    .line 1506
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@a
    iget-wide v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    #@c
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->saveCookie(J)V

    #@f
    .line 1507
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 0
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1502
    return-void
.end method
