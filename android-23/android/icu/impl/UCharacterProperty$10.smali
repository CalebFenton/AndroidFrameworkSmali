.class Landroid/icu/impl/UCharacterProperty$10;
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
    .line 333
    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$10;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@5
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 337
    const/16 v1, 0x66

    #@3
    if-gt p1, v1, :cond_1

    #@5
    const/16 v1, 0x41

    #@7
    if-lt p1, v1, :cond_1

    #@9
    const/16 v1, 0x46

    #@b
    if-le p1, v1, :cond_0

    #@d
    const/16 v1, 0x61

    #@f
    if-lt p1, v1, :cond_1

    #@11
    .line 340
    :cond_0
    return v0

    #@12
    .line 338
    :cond_1
    const v1, 0xff21

    #@15
    if-lt p1, v1, :cond_2

    #@17
    const v1, 0xff46

    #@1a
    if-gt p1, v1, :cond_2

    #@1c
    const v1, 0xff26

    #@1f
    if-le p1, v1, :cond_0

    #@21
    const v1, 0xff41

    #@24
    if-ge p1, v1, :cond_0

    #@26
    .line 342
    :cond_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@29
    move-result v1

    #@2a
    const/16 v2, 0x9

    #@2c
    if-ne v1, v2, :cond_3

    #@2e
    :goto_0
    return v0

    #@2f
    :cond_3
    const/4 v0, 0x0

    #@30
    goto :goto_0
.end method
