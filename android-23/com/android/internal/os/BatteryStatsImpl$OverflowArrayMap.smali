.class public abstract Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverflowArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OVERFLOW_NAME:Ljava/lang/String; = "*overflow*"


# instance fields
.field mActiveOverflow:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field mCurOverflow:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    #@0
    .prologue
    .line 1642
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1638
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@c
    .line 1642
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1656
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1657
    const-string/jumbo v0, "*overflow*"

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1658
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@10
    .line 1655
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 1663
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1664
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1665
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@f
    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@11
    if-nez v0, :cond_3

    #@13
    .line 1671
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@15
    const-string/jumbo v1, "*overflow*"

    #@18
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 1672
    const-string/jumbo v0, "BatteryStatsImpl"

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Cleaning up with no active overflow, but have overflow entry "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 1673
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@2f
    const-string/jumbo v3, "*overflow*"

    #@32
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    .line 1672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1674
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@43
    const-string/jumbo v1, "*overflow*"

    #@46
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 1676
    :cond_1
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@4b
    .line 1662
    :cond_2
    :goto_0
    return-void

    #@4c
    .line 1679
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@4e
    if-eqz v0, :cond_4

    #@50
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@52
    const-string/jumbo v1, "*overflow*"

    #@55
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_2

    #@5b
    .line 1680
    :cond_4
    const-string/jumbo v0, "BatteryStatsImpl"

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "Cleaning up with active overflow, but no overflow entry: cur="

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    .line 1681
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@6c
    .line 1680
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    .line 1681
    const-string/jumbo v2, " map="

    #@73
    .line 1680
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    .line 1681
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@79
    const-string/jumbo v3, "*overflow*"

    #@7c
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    .line 1680
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 1650
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@6
    .line 1651
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@8
    .line 1652
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@a
    .line 1649
    return-void
.end method

.method public getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1646
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public abstract instantiateObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public startObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1687
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 1688
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    #@8
    .line 1689
    return-object v1

    #@9
    .line 1694
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 1695
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/util/MutableInt;

    #@15
    .line 1696
    .local v2, "over":Landroid/util/MutableInt;
    if-eqz v2, :cond_2

    #@17
    .line 1698
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@19
    .line 1699
    if-nez v1, :cond_1

    #@1b
    .line 1701
    const-string/jumbo v3, "BatteryStatsImpl"

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "Have active overflow "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    const-string/jumbo v5, " but null overflow"

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1702
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@42
    .line 1703
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@44
    const-string/jumbo v4, "*overflow*"

    #@47
    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 1705
    :cond_1
    iget v3, v2, Landroid/util/MutableInt;->value:I

    #@4c
    add-int/lit8 v3, v3, 0x1

    #@4e
    iput v3, v2, Landroid/util/MutableInt;->value:I

    #@50
    .line 1706
    return-object v1

    #@51
    .line 1712
    .end local v2    # "over":Landroid/util/MutableInt;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@56
    move-result v0

    #@57
    .line 1713
    .local v0, "N":I
    const/16 v3, 0x64

    #@59
    if-lt v0, v3, :cond_5

    #@5b
    .line 1716
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@5d
    .line 1717
    if-nez v1, :cond_3

    #@5f
    .line 1719
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@62
    move-result-object v1

    #@63
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@65
    .line 1720
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@67
    const-string/jumbo v4, "*overflow*"

    #@6a
    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    .line 1722
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@6f
    if-nez v3, :cond_4

    #@71
    .line 1723
    new-instance v3, Landroid/util/ArrayMap;

    #@73
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    #@76
    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@78
    .line 1725
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@7a
    new-instance v4, Landroid/util/MutableInt;

    #@7c
    const/4 v5, 0x1

    #@7d
    invoke-direct {v4, v5}, Landroid/util/MutableInt;-><init>(I)V

    #@80
    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 1726
    return-object v1

    #@84
    .line 1730
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    .line 1731
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@8a
    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 1732
    return-object v1
.end method

.method public stopObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 1736
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 1737
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    #@9
    .line 1738
    return-object v0

    #@a
    .line 1743
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 1744
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/util/MutableInt;

    #@16
    .line 1745
    .local v1, "over":Landroid/util/MutableInt;
    if-eqz v1, :cond_2

    #@18
    .line 1747
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@1a
    .line 1748
    if-eqz v0, :cond_2

    #@1c
    .line 1749
    iget v2, v1, Landroid/util/MutableInt;->value:I

    #@1e
    add-int/lit8 v2, v2, -0x1

    #@20
    iput v2, v1, Landroid/util/MutableInt;->value:I

    #@22
    .line 1750
    iget v2, v1, Landroid/util/MutableInt;->value:I

    #@24
    if-gtz v2, :cond_1

    #@26
    .line 1751
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@28
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 1753
    :cond_1
    return-object v0

    #@2c
    .line 1760
    .end local v1    # "over":Landroid/util/MutableInt;
    :cond_2
    const-string/jumbo v2, "BatteryStatsImpl"

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Unable to find object for "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    const-string/jumbo v4, " mapsize="

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 1761
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    #@48
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@4b
    move-result v4

    #@4c
    .line 1760
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 1761
    const-string/jumbo v4, " activeoverflow="

    #@53
    .line 1760
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 1761
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    #@59
    .line 1760
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    .line 1762
    const-string/jumbo v4, " curoverflow="

    #@60
    .line 1760
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    .line 1762
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    #@66
    .line 1760
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 1763
    return-object v5
.end method
