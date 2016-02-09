.class Landroid/icu/impl/UCharacterProperty$18;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
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
    .line 517
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$18;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 522
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method getValue(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$18;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->-wrap1(I)I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->-wrap2(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method
