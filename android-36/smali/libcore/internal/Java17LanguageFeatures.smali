.class public Llibcore/internal/Java17LanguageFeatures;
.super Ljava/lang/Object;
.source "Java17LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/internal/Java17LanguageFeatures$Triangle;,
        Llibcore/internal/Java17LanguageFeatures$Rectangle;,
        Llibcore/internal/Java17LanguageFeatures$Circle;,
        Llibcore/internal/Java17LanguageFeatures$Point;,
        Llibcore/internal/Java17LanguageFeatures$BaseSealedClass;,
        Llibcore/internal/Java17LanguageFeatures$NonSealedDerivedClass;,
        Llibcore/internal/Java17LanguageFeatures$FinalDerivedClass;,
        Llibcore/internal/Java17LanguageFeatures$Shape;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildPoint(II)Llibcore/internal/Java17LanguageFeatures$Point;
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 85
    new-instance v0, Llibcore/internal/Java17LanguageFeatures$Point;

    invoke-direct {v0, p0, p1}, Llibcore/internal/Java17LanguageFeatures$Point;-><init>(II)V

    return-object v0
.end method

.method public static blacklist calculateApproximateArea(Llibcore/internal/Java17LanguageFeatures$Shape;)I
    .registers 4
    .param p0, "s"    # Llibcore/internal/Java17LanguageFeatures$Shape;

    .line 41
    instance-of v0, p0, Llibcore/internal/Java17LanguageFeatures$Triangle;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Llibcore/internal/Java17LanguageFeatures$Triangle;

    .line 42
    .local v0, "t":Llibcore/internal/Java17LanguageFeatures$Triangle;
    iget v1, v0, Llibcore/internal/Java17LanguageFeatures$Triangle;->base:I

    iget v2, v0, Llibcore/internal/Java17LanguageFeatures$Triangle;->height:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1

    .line 43
    .end local v0    # "t":Llibcore/internal/Java17LanguageFeatures$Triangle;
    :cond_f
    instance-of v0, p0, Llibcore/internal/Java17LanguageFeatures$Rectangle;

    if-eqz v0, :cond_1c

    move-object v0, p0

    check-cast v0, Llibcore/internal/Java17LanguageFeatures$Rectangle;

    .line 44
    .local v0, "r":Llibcore/internal/Java17LanguageFeatures$Rectangle;
    iget v1, v0, Llibcore/internal/Java17LanguageFeatures$Rectangle;->length:I

    iget v2, v0, Llibcore/internal/Java17LanguageFeatures$Rectangle;->width:I

    mul-int/2addr v1, v2

    return v1

    .line 45
    .end local v0    # "r":Llibcore/internal/Java17LanguageFeatures$Rectangle;
    :cond_1c
    instance-of v0, p0, Llibcore/internal/Java17LanguageFeatures$Circle;

    if-eqz v0, :cond_2b

    move-object v0, p0

    check-cast v0, Llibcore/internal/Java17LanguageFeatures$Circle;

    .line 46
    .local v0, "c":Llibcore/internal/Java17LanguageFeatures$Circle;
    iget v1, v0, Llibcore/internal/Java17LanguageFeatures$Circle;->radius:I

    iget v2, v0, Llibcore/internal/Java17LanguageFeatures$Circle;->radius:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    return v1

    .line 48
    .end local v0    # "c":Llibcore/internal/Java17LanguageFeatures$Circle;
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getSealedClassId(Llibcore/internal/Java17LanguageFeatures$BaseSealedClass;)I
    .registers 2
    .param p0, "obj"    # Llibcore/internal/Java17LanguageFeatures$BaseSealedClass;

    .line 92
    invoke-virtual {p0}, Llibcore/internal/Java17LanguageFeatures$BaseSealedClass;->getId()I

    move-result v0

    return v0
.end method

.method public static blacklist getTextBlock()Ljava/lang/String;
    .registers 1

    .line 33
    const-string v0, "This is a\nmultiline\nstring."

    return-object v0
.end method
