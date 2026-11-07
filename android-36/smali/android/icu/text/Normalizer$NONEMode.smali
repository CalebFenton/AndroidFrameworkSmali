.class final Landroid/icu/text/Normalizer$NONEMode;
.super Landroid/icu/text/Normalizer$Mode;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NONEMode"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Landroid/icu/text/Normalizer$Mode;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/Normalizer-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/Normalizer$NONEMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o getNormalizer2(I)Landroid/icu/text/Normalizer2;
    .registers 3
    .param p1, "options"    # I

    .line 255
    sget-object v0, Landroid/icu/impl/Norm2AllModes;->NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    return-object v0
.end method
