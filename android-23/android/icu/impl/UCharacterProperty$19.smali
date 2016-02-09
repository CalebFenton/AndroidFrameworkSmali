.class Landroid/icu/impl/UCharacterProperty$19;
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
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "this$0_1"    # Landroid/icu/impl/UCharacterProperty;
    .param p3, "$anonymous0"    # I
    .param p4, "$anonymous1"    # I
    .param p5, "$anonymous2"    # I

    #@0
    .prologue
    .line 525
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$19;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3, p4, p5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    #@5
    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 527
    invoke-static {p1}, Landroid/icu/lang/UScript;->getScript(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
