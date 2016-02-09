.class Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiDiIntProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;)V
    .locals 1
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;

    #@0
    .prologue
    .line 451
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    .line 452
    const/4 v0, 0x5

    #@3
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@6
    .line 451
    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1
    .param p1, "which"    # I

    #@0
    .prologue
    .line 455
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/UBiDiProps;->getMaxValue(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
