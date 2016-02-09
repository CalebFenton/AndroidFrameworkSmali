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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Landroid/icu/text/Normalizer$Mode;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/Normalizer$NONEMode;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/Normalizer$NONEMode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getNormalizer2(I)Landroid/icu/text/Normalizer2;
    .locals 1
    .param p1, "options"    # I

    #@0
    .prologue
    .line 238
    sget-object v0, Landroid/icu/impl/Norm2AllModes;->NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    #@2
    return-object v0
.end method
