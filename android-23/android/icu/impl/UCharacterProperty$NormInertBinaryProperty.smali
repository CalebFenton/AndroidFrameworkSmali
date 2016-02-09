.class Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormInertBinaryProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "source"    # I
    .param p3, "which"    # I

    #@0
    .prologue
    .line 220
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    .line 222
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    #@7
    .line 220
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    #@2
    add-int/lit8 v0, v0, -0x25

    #@4
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isInert(I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
