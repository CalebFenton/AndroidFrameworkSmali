.class public Llibcore/internal/Java21LanguageFeatures;
.super Ljava/lang/Object;
.source "Java21LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/internal/Java21LanguageFeatures$Triangle;,
        Llibcore/internal/Java21LanguageFeatures$Rectangle;,
        Llibcore/internal/Java21LanguageFeatures$Circle;,
        Llibcore/internal/Java21LanguageFeatures$Point;,
        Llibcore/internal/Java21LanguageFeatures$Line;,
        Llibcore/internal/Java21LanguageFeatures$Pair;,
        Llibcore/internal/Java21LanguageFeatures$Pairable;,
        Llibcore/internal/Java21LanguageFeatures$PairableInt;,
        Llibcore/internal/Java21LanguageFeatures$PairableString;,
        Llibcore/internal/Java21LanguageFeatures$AnyPair;,
        Llibcore/internal/Java21LanguageFeatures$SquishyBlob;,
        Llibcore/internal/Java21LanguageFeatures$MultiBlob;,
        Llibcore/internal/Java21LanguageFeatures$ShapeType;,
        Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;,
        Llibcore/internal/Java21LanguageFeatures$Color;,
        Llibcore/internal/Java21LanguageFeatures$GeometricBlob;,
        Llibcore/internal/Java21LanguageFeatures$ComplexBlob;,
        Llibcore/internal/Java21LanguageFeatures$Blob;,
        Llibcore/internal/Java21LanguageFeatures$PointyShapeType;,
        Llibcore/internal/Java21LanguageFeatures$Shape;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateApproximateArea(Llibcore/internal/Java21LanguageFeatures$Shape;)I
    .registers 4
    .param p0, "s"    # Llibcore/internal/Java21LanguageFeatures$Shape;

    .line 34
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch8;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_30

    .line 38
    goto :goto_2e

    .line 37
    :pswitch_10
    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$Circle;

    .local v0, "c":Llibcore/internal/Java21LanguageFeatures$Circle;
    iget v1, v0, Llibcore/internal/Java21LanguageFeatures$Circle;->radius:I

    iget v2, v0, Llibcore/internal/Java21LanguageFeatures$Circle;->radius:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    goto :goto_2e

    .line 36
    .end local v0    # "c":Llibcore/internal/Java21LanguageFeatures$Circle;
    :pswitch_1b
    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$Rectangle;

    .local v0, "r":Llibcore/internal/Java21LanguageFeatures$Rectangle;
    iget v1, v0, Llibcore/internal/Java21LanguageFeatures$Rectangle;->length:I

    iget v2, v0, Llibcore/internal/Java21LanguageFeatures$Rectangle;->width:I

    mul-int/2addr v1, v2

    goto :goto_2e

    .line 35
    .end local v0    # "r":Llibcore/internal/Java21LanguageFeatures$Rectangle;
    :pswitch_24
    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$Triangle;

    .local v0, "t":Llibcore/internal/Java21LanguageFeatures$Triangle;
    iget v1, v0, Llibcore/internal/Java21LanguageFeatures$Triangle;->base:I

    iget v2, v0, Llibcore/internal/Java21LanguageFeatures$Triangle;->height:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 34
    .end local v0    # "t":Llibcore/internal/Java21LanguageFeatures$Triangle;
    :goto_2e
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist getMainCharacteristic(Llibcore/internal/Java21LanguageFeatures$Blob;)Ljava/lang/Object;
    .registers 10
    .param p0, "blob"    # Llibcore/internal/Java21LanguageFeatures$Blob;

    .line 184
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch4;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_a0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 191
    :pswitch_18
    move-object v1, p0

    check-cast v1, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;

    .line 192
    nop

    .line 191
    :try_start_1c
    invoke-virtual {v1}, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;->sides()I

    move-result v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_91

    .line 192
    move v3, v0

    :goto_21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch6;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_ac

    const/4 v1, 0x4

    goto :goto_5

    .local v1, "sides":I
    :pswitch_32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_9f

    .line 191
    .end local v1    # "sides":I
    :pswitch_38
    move v3, v1

    .local v3, "sides":I
    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_3f

    .line 192
    move v3, v2

    goto :goto_21

    .line 191
    :cond_3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9f

    .line 190
    .end local v3    # "sides":I
    :pswitch_44
    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$MultiBlob;

    :try_start_47
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->type()Llibcore/internal/Java21LanguageFeatures$ShapeType;

    move-result-object v1

    .local v1, "type":Llibcore/internal/Java21LanguageFeatures$ShapeType;
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color()Llibcore/internal/Java21LanguageFeatures$Color;

    move-result-object v2

    .local v2, "color":Llibcore/internal/Java21LanguageFeatures$Color;
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count()Ljava/lang/Integer;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_91

    .local v0, "count":Ljava/lang/Integer;
    goto :goto_9f

    .line 186
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v1    # "type":Llibcore/internal/Java21LanguageFeatures$ShapeType;
    .end local v2    # "color":Llibcore/internal/Java21LanguageFeatures$Color;
    :pswitch_54
    move-object v1, p0

    check-cast v1, Llibcore/internal/Java21LanguageFeatures$MultiBlob;

    .line 192
    nop

    .line 186
    :try_start_58
    invoke-virtual {v1}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->type()Llibcore/internal/Java21LanguageFeatures$ShapeType;

    move-result-object v3
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_91

    .line 192
    move v4, v0

    :goto_5d
    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch5;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_b4

    move v1, v5

    goto :goto_5

    .line 186
    :pswitch_6b
    move-object v4, v3

    check-cast v4, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    .local v4, "type":Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;
    :try_start_6e
    invoke-virtual {v1}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color()Llibcore/internal/Java21LanguageFeatures$Color;

    move-result-object v5

    .local v5, "color":Llibcore/internal/Java21LanguageFeatures$Color;
    invoke-virtual {v1}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count()Ljava/lang/Integer;

    move-result-object v6
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_91

    .local v6, "count":Ljava/lang/Integer;
    sget-object v7, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->CIRCLE:Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    if-eq v4, v7, :cond_7c

    .line 192
    move v4, v2

    goto :goto_5d

    .line 187
    :cond_7c
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->CIRCLE:Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    goto :goto_9f

    .line 188
    .end local v4    # "type":Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;
    .end local v5    # "color":Llibcore/internal/Java21LanguageFeatures$Color;
    .end local v6    # "count":Ljava/lang/Integer;
    :pswitch_7f
    move-object v4, v3

    .local v4, "type":Llibcore/internal/Java21LanguageFeatures$ShapeType;
    :try_start_80
    invoke-virtual {v1}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->color()Llibcore/internal/Java21LanguageFeatures$Color;

    move-result-object v6

    .local v6, "color":Llibcore/internal/Java21LanguageFeatures$Color;
    invoke-virtual {v1}, Llibcore/internal/Java21LanguageFeatures$MultiBlob;->count()Ljava/lang/Integer;

    move-result-object v7
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_91

    .local v7, "count":Ljava/lang/Integer;
    sget-object v8, Llibcore/internal/Java21LanguageFeatures$Color;->RED:Llibcore/internal/Java21LanguageFeatures$Color;

    if-eq v6, v8, :cond_8e

    .line 192
    move v4, v5

    goto :goto_5d

    .line 189
    :cond_8e
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$Color;->RED:Llibcore/internal/Java21LanguageFeatures$Color;

    goto :goto_9f

    .line 192
    .end local v4    # "type":Llibcore/internal/Java21LanguageFeatures$ShapeType;
    .end local v6    # "color":Llibcore/internal/Java21LanguageFeatures$Color;
    .end local v7    # "count":Ljava/lang/Integer;
    :catchall_91
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :pswitch_9c
    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    .line 184
    :goto_9f
    return-object v0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_54
        :pswitch_44
        :pswitch_18
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_38
        :pswitch_32
    .end packed-switch

    :pswitch_data_b4
    .packed-switch -0x1
        :pswitch_7f
        :pswitch_6b
        :pswitch_7f
    .end packed-switch
