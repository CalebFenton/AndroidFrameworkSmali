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
.field blacklist fLang:Ljava/lang/String;

.field blacklist fNGrams:[I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;[I)V
    .registers 3
    .param p1, "la"    # Ljava/lang/String;
    .param p2, "ng"    # [I

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fLang:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fNGrams:[I

    .line 292
    return-void
.end method
