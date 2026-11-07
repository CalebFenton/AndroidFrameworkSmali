.class final Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;
.super Landroid/icu/util/LocaleMatcher$LsrIterator;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocaleLsrIterator"
.end annotation


# instance fields
.field private blacklist current:Ljava/util/Locale;

.field private blacklist locales:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist remembered:Ljava/util/Locale;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetremembered(Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->remembered:Ljava/util/Locale;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 803
    .local p1, "locales":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Locale;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/LocaleMatcher$LsrIterator;-><init>(Landroid/icu/util/LocaleMatcher-IA;)V

    .line 804
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->locales:Ljava/util/Iterator;

    .line 805
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 809
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public blacklist next()Landroid/icu/impl/locale/LSR;
    .registers 2

    .line 814
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->locales:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->current:Ljava/util/Locale;

    .line 815
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->current:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/LocaleMatcher;->-$$Nest$smgetMaximalLsrOrUnd(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 799
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->next()Landroid/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0
.end method

.method public blacklist rememberCurrent(I)V
    .registers 3
    .param p1, "desiredIndex"    # I

    .line 820
    iput p1, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->bestDesiredIndex:I

    .line 821
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->current:Ljava/util/Locale;

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LocaleLsrIterator;->remembered:Ljava/util/Locale;

    .line 822
    return-void
.end method
