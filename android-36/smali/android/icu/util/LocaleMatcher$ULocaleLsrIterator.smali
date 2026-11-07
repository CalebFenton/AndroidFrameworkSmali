.class final Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;
.super Landroid/icu/util/LocaleMatcher$LsrIterator;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ULocaleLsrIterator"
.end annotation


# instance fields
.field private blacklist current:Landroid/icu/util/ULocale;

.field private blacklist locales:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist remembered:Landroid/icu/util/ULocale;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetremembered(Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->remembered:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/icu/util/ULocale;",
            ">;)V"
        }
    .end annotation

    .line 777
    .local p1, "locales":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/util/ULocale;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/LocaleMatcher$LsrIterator;-><init>(Landroid/icu/util/LocaleMatcher-IA;)V

    .line 778
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->locales:Ljava/util/Iterator;

    .line 779
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 783
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public blacklist next()Landroid/icu/impl/locale/LSR;
    .registers 2

    .line 788
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->current:Landroid/icu/util/ULocale;

    .line 789
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->current:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/LocaleMatcher;->-$$Nest$smgetMaximalLsrOrUnd(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 773
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->next()Landroid/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public blacklist rememberCurrent(I)V
    .registers 3
    .param p1, "desiredIndex"    # I

    .line 794
    iput p1, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->bestDesiredIndex:I

    .line 795
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->current:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$ULocaleLsrIterator;->remembered:Landroid/icu/util/ULocale;

    .line 796
    return-void
.end method
