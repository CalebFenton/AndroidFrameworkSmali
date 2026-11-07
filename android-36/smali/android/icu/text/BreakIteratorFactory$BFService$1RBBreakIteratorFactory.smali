.class Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;
.super Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/BreakIteratorFactory$BFService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBBreakIteratorFactory"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/BreakIteratorFactory$BFService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/text/BreakIteratorFactory$BFService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    .line 88
    invoke-static {p1, p2}, Landroid/icu/text/BreakIteratorFactory;->-$$Nest$smcreateBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method
