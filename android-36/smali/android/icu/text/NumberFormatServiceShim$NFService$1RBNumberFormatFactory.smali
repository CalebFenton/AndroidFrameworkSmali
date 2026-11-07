.class Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;
.super Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/NumberFormatServiceShim$NFService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBNumberFormatFactory"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/NumberFormatServiceShim$NFService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/text/NumberFormatServiceShim$NFService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    .line 116
    invoke-static {p1, p2}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method
