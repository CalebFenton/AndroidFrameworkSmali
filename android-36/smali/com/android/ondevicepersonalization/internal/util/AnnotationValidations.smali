.class public Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;
.super Ljava/lang/Object;
.source "AnnotationValidations.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
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

    .line 195
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

    invoke-static {v0, p1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
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

    .line 200
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_1e

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "paramPrefix":Ljava/lang/String;
    :goto_1e
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

    invoke-static {v1, p1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method private static blacklist invalid(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "valueKind"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 205
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

    .line 106
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/FloatRange;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_12
    const-string v0, "to"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_4c

    goto :goto_40

    .line 111
    :pswitch_21
    cmpl-float v0, p2, p4

    if-lez v0, :cond_40

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_40

    .line 108
    :pswitch_31
    cmpg-float v0, p2, p4

    if-gez v0, :cond_40

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_40
    :goto_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_21
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

    .line 99
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/FloatRange;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 100
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 101
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

    .line 54
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_12
    const-string v0, "to"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_4e

    goto :goto_42

    .line 61
    :pswitch_21
    int-to-long v0, p2

    cmp-long v0, v0, p4

    if-lez v0, :cond_42

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_42

    .line 56
    :pswitch_32
    int-to-long v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_42

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_42
    :goto_42
    return-void

    nop

    :sswitch_data_44
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_21
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

    .line 47
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-static/range {p0 .. p5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 48
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
    invoke-static/range {p0 .. p5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 49
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

    .line 82
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_12
    const-string v0, "to"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1d

    :goto_1c
    const/4 v0, -0x1

    :goto_1d
    packed-switch v0, :pswitch_data_4c

    goto :goto_40

    .line 89
    :pswitch_21
    cmp-long v0, p2, p5

    if-lez v0, :cond_40

    .line 90
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_40

    .line 84
    :pswitch_31
    cmp-long v0, p2, p5

    if-gez v0, :cond_40

    .line 85
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_40
    :goto_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_21
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

    .line 73
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/IntRange;>;"
    invoke-static/range {p0 .. p6}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 74
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
    invoke-static/range {p0 .. p6}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 75
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

    .line 118
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/NonNull;>;"
    if-eqz p2, :cond_3

    .line 121
    return-void

    .line 119
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

    .line 133
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/Size;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_72

    :cond_8
    goto :goto_31

    :sswitch_9
    const-string v0, "multiple"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_32

    :sswitch_13
    const-string v0, "value"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_32

    :sswitch_1d
    const-string v0, "min"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_32

    :sswitch_27
    const-string v0, "max"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_32

    :goto_31
    move v0, v1

    :goto_32
    packed-switch v0, :pswitch_data_84

    goto :goto_71

    .line 147
    :pswitch_36
    rem-int v0, p2, p4

    if-eqz v0, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_71

    .line 143
    :pswitch_46
    if-le p2, p4, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_71

    .line 139
    :pswitch_54
    if-ge p2, p4, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_71

    .line 135
    :pswitch_62
    if-eq p4, v1, :cond_71

    if-eq p2, p4, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_71
    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x1a564 -> :sswitch_27
        0x1a652 -> :sswitch_1d
        0x6ac9171 -> :sswitch_13
        0x26f8a610 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_62
        :pswitch_54
        :pswitch_46
        :pswitch_36
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

    .line 126
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/annotation/Size;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 127
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 128
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

    .line 174
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "android.annotation"

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 175
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    const-class v0, Landroid/annotation/ColorInt;

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 177
    :cond_20
    if-gez p2, :cond_29

    .line 178
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 181
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

    .line 169
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

    .line 186
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "android.annotation"

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 187
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 188
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_25

    .line 189
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
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

    .line 163
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

    .line 157
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method
