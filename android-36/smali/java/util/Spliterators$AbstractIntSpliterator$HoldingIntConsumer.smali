.class final Ljava/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$AbstractIntSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingIntConsumer"
.end annotation


# instance fields
.field greylist-max-o value:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 2
    .param p1, "value"    # I

    .line 1538
    iput p1, p0, Ljava/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;->value:I

    .line 1539
    return-void
.end method
