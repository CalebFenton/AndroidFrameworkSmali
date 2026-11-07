.class abstract Landroid/media/internal/guava_common/collect/Cut;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/Cut$AboveValue;,
        Landroid/media/internal/guava_common/collect/Cut$BelowAll;,
        Landroid/media/internal/guava_common/collect/Cut$AboveAll;,
        Landroid/media/internal/guava_common/collect/Cut$BelowValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/media/internal/guava_common/collect/Cut<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist endpoint:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Comparable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    return-void
.end method

.method static blacklist aboveAll()Landroid/media/internal/guava_common/collect/Cut;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 225
    # getter for: Landroid/media/internal/guava_common/collect/Cut$AboveAll;->INSTANCE:Landroid/media/internal/guava_common/collect/Cut$AboveAll;
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut$AboveAll;->access$100()Landroid/media/internal/guava_common/collect/Cut$AboveAll;

    move-result-object v0

    return-object v0
.end method

.method static blacklist aboveValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 395
    new-instance v0, Landroid/media/internal/guava_common/collect/Cut$AboveValue;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static blacklist belowAll()Landroid/media/internal/guava_common/collect/Cut;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 118
    # getter for: Landroid/media/internal/guava_common/collect/Cut$BelowAll;->INSTANCE:Landroid/media/internal/guava_common/collect/Cut$BelowAll;
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut$BelowAll;->access$000()Landroid/media/internal/guava_common/collect/Cut$BelowAll;

    move-result-object v0

    return-object v0
.end method

.method static blacklist belowValue(Ljava/lang/Comparable;)Landroid/media/internal/guava_common/collect/Cut;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 311
    new-instance v0, Landroid/media/internal/guava_common/collect/Cut$BelowValue;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Cut$BelowValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public blacklist compareTo(Landroid/media/internal/guava_common/collect/Cut;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;)I"
        }
    .end annotation

    .line 74
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->belowAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 77
    :cond_8
    invoke-static {}, Landroid/media/internal/guava_common/collect/Cut;->aboveAll()Landroid/media/internal/guava_common/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 80
    :cond_10
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    iget-object v1, p1, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 85
    :cond_1b
    instance-of p0, p0, Landroid/media/internal/guava_common/collect/Cut$AboveValue;

    instance-of p1, p1, Landroid/media/internal/guava_common/collect/Cut$AboveValue;

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    check-cast p1, Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result p0

    return p0
.end method

.method abstract blacklist describeAsLowerBound(Ljava/lang/StringBuilder;)V
.end method

.method abstract blacklist describeAsUpperBound(Ljava/lang/StringBuilder;)V
.end method

.method blacklist endpoint()Ljava/lang/Comparable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 95
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 97
    check-cast p1, Landroid/media/internal/guava_common/collect/Cut;

    .line 99
    :try_start_7
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Cut;->compareTo(Landroid/media/internal/guava_common/collect/Cut;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_b} :catch_f

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :catch_f
    :cond_f
    return v1
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method abstract blacklist isLessThan(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method