.end method

.method public static blacklist getX(Ljava/lang/Object;)I
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 110
    instance-of v0, p0, Llibcore/internal/Java21LanguageFeatures$Point;

    if-eqz v0, :cond_1b

    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$Point;

    :try_start_7
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Point;->x()I

    move-result v1

    .local v1, "x":I
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Point;->y()I

    move-result v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    .line 111
    .local v0, "y":I
    return v1

    .line 110
    .end local v0    # "y":I
    .end local v1    # "x":I
    :catchall_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getY(Ljava/lang/Object;)I
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 120
    instance-of v0, p0, Llibcore/internal/Java21LanguageFeatures$Point;

    if-eqz v0, :cond_1b

    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$Point;

    :try_start_7
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Point;->x()I

    move-result v1

    .local v1, "x":I
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Point;->y()I

    move-result v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    .line 121
    .local v0, "y":I
    return v0

    .line 120
    .end local v0    # "y":I
    .end local v1    # "x":I
    :catchall_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist hasManySides(Llibcore/internal/Java21LanguageFeatures$ShapeType;)Z
    .registers 3
    .param p0, "t"    # Llibcore/internal/Java21LanguageFeatures$ShapeType;

    .line 97
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch1;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 100
    :pswitch_16
    goto :goto_1a

    .line 99
    :pswitch_17
    const/4 v1, 0x1

    goto :goto_1a

    .line 98
    :pswitch_19
    nop

    .line 97
    :goto_1a
    return v1

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method public static blacklist isDroid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch7;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 79
    const-string v0, "No"

    goto :goto_14

    .line 78
    :pswitch_f
    const-string v0, "Yes"

    goto :goto_14

    .line 77
    :pswitch_12
    const-string v0, "404"

    .line 76
    :goto_14
    return-object v0

    nop

    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_12
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static blacklist isDroidIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch2;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v0

    const-string v1, "Yes"

    packed-switch v0, :pswitch_data_2c

    .line 90
    const-string v1, "No"

    goto :goto_2b

    .line 89
    :pswitch_11
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    const-string v2, "marvin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v1, 0x2

    move v0, v1

    goto :goto_1

    .line 88
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1d
    move-object v0, p0

    .restart local v0    # "str":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v1, 0x1

    move v0, v1

    goto :goto_1

    .line 87
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_29
    const-string v1, "404"

    .line 86
    :cond_2b
    :goto_2b
    return-object v1

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_29
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method

