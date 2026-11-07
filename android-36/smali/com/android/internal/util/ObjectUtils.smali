.class public Lcom/android/internal/util/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(TT;TT;)I"
        }
    .end annotation

    .line 44
    .local p0, "a":Ljava/lang/Comparable;, "TT;"
    .local p1, "b":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_b

    .line 45
    if-eqz p1, :cond_9

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    .line 47
    :cond_b
    if-eqz p1, :cond_f

    const/4 v0, -0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist firstNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 37
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static blacklist getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 56
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "otherwise":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    return-object v0
.end method
