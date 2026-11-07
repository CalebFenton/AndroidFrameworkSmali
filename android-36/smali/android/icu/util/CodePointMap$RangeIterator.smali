.class final Landroid/icu/util/CodePointMap$RangeIterator;
.super Ljava/lang/Object;
.source "CodePointMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RangeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/icu/util/CodePointMap$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist range:Landroid/icu/util/CodePointMap$Range;

.field final synthetic blacklist this$0:Landroid/icu/util/CodePointMap;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/util/CodePointMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Landroid/icu/util/CodePointMap$RangeIterator;->this$0:Landroid/icu/util/CodePointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance p1, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {p1}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    iput-object p1, p0, Landroid/icu/util/CodePointMap$RangeIterator;->range:Landroid/icu/util/CodePointMap$Range;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/CodePointMap;Landroid/icu/util/CodePointMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/util/CodePointMap$RangeIterator;-><init>(Landroid/icu/util/CodePointMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/icu/util/CodePointMap$RangeIterator;->range:Landroid/icu/util/CodePointMap$Range;

    invoke-static {v0}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fgetend(Landroid/icu/util/CodePointMap$Range;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v1, v0, :cond_16

    iget-object v0, p0, Landroid/icu/util/CodePointMap$RangeIterator;->range:Landroid/icu/util/CodePointMap$Range;

    invoke-static {v0}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fgetend(Landroid/icu/util/CodePointMap$Range;)I

    move-result v0

    const v1, 0x10ffff

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public blacklist next()Landroid/icu/util/CodePointMap$Range;
    .registers 5

    .line 147
    iget-object v0, p0, Landroid/icu/util/CodePointMap$RangeIterator;->this$0:Landroid/icu/util/CodePointMap;

    iget-object v1, p0, Landroid/icu/util/CodePointMap$RangeIterator;->range:Landroid/icu/util/CodePointMap$Range;

    invoke-static {v1}, Landroid/icu/util/CodePointMap$Range;->-$$Nest$fgetend(Landroid/icu/util/CodePointMap$Range;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/icu/util/CodePointMap$RangeIterator;->range:Landroid/icu/util/CodePointMap$Range;

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/CodePointMap;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 148
    iget-object v0, p0, Landroid/icu/util/CodePointMap$RangeIterator;->range:Landroid/icu/util/CodePointMap$Range;

    return-object v0

    .line 150
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 137
    invoke-virtual {p0}, Landroid/icu/util/CodePointMap$RangeIterator;->next()Landroid/icu/util/CodePointMap$Range;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api remove()V
    .registers 2

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
