.class Landroid/icu/text/AlphabeticIndex$1;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/text/AlphabeticIndex$Record<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/text/AlphabeticIndex;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/AlphabeticIndex;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/text/AlphabeticIndex;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$1;, "Landroid/icu/text/AlphabeticIndex$1;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$1;->this$0:Landroid/icu/text/AlphabeticIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/icu/text/AlphabeticIndex$Record;Landroid/icu/text/AlphabeticIndex$Record;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;",
            "Landroid/icu/text/AlphabeticIndex$Record<",
            "TV;>;)I"
        }
    .end annotation

    .line 145
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$1;, "Landroid/icu/text/AlphabeticIndex$1;"
    .local p1, "o1":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    .local p2, "o2":Landroid/icu/text/AlphabeticIndex$Record;, "Landroid/icu/text/AlphabeticIndex$Record<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$1;->this$0:Landroid/icu/text/AlphabeticIndex;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex;->-$$Nest$fgetcollatorOriginal(Landroid/icu/text/AlphabeticIndex;)Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/text/AlphabeticIndex$Record;->-$$Nest$fgetname(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2}, Landroid/icu/text/AlphabeticIndex$Record;->-$$Nest$fgetname(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

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

    .line 142
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$1;, "Landroid/icu/text/AlphabeticIndex$1;"
    check-cast p1, Landroid/icu/text/AlphabeticIndex$Record;

    check-cast p2, Landroid/icu/text/AlphabeticIndex$Record;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$1;->compare(Landroid/icu/text/AlphabeticIndex$Record;Landroid/icu/text/AlphabeticIndex$Record;)I

    move-result p1

    return p1
.end method
