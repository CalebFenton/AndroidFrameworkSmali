.class Landroid/icu/impl/UCharacterProperty$15;
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
    .line 498
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$15;->this$0:Landroid/icu/impl/UCharacterProperty;

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
    .line 503
    const/16 v0, 0x1d

    #@2
    return v0
.end method

.method getValue(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$15;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
