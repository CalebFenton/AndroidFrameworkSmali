.class Landroid/icu/impl/UCharacterProperty$23;
.super Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;
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
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "this$0_1"    # Landroid/icu/impl/UCharacterProperty;

    #@0
    .prologue
    .line 563
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$23;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1}, Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    #@5
    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 565
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/UBiDiProps;->getPairedBracketType(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
