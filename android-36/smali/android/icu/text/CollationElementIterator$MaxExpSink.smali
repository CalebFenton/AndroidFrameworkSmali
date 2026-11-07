.class final Landroid/icu/text/CollationElementIterator$MaxExpSink;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"

# interfaces
.implements Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CollationElementIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaxExpSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 570
    const-class v0, Landroid/icu/text/CollationElementIterator;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 571
    .local p1, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    .line 573
    return-void
.end method


# virtual methods
.method public blacklist handleCE(J)V
    .registers 3
    .param p1, "ce"    # J

    .line 577
    return-void
.end method

.method public blacklist handleExpansion([JII)V
    .registers 15
    .param p1, "ces"    # [J
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 581
    const/4 v0, 0x1

    if-gt p3, v0, :cond_4

    .line 583
    return-void

    .line 585
    :cond_4
    const/4 v1, 0x0

    .line 586
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, p3, :cond_19

    .line 587
    add-int v3, p2, v2

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Landroid/icu/text/CollationElementIterator;->-$$Nest$smceNeedsTwoParts(J)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x2

    goto :goto_15

    :cond_14
    move v3, v0

    :goto_15
    add-int/2addr v1, v3

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 590
    .end local v2    # "i":I
    :cond_19
    add-int v2, p2, p3

    sub-int/2addr v2, v0

    aget-wide v2, p1, v2

    .line 591
    .local v2, "ce":J
    const/16 v0, 0x20

    ushr-long v4, v2, v0

    .line 592
    .local v4, "p":J
    long-to-int v0, v2

    .line 593
    .local v0, "lower32":I
    invoke-static {v4, v5, v0}, Landroid/icu/text/CollationElementIterator;->-$$Nest$smgetSecondHalf(JI)I

    move-result v6

    .line 594
    .local v6, "lastHalf":I
    if-nez v6, :cond_2e

    .line 595
    invoke-static {v4, v5, v0}, Landroid/icu/text/CollationElementIterator;->-$$Nest$smgetFirstHalf(JI)I

    move-result v6

    .line 596
    goto :goto_30

    .line 598
    :cond_2e
    or-int/lit16 v6, v6, 0xc0

    .line 600
    :goto_30
    iget-object v7, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 601
    .local v7, "oldCount":Ljava/lang/Integer;
    if-eqz v7, :cond_44

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v1, v8, :cond_51

    .line 602
    :cond_44
    iget-object v8, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_51
    return-void
.end method
