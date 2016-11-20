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
        "Landroid/icu/text/Transform",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final norm2:Landroid/icu/text/Normalizer2;


# direct methods
.method public constructor <init>(Landroid/icu/text/Normalizer2;)V
    .locals 0
    .param p1, "norm2"    # Landroid/icu/text/Normalizer2;

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    iput-object p1, p0, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Landroid/icu/text/Normalizer2;

    #@5
    .line 136
    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 139
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Landroid/icu/text/Normalizer2;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
