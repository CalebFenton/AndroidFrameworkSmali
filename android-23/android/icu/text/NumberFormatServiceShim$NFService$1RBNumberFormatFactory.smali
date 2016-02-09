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


# instance fields
.field final synthetic this$1:Landroid/icu/text/NumberFormatServiceShim$NFService;


# direct methods
.method constructor <init>(Landroid/icu/text/NumberFormatServiceShim$NFService;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/text/NumberFormatServiceShim$NFService;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;->this$1:Landroid/icu/text/NumberFormatServiceShim$NFService;

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
    .line 110
    invoke-static {p1, p2}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
