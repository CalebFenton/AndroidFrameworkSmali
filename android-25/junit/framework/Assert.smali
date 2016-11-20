.class public Ljunit/framework/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assertEquals(BB)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    #@0
    .prologue
    .line 166
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;BB)V

    #@4
    .line 165
    return-void
.end method

.method public static assertEquals(CC)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;CC)V

    #@4
    .line 178
    return-void
.end method

.method public static assertEquals(DDD)V
    .locals 8
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    #@0
    .prologue
    .line 109
    const/4 v1, 0x0

    #@1
    move-wide v2, p0

    #@2
    move-wide v4, p2

    #@3
    move-wide v6, p4

    #@4
    invoke-static/range {v1 .. v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;DDD)V

    #@7
    .line 108
    return-void
.end method

.method public static assertEquals(FFF)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    #@0
    .prologue
    .line 127
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;FFF)V

    #@4
    .line 126
    return-void
.end method

.method public static assertEquals(II)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    #@4
    .line 204
    return-void
.end method

.method public static assertEquals(JJ)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;JJ)V

    #@4
    .line 139
    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@4
    .line 73
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;BB)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # B
    .param p2, "actual"    # B

    #@0
    .prologue
    .line 160
    new-instance v0, Ljava/lang/Byte;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    #@5
    new-instance v1, Ljava/lang/Byte;

    #@7
    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    #@a
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 159
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;CC)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # C
    .param p2, "actual"    # C

    #@0
    .prologue
    .line 173
    new-instance v0, Ljava/lang/Character;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    #@5
    new-instance v1, Ljava/lang/Character;

    #@7
    invoke-direct {v1, p2}, Ljava/lang/Character;-><init>(C)V

    #@a
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 172
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DDD)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 100
    return-void

    #@8
    .line 101
    :cond_0
    sub-double v2, p1, p3

    #@a
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@d
    move-result-wide v2

    #@e
    cmpg-double v1, v2, p5

    #@10
    if-gtz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    :cond_1
    if-nez v0, :cond_2

    #@15
    .line 102
    new-instance v0, Ljava/lang/Double;

    #@17
    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    #@1a
    new-instance v1, Ljava/lang/Double;

    #@1c
    invoke-direct {v1, p3, p4}, Ljava/lang/Double;-><init>(D)V

    #@1f
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@22
    .line 98
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 117
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 118
    return-void

    #@8
    .line 119
    :cond_0
    sub-float v1, p1, p2

    #@a
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@d
    move-result v1

    #@e
    cmpg-float v1, v1, p3

    #@10
    if-gtz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    :cond_1
    if-nez v0, :cond_2

    #@15
    .line 120
    new-instance v0, Ljava/lang/Float;

    #@17
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    #@1a
    new-instance v1, Ljava/lang/Float;

    #@1c
    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    #@1f
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@22
    .line 116
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/Integer;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    #@5
    new-instance v1, Ljava/lang/Integer;

    #@7
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    #@a
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 198
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/lang/Long;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    #@5
    new-instance v1, Ljava/lang/Long;

    #@7
    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    #@a
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 133
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 63
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    .line 64
    return-void

    #@5
    .line 65
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 66
    return-void

    #@e
    .line 67
    :cond_1
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@11
    .line 62
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 90
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    .line 81
    return-void

    #@5
    .line 82
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 83
    return-void

    #@e
    .line 84
    :cond_1
    if-nez p0, :cond_2

    #@10
    const-string/jumbo v0, ""

    #@13
    .line 85
    .local v0, "cleanMessage":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljunit/framework/ComparisonFailure;

    #@15
    invoke-direct {v1, v0, p1, p2}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 84
    .end local v0    # "cleanMessage":Ljava/lang/String;
    :cond_2
    move-object v0, p0

    #@1a
    .restart local v0    # "cleanMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method public static assertEquals(Ljava/lang/String;SS)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # S
    .param p2, "actual"    # S

    #@0
    .prologue
    .line 186
    new-instance v0, Ljava/lang/Short;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    #@5
    new-instance v1, Ljava/lang/Short;

    #@7
    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    #@a
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 185
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Z
    .param p2, "actual"    # Z

    #@0
    .prologue
    .line 147
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v1

    #@8
    invoke-static {p0, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@b
    .line 146
    return-void
.end method

.method public static assertEquals(SS)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    #@0
    .prologue
    .line 192
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;SS)V

    #@4
    .line 191
    return-void
.end method

.method public static assertEquals(ZZ)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    #@4
    .line 152
    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    #@0
    .prologue
    .line 34
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    invoke-static {p0, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@6
    .line 33
    return-void

    #@7
    .line 34
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public static assertFalse(Z)V
    .locals 1
    .param p0, "condition"    # Z

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    #@4
    .line 40
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@4
    .line 210
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 218
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-static {p0, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@6
    .line 217
    return-void

    #@7
    .line 218
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@4
    .line 268
    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 261
    if-ne p1, p2, :cond_0

    #@2
    .line 262
    invoke-static {p0}, Ljunit/framework/Assert;->failSame(Ljava/lang/String;)V

    #@5
    .line 260
    :cond_0
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Expected: <null> but was: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 230
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b
    .line 228
    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 237
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-static {p0, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@6
    .line 236
    return-void

    #@7
    .line 237
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljunit/framework/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@4
    .line 252
    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 244
    if-ne p1, p2, :cond_0

    #@2
    .line 245
    return-void

    #@3
    .line 246
    :cond_0
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    .line 243
    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    #@0
    .prologue
    .line 19
    if-nez p1, :cond_0

    #@2
    .line 20
    invoke-static {p0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    #@5
    .line 18
    :cond_0
    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    #@0
    .prologue
    .line 27
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@4
    .line 26
    return-void
.end method

.method public static fail()V
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    #@4
    .line 55
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    if-nez p0, :cond_0

    #@2
    .line 48
    new-instance v0, Ljunit/framework/AssertionFailedError;

    #@4
    invoke-direct {v0}, Ljunit/framework/AssertionFailedError;-><init>()V

    #@7
    throw v0

    #@8
    .line 50
    :cond_0
    new-instance v0, Ljunit/framework/AssertionFailedError;

    #@a
    invoke-direct {v0, p0}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 287
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    #@7
    .line 286
    return-void
.end method

.method public static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 280
    const-string/jumbo v0, ""

    #@3
    .line 281
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@5
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 283
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "expected same:<"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, "> was not:<"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, ">"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    #@46
    .line 279
    return-void
.end method

.method public static failSame(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 273
    const-string/jumbo v0, ""

    #@3
    .line 274
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@5
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 276
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "expected not same"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    #@30
    .line 272
    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 291
    const-string/jumbo v0, ""

    #@3
    .line 292
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "expected:<"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "> but was:<"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, ">"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method
