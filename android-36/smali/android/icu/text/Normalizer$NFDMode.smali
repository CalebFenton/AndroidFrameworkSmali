.class final Landroid/icu/text/Normalizer$NFDMode;
.super Landroid/icu/text/Normalizer$Mode;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFDMode"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Landroid/icu/text/Normalizer$Mode;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/Normalizer-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/Normalizer$NFDMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o getNormalizer2(I)Landroid/icu/text/Normalizer2;
    .registers 3
    .param p1, "options"    # I

    .line 260
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_9

    .line 261
    invoke-static {}, Landroid/icu/text/Normalizer$NFD32ModeImpl;->-$$Nest$sfgetINSTANCE()Landroid/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {}, Landroid/icu/text/Normalizer$NFDModeImpl;->-$$Nest$sfgetINSTANCE()Landroid/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    :goto_d
    invoke-static {v0}, Landroid/icu/text/Normalizer$ModeImpl;->-$$Nest$fgetnormalizer2(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    move-result-object v0

    .line 260
    return-object v0
.end method
