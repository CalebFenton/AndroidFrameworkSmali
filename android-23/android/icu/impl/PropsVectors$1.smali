.class Landroid/icu/impl/PropsVectors$1;
.super Ljava/lang/Object;
.source "PropsVectors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/PropsVectors;


# direct methods
.method constructor <init>(Landroid/icu/impl/PropsVectors;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/PropsVectors;

    #@0
    .prologue
    .line 382
    iput-object p1, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 384
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@4
    move-result v2

    #@5
    .line 385
    .local v2, "indexOfRow1":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@8
    move-result v3

    #@9
    .line 386
    .local v3, "indexOfRow2":I
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    #@b
    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get0(Landroid/icu/impl/PropsVectors;)I

    #@e
    move-result v0

    #@f
    .line 390
    .local v0, "count":I
    const/4 v1, 0x2

    #@10
    .line 392
    .local v1, "index":I
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    #@12
    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    #@15
    move-result-object v4

    #@16
    add-int v5, v2, v1

    #@18
    aget v4, v4, v5

    #@1a
    iget-object v5, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    #@1c
    invoke-static {v5}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    #@1f
    move-result-object v5

    #@20
    add-int v6, v3, v1

    #@22
    aget v5, v5, v6

    #@24
    if-eq v4, v5, :cond_2

    #@26
    .line 393
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    #@28
    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    #@2b
    move-result-object v4

    #@2c
    add-int v5, v2, v1

    #@2e
    aget v4, v4, v5

    #@30
    iget-object v5, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    #@32
    invoke-static {v5}, Landroid/icu/impl/PropsVectors;->-get1(Landroid/icu/impl/PropsVectors;)[I

    #@35
    move-result-object v5

    #@36
    add-int v6, v3, v1

    #@38
    aget v5, v5, v6

    #@3a
    if-ge v4, v5, :cond_1

    #@3c
    const/4 v4, -0x1

    #@3d
    :goto_0
    return v4

    #@3e
    .line 394
    :cond_1
    const/4 v4, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 396
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@42
    iget-object v4, p0, Landroid/icu/impl/PropsVectors$1;->this$0:Landroid/icu/impl/PropsVectors;

    #@44
    invoke-static {v4}, Landroid/icu/impl/PropsVectors;->-get0(Landroid/icu/impl/PropsVectors;)I

    #@47
    move-result v4

    #@48
    if-ne v1, v4, :cond_3

    #@4a
    .line 397
    const/4 v1, 0x0

    #@4b
    .line 399
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@4d
    if-gtz v0, :cond_0

    #@4f
    .line 401
    return v7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 383
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PropsVectors$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
