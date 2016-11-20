.class final Landroid/icu/text/NormalizationTransliterator$5;
.super Ljava/lang/Object;
.source "NormalizationTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/NormalizationTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 4
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/icu/text/NormalizationTransliterator;

    #@2
    const-string/jumbo v1, "FCD"

    #@5
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getFCDNormalizer2()Landroid/icu/text/Normalizer2;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;Landroid/icu/text/NormalizationTransliterator;)V

    #@d
    return-object v0
.end method
