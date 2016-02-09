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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/CollationElementIterator$MaxExpSink;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->-assertionsDisabled:Z

    #@b
    .line 610
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 611
    .local p1, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 612
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    #@5
    .line 611
    return-void
.end method


# virtual methods
.method public handleCE(J)V
    .locals 0
    .param p1, "ce"    # J

    #@0
    .prologue
    .line 616
    return-void
.end method

.method public handleExpansion([JII)V
    .locals 12
    .param p1, "ces"    # [J
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 621
    const/4 v7, 0x1

    #@1
    if-gt p3, v7, :cond_0

    #@3
    .line 623
    return-void

    #@4
    .line 625
    :cond_0
    const/4 v2, 0x0

    #@5
    .line 626
    .local v2, "count":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_2

    #@8
    .line 627
    add-int v7, p2, v3

    #@a
    aget-wide v10, p1, v7

    #@c
    invoke-static {v10, v11}, Landroid/icu/text/CollationElementIterator;->-wrap0(J)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_1

    #@12
    const/4 v7, 0x2

    #@13
    :goto_1
    add-int/2addr v2, v7

    #@14
    .line 626
    add-int/lit8 v3, v3, 0x1

    #@16
    goto :goto_0

    #@17
    .line 627
    :cond_1
    const/4 v7, 0x1

    #@18
    goto :goto_1

    #@19
    .line 630
    :cond_2
    add-int v7, p2, p3

    #@1b
    add-int/lit8 v7, v7, -0x1

    #@1d
    aget-wide v0, p1, v7

    #@1f
    .line 631
    .local v0, "ce":J
    const/16 v7, 0x20

    #@21
    ushr-long v8, v0, v7

    #@23
    .line 632
    .local v8, "p":J
    long-to-int v5, v0

    #@24
    .line 633
    .local v5, "lower32":I
    invoke-static {v8, v9, v5}, Landroid/icu/text/CollationElementIterator;->-wrap2(JI)I

    #@27
    move-result v4

    #@28
    .line 634
    .local v4, "lastHalf":I
    if-nez v4, :cond_4

    #@2a
    .line 635
    invoke-static {v8, v9, v5}, Landroid/icu/text/CollationElementIterator;->-wrap1(JI)I

    #@2d
    move-result v4

    #@2e
    .line 636
    sget-boolean v7, Landroid/icu/text/CollationElementIterator$MaxExpSink;->-assertionsDisabled:Z

    #@30
    if-nez v7, :cond_5

    #@32
    if-eqz v4, :cond_3

    #@34
    const/4 v7, 0x1

    #@35
    :goto_2
    if-nez v7, :cond_5

    #@37
    new-instance v7, Ljava/lang/AssertionError;

    #@39
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@3c
    throw v7

    #@3d
    :cond_3
    const/4 v7, 0x0

    #@3e
    goto :goto_2

    #@3f
    .line 638
    :cond_4
    or-int/lit16 v4, v4, 0xc0

    #@41
    .line 640
    :cond_5
    iget-object v7, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    #@43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v10

    #@47
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Ljava/lang/Integer;

    #@4d
    .line 641
    .local v6, "oldCount":Ljava/lang/Integer;
    if-eqz v6, :cond_6

    #@4f
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v7

    #@53
    if-le v2, v7, :cond_7

    #@55
    .line 642
    :cond_6
    iget-object v7, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    #@57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v10

    #@5b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v11

    #@5f
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 620
    :cond_7
    return-void
.end method
