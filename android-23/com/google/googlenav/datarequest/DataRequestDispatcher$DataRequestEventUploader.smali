.class public final Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataRequestEventUploader"
.end annotation


# instance fields
.field private final drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0
    .param p1, "drd"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1772
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;->drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@5
    .line 1773
    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .param p2, "x1"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;

    #@0
    .prologue
    .line 1761
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    #@3
    return-void
.end method


# virtual methods
.method public uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;
    .locals 8
    .param p1, "immediate"    # Z
    .param p2, "waitObject"    # Ljava/lang/Object;
    .param p3, "logBytes"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 1778
    .local v0, "edr":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    if-nez p3, :cond_1

    #@4
    .line 1791
    .end local v0    # "edr":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    :cond_0
    :goto_0
    return-object v7

    #@5
    .line 1778
    .restart local v0    # "edr":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    :cond_1
    array-length v1, p3

    #@6
    const/4 v2, 0x2

    #@7
    if-le v1, v2, :cond_0

    #@9
    .line 1779
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;

    #@b
    .end local v0    # "edr":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    const/16 v1, 0xa

    #@d
    const/4 v4, 0x0

    #@e
    move-object v2, p3

    #@f
    move v3, p1

    #@10
    move-object v5, p2

    #@11
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZLjava/lang/Object;)V

    #@14
    .line 1781
    .local v0, "edr":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@17
    move-result-object v6

    #@18
    .line 1782
    .local v6, "drd":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    if-nez v6, :cond_2

    #@1a
    .line 1787
    return-object v7

    #@1b
    .line 1783
    :cond_2
    invoke-virtual {v6, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@1e
    goto :goto_0
.end method
