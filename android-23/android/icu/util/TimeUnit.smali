.class public Landroid/icu/util/TimeUnit;
.super Landroid/icu/util/MeasureUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = -0x27699d2cbfbcc814L


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 30
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/util/TimeUnit;->index:I

    #@6
    .line 28
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    iget v0, p0, Landroid/icu/util/TimeUnit;->index:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 64
    new-instance v0, Ljava/io/InvalidObjectException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Bad index: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Landroid/icu/util/TimeUnit;->index:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 50
    :pswitch_0
    sget-object v0, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    #@23
    return-object v0

    #@24
    .line 52
    :pswitch_1
    sget-object v0, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    #@26
    return-object v0

    #@27
    .line 54
    :pswitch_2
    sget-object v0, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    #@29
    return-object v0

    #@2a
    .line 56
    :pswitch_3
    sget-object v0, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    #@2c
    return-object v0

    #@2d
    .line 58
    :pswitch_4
    sget-object v0, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    #@2f
    return-object v0

    #@30
    .line 60
    :pswitch_5
    sget-object v0, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    #@32
    return-object v0

    #@33
    .line 62
    :pswitch_6
    sget-object v0, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    #@35
    return-object v0

    #@36
    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Landroid/icu/util/TimeUnit;
    .locals 3

    #@0
    .prologue
    .line 38
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Landroid/icu/util/TimeUnit;

    #@3
    sget-object v1, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    sget-object v1, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    sget-object v1, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    sget-object v1, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    #@14
    const/4 v2, 0x3

    #@15
    aput-object v1, v0, v2

    #@17
    sget-object v1, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    #@19
    const/4 v2, 0x4

    #@1a
    aput-object v1, v0, v2

    #@1c
    sget-object v1, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    #@1e
    const/4 v2, 0x5

    #@1f
    aput-object v1, v0, v2

    #@21
    sget-object v1, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    #@23
    const/4 v2, 0x6

    #@24
    aput-object v1, v0, v2

    #@26
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    new-instance v0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;

    #@2
    iget-object v1, p0, Landroid/icu/util/TimeUnit;->type:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/icu/util/TimeUnit;->subType:Ljava/lang/String;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object v0
.end method
