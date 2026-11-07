.class public Lcom/android/internal/util/AnnotationValidations;
.super Ljava/lang/Object;
.source "AnnotationValidations.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist invalid(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 222
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private static blacklist invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 227
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string/jumbo v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    goto :goto_1f

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "paramPrefix":Ljava/lang/String;
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method private static blacklist invalid(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "valueKind"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/AppIdInt;I)V
    .registers 4
    .param p1, "ignored"    # Landroid/annotation/AppIdInt;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/AppIdInt;",
            ">;",
            "Landroid/annotation/AppIdInt;",
            "I)V"
        }
    .end annotation

    .line 58
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/AppIdInt;>;"
    const v0, 0x186a0

    div-int v0, p2, v0

    if-nez v0, :cond_9

    if-gez p2, :cond_10

    .line 59
    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    :cond_10
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V
    .registers 7
    .param p1, "ignored"    # Landroid/annotation/FloatRange;
    .param p2, "value"    # F
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "param"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 121
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/FloatRange;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    :cond_7
    goto :goto_1d

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_12
    const-string/jumbo v0, "to"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1e

    :goto_1d
    const/4 v0, -0x1

    :goto_1e
    packed-switch v0, :pswitch_data_4c

    goto :goto_41

    .line 123
    :pswitch_22
    cmpl-float v0, p2, p4

    if-lez v0, :cond_41

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    .line 122
    :pswitch_32
    cmpg-float v0, p2, p4

    if-gez v0, :cond_41

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_41
    :goto_41
    return-void

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;FLjava/lang/String;F)V
    .registers 7
    .param p1, "ignored"    # Landroid/annotation/FloatRange;
    .param p2, "value"    # F
    .param p3, "paramName1"    # Ljava/lang/String;
    .param p4, "param1"    # F
    .param p5, "paramName2"    # Ljava/lang/String;
    .param p6, "param2"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 115
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/FloatRange;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 116
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 117
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V
    .registers 8
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # I
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "param"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 71
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    :cond_7
    goto :goto_1d

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_12
    const-string/jumbo v0, "to"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1e

    :goto_1d
    const/4 v0, -0x1

    :goto_1e
    packed-switch v0, :pswitch_data_4e

    goto :goto_43

    .line 78
    :pswitch_22
    int-to-long v0, p2

    cmp-long v0, v0, p4

    if-lez v0, :cond_43

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_43

    .line 73
    :pswitch_33
    int-to-long v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_43

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_43
    :goto_43
    return-void

    :sswitch_data_44
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_33
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V
    .registers 12
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # I
    .param p3, "paramName1"    # Ljava/lang/String;
    .param p4, "param1"    # J
    .param p6, "paramName2"    # Ljava/lang/String;
    .param p7, "param2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 65
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 66
    move-object v0, p3

    move-wide v1, p4

    .end local p3    # "paramName1":Ljava/lang/String;
    .end local p4    # "param1":J
    .local v0, "paramName1":Ljava/lang/String;
    .local v1, "param1":J
    move-object p3, p6

    move-wide p4, p7

    .end local p6    # "paramName2":Ljava/lang/String;
    .end local p7    # "param2":J
    .local p3, "paramName2":Ljava/lang/String;
    .local p4, "param2":J
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 67
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V
    .registers 9
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # J
    .param p4, "paramName"    # Ljava/lang/String;
    .param p5, "param"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 99
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    :cond_7
    goto :goto_1d

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_12
    const-string/jumbo v0, "to"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1e

    :goto_1d
    const/4 v0, -0x1

    :goto_1e
    packed-switch v0, :pswitch_data_4c

    goto :goto_41

    .line 106
    :pswitch_22
    cmp-long v0, p2, p5

    if-lez v0, :cond_41

    .line 107
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    .line 101
    :pswitch_32
    cmp-long v0, p2, p5

    if-gez v0, :cond_41

    .line 102
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_41
    :goto_41
    return-void

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;JLjava/lang/String;J)V
    .registers 13
    .param p1, "ignored"    # Landroid/annotation/IntRange;
    .param p2, "value"    # J
    .param p4, "paramName1"    # Ljava/lang/String;
    .param p5, "param1"    # J
    .param p7, "paramName2"    # Ljava/lang/String;
    .param p8, "param2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 90
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 91
    move-object v0, p4

    move-wide v1, p5

    .end local p4    # "paramName1":Ljava/lang/String;
    .end local p5    # "param1":J
    .local v0, "paramName1":Ljava/lang/String;
    .local v1, "param1":J
    move-object p4, p7

    move-wide p5, p8

    .end local p7    # "paramName2":Ljava/lang/String;
    .end local p8    # "param2":J
    .local p4, "paramName2":Ljava/lang/String;
    .local p5, "param2":J
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 92
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V
    .registers 4
    .param p1, "ignored"    # Landroid/annotation/NonNull;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/NonNull;",
            ">;",
            "Landroid/annotation/NonNull;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 128
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/NonNull;>;"
    if-eqz p2, :cond_3

    .line 131
    return-void

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V
    .registers 7
    .param p1, "ignored"    # Landroid/annotation/Size;
    .param p2, "value"    # I
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "param"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 141
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/Size;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_74

    :cond_8
    goto :goto_32

    :sswitch_9
    const-string v0, "multiple"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_33

    :sswitch_13
    const-string/jumbo v0, "value"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_33

    :sswitch_1e
    const-string v0, "min"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_33

    :sswitch_28
    const-string v0, "max"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_33

    :goto_32
    move v0, v1

    :goto_33
    packed-switch v0, :pswitch_data_86

    goto :goto_72

    .line 152
    :pswitch_37
    rem-int v0, p2, p4

    if-eqz v0, :cond_72

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_72

    .line 149
    :pswitch_47
    if-le p2, p4, :cond_72

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_72

    .line 146
    :pswitch_55
    if-ge p2, p4, :cond_72

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_72

    .line 143
    :pswitch_63
    if-eq p4, v1, :cond_72

    if-eq p2, p4, :cond_72

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_72
    :goto_72
    return-void

    nop

    :sswitch_data_74
    .sparse-switch
        0x1a564 -> :sswitch_28
        0x1a652 -> :sswitch_1e
        0x6ac9171 -> :sswitch_13
        0x26f8a610 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_63
        :pswitch_55
        :pswitch_47
        :pswitch_37
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .param p1, "ignored"    # Landroid/annotation/Size;
    .param p2, "value"    # I
    .param p3, "paramName1"    # Ljava/lang/String;
    .param p4, "param1"    # I
    .param p5, "paramName2"    # Ljava/lang/String;
    .param p6, "param2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 135
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/Size;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 136
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 137
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V
    .registers 4
    .param p1, "ignored"    # Landroid/annotation/UserIdInt;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/UserIdInt;",
            ">;",
            "Landroid/annotation/UserIdInt;",
            "I)V"
        }
    .end annotation

    .line 51
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/UserIdInt;>;"
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_7

    const/4 v0, -0x3

    if-lt p2, v0, :cond_b

    :cond_7
    const/16 v0, 0x53e2

    if-le p2, v0, :cond_12

    .line 53
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    :cond_12
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/Intent$Flags;I)V
    .registers 4
    .param p1, "ignored"    # Landroid/content/Intent$Flags;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/Intent$Flags;",
            ">;",
            "Landroid/content/Intent$Flags;",
            "I)V"
        }
    .end annotation

    .line 170
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/Intent$Flags;>;"
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validateIntFlags(Ljava/lang/Class;II)V

    .line 171
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PackageInfoFlagsBits;J)V
    .registers 5
    .param p1, "ignored"    # Landroid/content/pm/PackageManager$PackageInfoFlagsBits;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            ">;",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            "J)V"
        }
    .end annotation

    .line 164
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/pm/PackageManager$PackageInfoFlagsBits;>;"
    nop

    .line 165
    const/high16 v0, 0x20000000

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    .line 164
    invoke-static {p0, p2, p3, v0}, Lcom/android/internal/util/AnnotationValidations;->validateLongFlags(Ljava/lang/Class;JI)V

    .line 166
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PermissionResult;I)V
    .registers 4
    .param p1, "ignored"    # Landroid/content/pm/PackageManager$PermissionResult;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            ">;",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            "I)V"
        }
    .end annotation

    .line 159
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/pm/PackageManager$PermissionResult;>;"
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validateIntEnum(Ljava/lang/Class;II)V

    .line 160
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V
    .registers 5
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I)V"
        }
    .end annotation

    .line 185
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "android.annotation"

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 186
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    const-class v0, Landroid/annotation/ColorInt;

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 188
    :cond_20
    if-gez p2, :cond_29

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
    :cond_29
    return-void
.end method

.method public static varargs blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # I
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V
    .registers 6
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "J)V"
        }
    .end annotation

    .line 195
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "android.annotation"

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 196
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_25

    .line 198
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 201
    :cond_25
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V
    .registers 3
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method public static varargs blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "ignored"    # Ljava/lang/annotation/Annotation;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method private static blacklist validateIntEnum(Ljava/lang/Class;II)V
    .registers 4
    .param p1, "value"    # I
    .param p2, "lastValid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    .line 205
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-le p1, p2, :cond_9

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 208
    :cond_9
    return-void
.end method

.method private static blacklist validateIntFlags(Ljava/lang/Class;II)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "validBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    .line 211
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    and-int v0, p2, p1

    if-eq v0, p2, :cond_1e

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 214
    :cond_1e
    return-void
.end method

.method private static blacklist validateLongFlags(Ljava/lang/Class;JI)V
    .registers 8
    .param p1, "value"    # J
    .param p3, "validBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;JI)V"
        }
    .end annotation

    .line 217
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    int-to-long v0, p3

    and-long/2addr v0, p1

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 220
    :cond_21
    return-void
.end method
