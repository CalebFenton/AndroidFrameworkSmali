.class public Landroid/net/connectivity/javax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/javax/annotation/Nonnegative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/javax/annotation/meta/TypeQualifierValidator<",
        "Landroid/net/connectivity/javax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist forConstantValue(Landroid/net/connectivity/javax/annotation/Nonnegative;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 11
    .param p1, "annotation"    # Landroid/net/connectivity/javax/annotation/Nonnegative;
    .param p2, "v"    # Ljava/lang/Object;

    .line 21
    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_7

    .line 22
    sget-object v0, Landroid/net/connectivity/javax/annotation/meta/When;->NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v0

    .line 24
    :cond_7
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    .line 25
    .local v0, "value":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    .local v2, "isNegative":Z
    :goto_1c
    goto :goto_46

    .line 27
    .end local v2    # "isNegative":Z
    :cond_1d
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2e

    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    .restart local v2    # "isNegative":Z
    :goto_2d
    goto :goto_46

    .line 29
    .end local v2    # "isNegative":Z
    :cond_2e
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_3e

    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    .restart local v2    # "isNegative":Z
    :goto_3d
    goto :goto_46

    .line 32
    .end local v2    # "isNegative":Z
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    .line 34
    .restart local v2    # "isNegative":Z
    :goto_46
    if-eqz v2, :cond_4b

    .line 35
    sget-object v1, Landroid/net/connectivity/javax/annotation/meta/When;->NEVER:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v1

    .line 37
    :cond_4b
    sget-object v1, Landroid/net/connectivity/javax/annotation/meta/When;->ALWAYS:Landroid/net/connectivity/javax/annotation/meta/When;

    return-object v1
.end method

.method public bridge synthetic blacklist forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    check-cast p1, Landroid/net/connectivity/javax/annotation/Nonnegative;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/javax/annotation/Nonnegative$Checker;->forConstantValue(Landroid/net/connectivity/javax/annotation/Nonnegative;Ljava/lang/Object;)Landroid/net/connectivity/javax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method
