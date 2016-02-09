.class final Landroid/icu/text/Normalizer$NFKC32ModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFKC32ModeImpl"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;


# direct methods
.method static synthetic -get0()Landroid/icu/text/Normalizer$ModeImpl;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/Normalizer$NFKC32ModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 187
    new-instance v0, Landroid/icu/text/Normalizer$ModeImpl;

    #@2
    new-instance v1, Landroid/icu/text/FilteredNormalizer2;

    #@4
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKCInstance()Landroid/icu/text/Normalizer2;

    #@7
    move-result-object v2

    #@8
    .line 188
    invoke-static {}, Landroid/icu/text/Normalizer$Unicode32;->-get0()Landroid/icu/text/UnicodeSet;

    #@b
    move-result-object v3

    #@c
    .line 187
    invoke-direct {v1, v2, v3}, Landroid/icu/text/FilteredNormalizer2;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/UnicodeSet;)V

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$ModeImpl;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/Normalizer$ModeImpl;)V

    #@13
    .line 186
    sput-object v0, Landroid/icu/text/Normalizer$NFKC32ModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    #@15
    .line 185
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
