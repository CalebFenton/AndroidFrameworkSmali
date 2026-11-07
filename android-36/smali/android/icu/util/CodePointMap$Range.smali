.class public final Landroid/icu/util/CodePointMap$Range;
.super Ljava/lang/Object;
.source "CodePointMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation


# instance fields
.field private blacklist end:I

.field private blacklist start:I

.field private blacklist value:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetend(Landroid/icu/util/CodePointMap$Range;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/CodePointMap$Range;->end:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalue(Landroid/icu/util/CodePointMap$Range;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/CodePointMap$Range;->value:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputend(Landroid/icu/util/CodePointMap$Range;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/CodePointMap$Range;->end:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputstart(Landroid/icu/util/CodePointMap$Range;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/CodePointMap$Range;->start:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputvalue(Landroid/icu/util/CodePointMap$Range;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/CodePointMap$Range;->value:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CodePointMap$Range;->end:I

    iput v0, p0, Landroid/icu/util/CodePointMap$Range;->start:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/CodePointMap$Range;->value:I

    .line 108
    return-void
.end method


# virtual methods
.method public blacklist getEnd()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/icu/util/CodePointMap$Range;->end:I

    return v0
.end method

.method public blacklist getStart()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/icu/util/CodePointMap$Range;->start:I

    return v0
.end method

.method public blacklist getValue()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/icu/util/CodePointMap$Range;->value:I

    return v0
.end method

.method public blacklist set(III)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .line 131
    iput p1, p0, Landroid/icu/util/CodePointMap$Range;->start:I

    .line 132
    iput p2, p0, Landroid/icu/util/CodePointMap$Range;->end:I

    .line 133
    iput p3, p0, Landroid/icu/util/CodePointMap$Range;->value:I

    .line 134
    return-void
.end method
