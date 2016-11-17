.class final Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$AbstractLongSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingLongConsumer"
.end annotation


# instance fields
.field value:J


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 1518
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    #@2
    .line 1517
    return-void
.end method
