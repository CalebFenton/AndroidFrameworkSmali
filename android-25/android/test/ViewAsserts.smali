.class public Landroid/test/ViewAsserts;
.super Ljava/lang/Object;
.source "ViewAsserts.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assertBaselineAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 125
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 126
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 127
    aget v3, v2, v5

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    #@c
    move-result v4

    #@d
    add-int v0, v3, v4

    #@f
    .line 129
    .local v0, "firstTop":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@12
    .line 130
    aget v3, v2, v5

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    #@17
    move-result v4

    #@18
    add-int v1, v3, v4

    #@1a
    .line 132
    .local v1, "secondTop":I
    const-string/jumbo v3, "views are not baseline aligned"

    #@1d
    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@20
    .line 124
    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 217
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 218
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 219
    aget v3, v2, v5

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@c
    move-result v4

    #@d
    add-int v0, v3, v4

    #@f
    .line 221
    .local v0, "firstBottom":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@12
    .line 222
    aget v3, v2, v5

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@17
    move-result v4

    #@18
    add-int v1, v3, v4

    #@1a
    .line 224
    .local v1, "secondBottom":I
    const-string/jumbo v3, "views are not bottom aligned"

    #@1d
    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@20
    .line 216
    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 236
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 237
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 238
    aget v3, v2, v5

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@c
    move-result v4

    #@d
    add-int v0, v3, v4

    #@f
    .line 240
    .local v0, "firstBottom":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@12
    .line 241
    aget v3, v2, v5

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@17
    move-result v4

    #@18
    add-int v1, v3, v4

    #@1a
    .line 243
    .local v1, "secondBottom":I
    const-string/jumbo v3, "views are not bottom aligned"

    #@1d
    sub-int v4, v0, v1

    #@1f
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@22
    move-result v4

    #@23
    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@26
    .line 235
    return-void
.end method

