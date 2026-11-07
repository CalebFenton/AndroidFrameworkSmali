.class Landroid/icu/impl/number/parse/ParsedNumber$1;
.super Ljava/lang/Object;
.source "ParsedNumber.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/parse/ParsedNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/impl/number/parse/ParsedNumber;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/icu/impl/number/parse/ParsedNumber;Landroid/icu/impl/number/parse/ParsedNumber;)I
    .registers 5
    .param p1, "o1"    # Landroid/icu/impl/number/parse/ParsedNumber;
    .param p2, "o2"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 66
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    iget v1, p2, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 63
    check-cast p1, Landroid/icu/impl/number/parse/ParsedNumber;

    check-cast p2, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/parse/ParsedNumber$1;->compare(Landroid/icu/impl/number/parse/ParsedNumber;Landroid/icu/impl/number/parse/ParsedNumber;)I

    move-result p1

    return p1
.end method
