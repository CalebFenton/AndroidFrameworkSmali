.class Landroid/icu/impl/UCharacterProperty$7;
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
    .line 306
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$7;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 4
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 309
    const/16 v2, 0x9f

    #@4
    if-gt p1, v2, :cond_2

    #@6
    .line 310
    const/16 v2, 0x9

    #@8
    if-eq p1, v2, :cond_0

    #@a
    const/16 v2, 0x20

    #@c
    if-ne p1, v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0

    #@11
    .line 313
    :cond_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@14
    move-result v2

    #@15
    const/16 v3, 0xc

    #@17
    if-ne v2, v3, :cond_3

    #@19
    :goto_1
    return v0

    #@1a
    :cond_3
    move v0, v1

    #@1b
    goto :goto_1
.end method
