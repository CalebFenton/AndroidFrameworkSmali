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


# instance fields
.field final synthetic this$1:Landroid/icu/text/BreakIteratorFactory$BFService;


# direct methods
.method constructor <init>(Landroid/icu/text/BreakIteratorFactory$BFService;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/text/BreakIteratorFactory$BFService;

    #@0
    .prologue
    .line 77
    iput-object p1, p0, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;->this$1:Landroid/icu/text/BreakIteratorFactory$BFService;

    #@2
    invoke-direct {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    .line 79
    invoke-static {p1, p2}, Landroid/icu/text/BreakIteratorFactory;->-wrap0(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
