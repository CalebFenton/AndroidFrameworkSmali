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
    .line 22087
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
    .line 22183
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v0

    #@5
    .line 22184
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v1

    #@9
    .line 22185
    .local v1, "size":I
    if-nez v0, :cond_0

    #@b
    .line 22187
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 22189
    :cond_0
    add-int/2addr v1, p1

    #@11
    .line 22190
    if-gez v1, :cond_1

    #@13
    .line 22191
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
    .line 22192
    const-string/jumbo v4, ") spec: "

    #@29
    .line 22191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 22192
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    .line 22191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 22192
    const-string/jumbo v4, " delta: "

    #@38
    .line 22191
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
    .line 22193
    const/4 v1, 0x0

    #@48
    .line 22195
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
    .line 22169
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
    .line 22179
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
    .line 22138
    invoke-static {}, Landroid/view/View;->-get1()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 22139
    add-int v0, p0, p1

    #@8
    return v0

    #@9
    .line 22141
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
    .line 22152
    sget-boolean v0, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    if-nez p1, :cond_0

    #@7
    .line 22153
    return v1

    #@8
    .line 22155
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
    .line 22206
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    .line 22207
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v2

    #@8
    .line 22209
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string/jumbo v3, "MeasureSpec: "

    #@d
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    .line 22211
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    #@12
    .line 22212
    const-string/jumbo v3, "UNSPECIFIED "

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 22220
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 22221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    return-object v3

    #@20
    .line 22213
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    #@22
    if-ne v0, v3, :cond_1

    #@24
    .line 22214
    const-string/jumbo v3, "EXACTLY "

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    goto :goto_0

    #@2b
    .line 22215
    :cond_1
    const/high16 v3, -0x80000000

    #@2d
    if-ne v0, v3, :cond_2

    #@2f
    .line 22216
    const-string/jumbo v3, "AT_MOST "

    #@32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    goto :goto_0

    #@36
    .line 22218
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
