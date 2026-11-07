.class public Lcom/android/net/module/util/NetworkStatsUtils;
.super Ljava/lang/Object;
.source "NetworkStatsUtils.java"


# static fields
.field public static final blacklist LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field public static final blacklist SUBSCRIBER_ID_MATCH_RULE_ALL:I = 0x1

.field public static final blacklist SUBSCRIBER_ID_MATCH_RULE_EXACT:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist constrain(III)I
    .registers 6
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 80
    if-gt p1, p2, :cond_c

    .line 81
    if-ge p0, p1, :cond_6

    move v0, p1

    goto :goto_b

    :cond_6
    if-le p0, p2, :cond_a

    move v0, p2

    goto :goto_b

    :cond_a
    move v0, p0

    :goto_b
    return v0

    .line 80
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "low("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > high("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist constrain(JJJ)J
    .registers 9
    .param p0, "amount"    # J
    .param p2, "low"    # J
    .param p4, "high"    # J

    .line 88
    cmp-long v0, p2, p4

    if-gtz v0, :cond_12

    .line 89
    cmp-long v0, p0, p2

    if-gez v0, :cond_a

    move-wide v0, p2

    goto :goto_11

    :cond_a
    cmp-long v0, p0, p4

    if-lez v0, :cond_10

    move-wide v0, p4

    goto :goto_11

    :cond_10
    move-wide v0, p0

    :goto_11
    return-wide v0

    .line 88
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "low("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > high("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist multiplySafeByRational(JJJ)J
    .registers 23
    .param p0, "value"    # J
    .param p2, "num"    # J
    .param p4, "den"    # J

    .line 33
    move-wide/from16 v0, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_49

    .line 36
    move-wide/from16 v4, p0

    .line 37
    .local v4, "x":J
    move-wide/from16 v6, p2

    .line 40
    .local v6, "y":J
    mul-long v8, v4, v6

    .line 41
    .local v8, "r":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 42
    .local v10, "ax":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 43
    .local v12, "ay":J
    or-long v14, v10, v12

    const/16 v16, 0x1f

    ushr-long v14, v14, v16

    cmp-long v14, v14, v2

    if-eqz v14, :cond_44

    .line 47
    cmp-long v2, v6, v2

    if-eqz v2, :cond_2a

    div-long v2, v8, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    :cond_2a
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v4, v2

    if-nez v2, :cond_41

    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_41

    .line 50
    :cond_36
    move-wide/from16 v2, p2

    long-to-double v14, v2

    long-to-double v2, v0

    div-double/2addr v14, v2

    move-wide/from16 v2, p0

    long-to-double v0, v2

    mul-double/2addr v14, v0

    double-to-long v0, v14

    return-wide v0

    .line 47
    :cond_41
    move-wide/from16 v2, p0

    goto :goto_46

    .line 43
    :cond_44
    move-wide/from16 v2, p0

    .line 53
    :goto_46
    div-long v0, v8, p4

    return-wide v0

    .line 34
    .end local v4    # "x":J
    .end local v6    # "y":J
    .end local v8    # "r":J
    .end local v10    # "ax":J
    .end local v12    # "ay":J
    :cond_49
    move-wide/from16 v2, p0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Invalid Denominator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
