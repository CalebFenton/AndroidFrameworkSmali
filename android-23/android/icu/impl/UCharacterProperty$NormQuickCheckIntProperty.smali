.class Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormQuickCheckIntProperty"
.end annotation


# instance fields
.field max:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "source"    # I
    .param p3, "which"    # I
    .param p4, "max"    # I

    #@0
    .prologue
    .line 471
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    .line 472
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    .line 473
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    #@7
    .line 474
    iput p4, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    #@9
    .line 471
    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 480
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    #@2
    return v0
.end method

.method getValue(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 477
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    #@2
    add-int/lit16 v0, v0, -0x100c

    #@4
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->getQuickCheck(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method
