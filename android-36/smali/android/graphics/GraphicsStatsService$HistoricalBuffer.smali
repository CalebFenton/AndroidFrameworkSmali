.class final Landroid/graphics/GraphicsStatsService$HistoricalBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoricalBuffer"
.end annotation


# instance fields
.field final blacklist mData:[B

.field final blacklist mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

.field final synthetic blacklist this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V
    .registers 6
    .param p2, "active"    # Landroid/graphics/GraphicsStatsService$ActiveBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-static {v0}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    .line 562
    iget-object v0, p2, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    .line 563
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mEndTime:J

    .line 564
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->readBytes([BI)V

    .line 565
    return-void
.end method
