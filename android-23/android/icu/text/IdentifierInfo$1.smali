.class final Landroid/icu/text/IdentifierInfo$1;
.super Ljava/lang/Object;
.source "IdentifierInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IdentifierInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 361
    check-cast p1, Ljava/util/BitSet;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/BitSet;

    #@4
    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/IdentifierInfo$1;->compare(Ljava/util/BitSet;Ljava/util/BitSet;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/util/BitSet;Ljava/util/BitSet;)I
    .locals 6
    .param p1, "arg0"    # Ljava/util/BitSet;
    .param p2, "arg1"    # Ljava/util/BitSet;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 362
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    #@8
    move-result v4

    #@9
    sub-int v0, v3, v4

    #@b
    .line 363
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@d
    return v0

    #@e
    .line 364
    :cond_0
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    #@11
    move-result v1

    #@12
    .line 365
    .local v1, "i0":I
    invoke-virtual {p2, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    #@15
    move-result v2

    #@16
    .line 366
    .local v2, "i1":I
    :goto_0
    sub-int v0, v1, v2

    #@18
    if-nez v0, :cond_1

    #@1a
    if-lez v1, :cond_1

    #@1c
    .line 367
    add-int/lit8 v3, v1, 0x1

    #@1e
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@21
    move-result v1

    #@22
    .line 368
    add-int/lit8 v3, v2, 0x1

    #@24
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    #@27
    move-result v2

    #@28
    goto :goto_0

    #@29
    .line 370
    :cond_1
    return v0
.end method