.method public static blacklist isFirstItemLarger(Llibcore/internal/Java21LanguageFeatures$Pair;)Z
    .registers 7
    .param p0, "pair"    # Llibcore/internal/Java21LanguageFeatures$Pair;

    .line 145
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch9;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_6c

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 146
    :pswitch_17
    nop

    .line 148
    nop

    .line 146
    :try_start_19
    invoke-virtual {p0}, Llibcore/internal/Java21LanguageFeatures$Pair;->a()Llibcore/internal/Java21LanguageFeatures$Pairable;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_60

    .line 148
    move v2, v0

    :goto_1e
    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch10;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_72

    move v1, v3

    goto :goto_5

    :pswitch_2c
    move-object v2, v1

    check-cast v2, Llibcore/internal/Java21LanguageFeatures$PairableInt;

    .local v2, "a":Llibcore/internal/Java21LanguageFeatures$PairableInt;
    :try_start_2f
    invoke-virtual {p0}, Llibcore/internal/Java21LanguageFeatures$Pair;->b()Llibcore/internal/Java21LanguageFeatures$Pairable;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_60

    instance-of v4, v3, Llibcore/internal/Java21LanguageFeatures$PairableString;

    if-eqz v4, :cond_3b

    move-object v1, v3

    check-cast v1, Llibcore/internal/Java21LanguageFeatures$PairableString;

    .local v1, "b":Llibcore/internal/Java21LanguageFeatures$PairableString;
    goto :goto_5d

    .end local v1    # "b":Llibcore/internal/Java21LanguageFeatures$PairableString;
    :cond_3b
    const/4 v3, 0x3

    move v2, v3

    goto :goto_1e

    .line 147
    .end local v2    # "a":Llibcore/internal/Java21LanguageFeatures$PairableInt;
    :pswitch_3e
    check-cast v1, Llibcore/internal/Java21LanguageFeatures$PairableString;

    .local v1, "a":Llibcore/internal/Java21LanguageFeatures$PairableString;
    :try_start_40
    invoke-virtual {p0}, Llibcore/internal/Java21LanguageFeatures$Pair;->b()Llibcore/internal/Java21LanguageFeatures$Pairable;

    move-result-object v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_60

    .local v2, "b":Llibcore/internal/Java21LanguageFeatures$Pairable;
    goto :goto_5d

    .line 146
    .end local v1    # "a":Llibcore/internal/Java21LanguageFeatures$PairableString;
    .end local v2    # "b":Llibcore/internal/Java21LanguageFeatures$Pairable;
    :pswitch_45
    move-object v2, v1

    check-cast v2, Llibcore/internal/Java21LanguageFeatures$PairableInt;

    :try_start_48
    invoke-virtual {p0}, Llibcore/internal/Java21LanguageFeatures$Pair;->b()Llibcore/internal/Java21LanguageFeatures$Pairable;

    move-result-object v4
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_60

    instance-of v5, v4, Llibcore/internal/Java21LanguageFeatures$PairableInt;

    if-eqz v5, :cond_5e

    check-cast v4, Llibcore/internal/Java21LanguageFeatures$PairableInt;

    :try_start_52
    invoke-virtual {v2}, Llibcore/internal/Java21LanguageFeatures$PairableInt;->x()I

    move-result v1

    .local v1, "xa":I
    invoke-virtual {v4}, Llibcore/internal/Java21LanguageFeatures$PairableInt;->x()I

    move-result v2
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_60

    .local v2, "xb":I
    if-le v1, v2, :cond_5d

    move v0, v3

    .line 145
    .end local v1    # "xa":I
    .end local v2    # "xb":I
    :cond_5d
    :goto_5d
    return v0

    .line 148
    :cond_5e
    move v2, v3

    goto :goto_1e

    :catchall_60
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3e
        :pswitch_2c
    .end packed-switch
