.class Landroid/icu/text/UnicodeSet$CodePointIterator;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodePointIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p2, "unicodeSet"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5137
    new-instance p1, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    invoke-direct {p1, p2}, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;-><init>(Landroid/icu/text/UnicodeSet;)V

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$CodePointIterator;->cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    .line 5138
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 5142
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointIterator;->cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public blacklist next()Ljava/lang/Integer;
    .registers 2

    .line 5147
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$CodePointIterator;->cpi:Landroid/icu/text/UnicodeSet$CodePointIteratorInt;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet$CodePointIteratorInt;->next()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 5133
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$CodePointIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 5152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
