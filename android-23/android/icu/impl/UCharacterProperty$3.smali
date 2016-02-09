.class Landroid/icu/impl/UCharacterProperty$3;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "this$0_1"    # Landroid/icu/impl/UCharacterProperty;
    .param p3, "$anonymous0"    # I

    #@0
    .prologue
    .line 251
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$3;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 254
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@3
    move-result-object v1

    #@4
    iget-object v0, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@6
    .line 255
    .local v0, "impl":Landroid/icu/impl/Normalizer2Impl;
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->isCompNo(I)Z

    #@d
    move-result v1

    #@e
    return v1
.end method
