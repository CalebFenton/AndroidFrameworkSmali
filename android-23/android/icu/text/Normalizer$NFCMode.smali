.class final Landroid/icu/text/Normalizer$NFCMode;
.super Landroid/icu/text/Normalizer$Mode;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFCMode"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Landroid/icu/text/Normalizer$Mode;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/Normalizer$NFCMode;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/Normalizer$NFCMode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getNormalizer2(I)Landroid/icu/text/Normalizer2;
    .locals 1
    .param p1, "options"    # I

    #@0
    .prologue
    .line 254
    and-int/lit8 v0, p1, 0x20

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 255
    invoke-static {}, Landroid/icu/text/Normalizer$NFC32ModeImpl;->-get0()Landroid/icu/text/Normalizer$ModeImpl;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/icu/text/Normalizer$ModeImpl;->-get0(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    #@b
    move-result-object v0

    #@c
    .line 254
    :goto_0
    return-object v0

    #@d
    .line 255
    :cond_0
    invoke-static {}, Landroid/icu/text/Normalizer$NFCModeImpl;->-get0()Landroid/icu/text/Normalizer$ModeImpl;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/icu/text/Normalizer$ModeImpl;->-get0(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    #@14
    move-result-object v0

    #@15
    goto :goto_0
.end method