.method public static assertGroupContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 348
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v0

    #@5
    .line 349
    .local v0, "count":I
    const-string/jumbo v5, "Child count should be >= 0"

    #@8
    if-ltz v0, :cond_1

    #@a
    const/4 v3, 0x1

    #@b
    :goto_0
    invoke-static {v5, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@e
    .line 351
    const/4 v1, 0x0

    #@f
    .line 352
    .local v1, "found":Z
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@12
    .line 353
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v3

    #@16
    if-ne v3, p1, :cond_0

    #@18
    .line 354
    if-nez v1, :cond_2

    #@1a
    .line 355
    const/4 v1, 0x1

    #@1b
    .line 352
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .end local v1    # "found":Z
    .end local v2    # "i":I
    :cond_1
    move v3, v4

    #@1f
    .line 349
    goto :goto_0

    #@20
    .line 357
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "child "

    #@28
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v5, " is duplicated in parent"

    #@33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@3e
    goto :goto_2

    #@3f
    .line 362
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "group does not contain "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@56
    .line 347
    return-void
.end method

.method public static assertGroupIntegrity(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 332
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v0

    #@5
    .line 333
    .local v0, "count":I
    const-string/jumbo v3, "child count should be >= 0"

    #@8
    if-ltz v0, :cond_0

    #@a
    const/4 v2, 0x1

    #@b
    :cond_0
    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@e
    .line 335
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 336
    const-string/jumbo v2, "group should not contain null children"

    #@14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v3

    #@18
    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b
    .line 337
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@22
    move-result-object v2

    #@23
    invoke-static {p0, v2}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    #@26
    .line 335
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 331
    :cond_1
    return-void
.end method

.method public static assertGroupNotContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 372
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v0

    #@5
    .line 373
    .local v0, "count":I
    const-string/jumbo v4, "Child count should be >= 0"

    #@8
    if-ltz v0, :cond_1

    #@a
    const/4 v2, 0x1

    #@b
    :goto_0
    invoke-static {v4, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@e
    .line 375
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@11
    .line 376
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    if-ne v2, p1, :cond_0

    #@17
    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "child "

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v4, " is found in parent"

    #@2a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@35
    .line 375
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_1

    #@38
    .end local v1    # "i":I
    :cond_1
    move v2, v3

    #@39
    .line 373
    goto :goto_0

    #@3a
    .line 371
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static assertHasScreenCoordinates(Landroid/view/View;Landroid/view/View;II)V
    .locals 6
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 107
    new-array v0, v2, [I

    #@5
    .line 108
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    .line 110
    new-array v1, v2, [I

    #@a
    .line 111
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@d
    .line 113
    const-string/jumbo v2, "x coordinate"

    #@10
    aget v3, v0, v4

    #@12
    aget v4, v1, v4

    #@14
    sub-int/2addr v3, v4

    #@15
    invoke-static {v2, p2, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@18
    .line 114
    const-string/jumbo v2, "y coordinate"

    #@1b
    aget v3, v0, v5

    #@1d
    aget v4, v1, v5

    #@1f
    sub-int/2addr v3, v4

    #@20
    invoke-static {v2, p3, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@23
    .line 106
    return-void
.end method

.method public static assertHorizontalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "test"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 291
    const/4 v5, 0x2

    #@2
    new-array v4, v5, [I

    #@4
    .line 292
    .local v4, "xy":[I
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 293
    aget v2, v4, v6

    #@9
    .line 295
    .local v2, "referenceLeft":I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 296
    aget v3, v4, v6

    #@e
    .line 298
    .local v3, "testLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@11
    move-result v5

    #@12
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@15
    move-result v6

    #@16
    sub-int/2addr v5, v6

    #@17
    div-int/lit8 v0, v5, 0x2

    #@19
    .line 299
    .local v0, "center":I
    sub-int v1, v3, v2

    #@1b
    .line 301
    .local v1, "delta":I
    const-string/jumbo v5, "views are not horizontally center aligned"

    #@1e
    invoke-static {v5, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@21
    .line 290
    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 180
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 181
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 182
    aget v0, v2, v4

    #@9
    .line 184
    .local v0, "firstLeft":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 185
    aget v1, v2, v4

    #@e
    .line 187
    .local v1, "secondLeft":I
    const-string/jumbo v3, "views are not left aligned"

    #@11
    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@14
    .line 179
    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 199
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 200
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 201
    aget v0, v2, v4

    #@9
    .line 203
    .local v0, "firstLeft":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 204
    aget v1, v2, v4

    #@e
    .line 206
    .local v1, "secondLeft":I
    const-string/jumbo v3, "views are not left aligned"

    #@11
    sub-int v4, v0, v1

    #@13
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@16
    move-result v4

    #@17
    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@1a
    .line 198
    return-void
.end method

.method public static assertOffScreenAbove(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 87
    new-array v0, v5, [I

    #@5
    .line 88
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    .line 90
    new-array v1, v5, [I

    #@a
    .line 91
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@d
    .line 93
    aget v5, v0, v3

    #@f
    aget v6, v1, v3

    #@11
    sub-int v2, v5, v6

    #@13
    .line 95
    .local v2, "y":I
    const-string/jumbo v5, "view should have y location less than that of origin view"

    #@16
    .line 96
    if-gez v2, :cond_0

    #@18
    .line 95
    :goto_0
    invoke-static {v5, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@1b
    .line 86
    return-void

    #@1c
    :cond_0
    move v3, v4

    #@1d
    .line 96
    goto :goto_0
.end method

.method public static assertOffScreenBelow(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 67
    new-array v0, v4, [I

    #@4
    .line 68
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 70
    new-array v1, v4, [I

    #@9
    .line 71
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 73
    aget v4, v0, v3

    #@e
    aget v5, v1, v3

    #@10
    sub-int v2, v4, v5

    #@12
    .line 75
    .local v2, "y":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "view should have y location on screen greater than drawing height of origen view ("

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 76
    const-string/jumbo v5, " is not greater than "

    #@25
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@2c
    move-result v5

    #@2d
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 77
    const-string/jumbo v5, ")"

    #@34
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@3f
    move-result v5

    #@40
    if-le v2, v5, :cond_0

    #@42
    .line 75
    :goto_0
    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@45
    .line 66
    return-void

    #@46
    .line 78
    :cond_0
    const/4 v3, 0x0

    #@47
    goto :goto_0
.end method

.method public static assertOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "origin"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    .line 45
    new-array v0, v3, [I

    #@5
    .line 46
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    .line 48
    new-array v1, v3, [I

    #@a
    .line 49
    .local v1, "xyRoot":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@d
    .line 51
    aget v3, v0, v4

    #@f
    aget v6, v1, v4

    #@11
    sub-int v2, v3, v6

    #@13
    .line 53
    .local v2, "y":I
    const-string/jumbo v6, "view should have positive y coordinate on screen"

    #@16
    .line 54
    if-ltz v2, :cond_0

    #@18
    move v3, v4

    #@19
    .line 53
    :goto_0
    invoke-static {v6, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@1c
    .line 56
    const-string/jumbo v3, "view should have y location on screen less than drawing height of root view"

    #@1f
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@26
    move-result v6

    #@27
    if-gt v2, v6, :cond_1

    #@29
    .line 56
    :goto_1
    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@2c
    .line 44
    return-void

    #@2d
    :cond_0
    move v3, v5

    #@2e
    .line 54
    goto :goto_0

    #@2f
    :cond_1
    move v4, v5

    #@30
    .line 58
    goto :goto_1
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 143
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 144
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 145
    aget v3, v2, v5

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@c
    move-result v4

    #@d
    add-int v0, v3, v4

    #@f
    .line 147
    .local v0, "firstRight":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@12
    .line 148
    aget v3, v2, v5

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@17
    move-result v4

    #@18
    add-int v1, v3, v4

    #@1a
    .line 150
    .local v1, "secondRight":I
    const-string/jumbo v3, "views are not right aligned"

    #@1d
    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@20
    .line 142
    return-void
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 162
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 163
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 164
    aget v3, v2, v5

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@c
    move-result v4

    #@d
    add-int v0, v3, v4

    #@f
    .line 166
    .local v0, "firstRight":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@12
    .line 167
    aget v3, v2, v5

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@17
    move-result v4

    #@18
    add-int v1, v3, v4

    #@1a
    .line 169
    .local v1, "secondRight":I
    const-string/jumbo v3, "views are not right aligned"

    #@1d
    sub-int v4, v0, v1

    #@1f
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@22
    move-result v4

    #@23
    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@26
    .line 161
    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 254
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 255
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 256
    aget v0, v2, v4

    #@9
    .line 258
    .local v0, "firstTop":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 259
    aget v1, v2, v4

    #@e
    .line 261
    .local v1, "secondTop":I
    const-string/jumbo v3, "views are not top aligned"

    #@11
    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@14
    .line 253
    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .param p0, "first"    # Landroid/view/View;
    .param p1, "second"    # Landroid/view/View;
    .param p2, "margin"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 273
    const/4 v3, 0x2

    #@2
    new-array v2, v3, [I

    #@4
    .line 274
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 275
    aget v0, v2, v4

    #@9
    .line 277
    .local v0, "firstTop":I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 278
    aget v1, v2, v4

    #@e
    .line 280
    .local v1, "secondTop":I
    const-string/jumbo v3, "views are not top aligned"

    #@11
    sub-int v4, v0, v1

    #@13
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@16
    move-result v4

    #@17
    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@1a
    .line 272
    return-void
.end method

.method public static assertVerticalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "test"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 312
    const/4 v5, 0x2

    #@2
    new-array v4, v5, [I

    #@4
    .line 313
    .local v4, "xy":[I
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 314
    aget v2, v4, v6

    #@9
    .line 316
    .local v2, "referenceTop":I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 317
    aget v3, v4, v6

    #@e
    .line 319
    .local v3, "testTop":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@11
    move-result v5

    #@12
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@15
    move-result v6

    #@16
    sub-int/2addr v5, v6

    #@17
    div-int/lit8 v0, v5, 0x2

    #@19
    .line 320
    .local v0, "center":I
    sub-int v1, v3, v2

    #@1b
    .line 322
    .local v1, "delta":I
    const-string/jumbo v5, "views are not vertically center aligned"

    #@1e
    invoke-static {v5, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@21
    .line 311
    return-void
.end method