.end method

.method public static blacklist isLineVertical(Ljava/lang/Object;)Z
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .line 130
    instance-of v0, p0, Llibcore/internal/Java21LanguageFeatures$Line;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    move-object v0, p0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$Line;

    :try_start_8
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Line;->a()Llibcore/internal/Java21LanguageFeatures$Point;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_2d

    instance-of v3, v2, Llibcore/internal/Java21LanguageFeatures$Point;

    if-eqz v3, :cond_38

    :try_start_10
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Line;->b()Llibcore/internal/Java21LanguageFeatures$Point;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_2d

    instance-of v3, v0, Llibcore/internal/Java21LanguageFeatures$Point;

    if-eqz v3, :cond_38

    .line 131
    nop

    .line 130
    :try_start_19
    invoke-virtual {v2}, Llibcore/internal/Java21LanguageFeatures$Point;->x()I

    move-result v3

    .local v3, "xa":I
    invoke-virtual {v2}, Llibcore/internal/Java21LanguageFeatures$Point;->y()I

    move-result v2

    .line 131
    .local v2, "ya":I
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Point;->x()I

    move-result v4

    .local v4, "xb":I
    invoke-virtual {v0}, Llibcore/internal/Java21LanguageFeatures$Point;->y()I

    move-result v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2d

    .line 132
    .local v0, "yb":I
    if-ne v3, v4, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1

    .line 130
    .end local v0    # "yb":I
    .end local v2    # "ya":I
    .end local v3    # "xa":I
    .end local v4    # "xb":I
    :catchall_2d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 134
    :cond_38
    return v1
.end method

.method public static blacklist sumOfMembers(Llibcore/internal/Java21LanguageFeatures$AnyPair;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llibcore/internal/Java21LanguageFeatures$AnyPair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 163
    .local p0, "pair":Llibcore/internal/Java21LanguageFeatures$AnyPair;, "Llibcore/internal/Java21LanguageFeatures$AnyPair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch3;->getSwitchCases()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;->m(Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 164
    :pswitch_16
    :try_start_16
    invoke-virtual {p0}, Llibcore/internal/Java21LanguageFeatures$AnyPair;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2c

    check-cast v0, Ljava/lang/Integer;

    .local v0, "a":Ljava/lang/Integer;
    :try_start_1c
    invoke-virtual {p0}, Llibcore/internal/Java21LanguageFeatures$AnyPair;->b()Ljava/lang/Object;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_2c

    check-cast v1, Ljava/lang/Integer;

    .local v1, "b":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 163
    .end local v0    # "a":Ljava/lang/Integer;
    .end local v1    # "b":Ljava/lang/Integer;
    return v2

    .line 164
    :catchall_2c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method
