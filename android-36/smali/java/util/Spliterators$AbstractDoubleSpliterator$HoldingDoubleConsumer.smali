.class final Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$AbstractDoubleSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingDoubleConsumer"
.end annotation


# instance fields
.field greylist-max-o value:D


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 3
    .param p1, "value"    # D

    .line 1762
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    .line 1763
    return-void
.end method
