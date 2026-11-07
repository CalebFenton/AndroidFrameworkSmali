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
.field greylist-max-o value:J


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 3
    .param p1, "value"    # J

    .line 1650
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    .line 1651
    return-void
.end method
