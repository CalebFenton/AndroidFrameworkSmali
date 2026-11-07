.class Landroid/icu/text/NormalizationTransliterator$3;
.super Ljava/lang/Object;
.source "NormalizationTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/NormalizationTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .registers 6
    .param p1, "ID"    # Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/icu/text/NormalizationTransliterator;

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "NFKC"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;Landroid/icu/text/NormalizationTransliterator-IA;)V

    return-object v0
.end method
