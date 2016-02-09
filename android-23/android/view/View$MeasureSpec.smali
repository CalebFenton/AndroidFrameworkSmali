.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static adjust(II)I
    .locals 5
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 21072
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v0

    #@5
    .line 21073
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v1

    #@9
    .line 21074
    .local v1, "size":I
    if-nez v0, :cond_0

    #@b
    .line 21076
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 21078
    :cond_0
    add-int/2addr v1, p1

    #@11
    .line 21079
    if-gez v1, :cond_1

    #@13
    .line 21080
    const-string/jumbo v2, "View"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "MeasureSpec.adjust: new size would be negative! ("

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 21081
    const-string/jumbo v4, ") spec: "

    #@29
    .line 21080
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 21081
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    .line 21080
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 21081
    const-string/jumbo v4, " delta: "

    #@38
    .line 21080
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 21082
    const/4 v1, 0x0

    #@48
    .line 21084
    :cond_1
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4b
    move-result v2

    #@4c
    return v2
.end method

.method public static getMode(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    #@0
    .prologue
    .line 21058
    const/high16 v0, -0x40000000    # -2.0f

    #@2
    and-int/2addr v0, p0

    #@3
    return v0
.end method

.method public static getSize(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    #@0
    .prologue
    .line 21068
    const v0, 0x3fffffff    # 1.9999999f

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method public static makeMeasureSpec(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 21029
    invoke-static {}, Landroid/view/View;->-get1()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 21030
    add-int v0, p0, p1

    #@8
    return v0

    #@9
    .line 21032
    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    #@c
    and-int/2addr v0, p0

    #@d
    const/high16 v1, -0x40000000    # -2.0f

    #@f
    and-int/2addr v1, p1

    #@10
    or-int/2addr v0, v1

    #@11
    return v0
.end method

.method public static makeSafeMeasureSpec(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 21043
    sget-boolean v0, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    if-nez p1, :cond_0

    #@7
    .line 21044
    return v1

    #@8
    .line 21046
    :cond_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "measureSpec"    # I

    #@0
    .prologue
    .line 21095
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    .line 21096
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v2

    #@8
    .line 21098
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string/jumbo v3, "MeasureSpec: "

    #@d
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    .line 21100
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    #@12
    .line 21101
    const-string/jumbo v3, "UNSPECIFIED "

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 21109
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 21110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    return-object v3

    #@20
    .line 21102
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    #@22
    if-ne v0, v3, :cond_1

    #@24
    .line 21103
    const-string/jumbo v3, "EXACTLY "

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    goto :goto_0

    #@2b
    .line 21104
    :cond_1
    const/high16 v3, -0x80000000

    #@2d
    if-ne v0, v3, :cond_2

    #@2f
    .line 21105
    const-string/jumbo v3, "AT_MOST "

    #@32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    goto :goto_0

    #@36
    .line 21107
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, " "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_0
.end method
