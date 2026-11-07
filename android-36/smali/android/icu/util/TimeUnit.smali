.class public Landroid/icu/util/TimeUnit;
.super Landroid/icu/util/MeasureUnit;
.source "TimeUnit.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x27699d2cbfbcc814L


# instance fields
.field private final greylist-max-o index:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/TimeUnit;->index:I

    .line 32
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 48
    iget v0, p0, Landroid/icu/util/TimeUnit;->index:I

    packed-switch v0, :pswitch_data_36

    .line 64
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/util/TimeUnit;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_20
    sget-object v0, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    return-object v0

    .line 52
    :pswitch_23
    sget-object v0, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    return-object v0

    .line 54
    :pswitch_26
    sget-object v0, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    return-object v0

    .line 56
    :pswitch_29
    sget-object v0, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    return-object v0

    .line 58
    :pswitch_2c
    sget-object v0, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    return-object v0

    .line 60
    :pswitch_2f
    sget-object v0, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    return-object v0

    .line 62
    :pswitch_32
    sget-object v0, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method public static whitelist test-api values()[Landroid/icu/util/TimeUnit;
    .registers 7

    .line 38
    sget-object v0, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    sget-object v1, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    sget-object v2, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    sget-object v3, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    sget-object v4, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    sget-object v5, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    sget-object v6, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    filled-new-array/range {v0 .. v6}, [Landroid/icu/util/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Landroid/icu/util/TimeUnit;->type:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/util/TimeUnit;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
