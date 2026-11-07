.class Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;
.super Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CollatorServiceShim$CService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollatorFactory"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/CollatorServiceShim$CService;)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/text/CollatorServiceShim$CService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    const-string v0, "android/icu/impl/data/icudata/coll"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected blacklist handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5
    .param p1, "uloc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    .line 143
    invoke-static {p1}, Landroid/icu/text/CollatorServiceShim;->-$$Nest$smmakeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method
