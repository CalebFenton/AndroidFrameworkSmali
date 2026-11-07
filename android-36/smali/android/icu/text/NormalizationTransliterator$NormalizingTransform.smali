.class Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;
.super Ljava/lang/Object;
.source "NormalizationTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NormalizationTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NormalizingTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/text/Transform<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist norm2:Landroid/icu/text/Normalizer2;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/Normalizer2;)V
    .registers 2
    .param p1, "norm2"    # Landroid/icu/text/Normalizer2;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Landroid/icu/text/Normalizer2;

    .line 147
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 143
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
