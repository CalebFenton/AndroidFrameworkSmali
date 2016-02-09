.class Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramsPlusLang"
.end annotation


# instance fields
.field fLang:Ljava/lang/String;

.field fNGrams:[I


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "la"    # Ljava/lang/String;
    .param p2, "ng"    # [I

    #@0
    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 285
    iput-object p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fLang:Ljava/lang/String;

    #@5
    .line 286
    iput-object p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fNGrams:[I

    #@7
    .line 284
    return-void
.end method
