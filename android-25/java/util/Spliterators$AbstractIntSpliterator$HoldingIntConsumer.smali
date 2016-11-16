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
.field value:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1408
    iput p1, p0, Ljava/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;->value:I

    #@2
    .line 1407
    return-void
.end method
