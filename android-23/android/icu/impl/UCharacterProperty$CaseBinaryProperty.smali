.class Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaseBinaryProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 209
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    #@2
    .line 210
    const/4 v0, 0x4

    #@3
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    #@6
    .line 211
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    #@8
    .line 209
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 214
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@2
    iget v1, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCaseProps;->hasBinaryProperty(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
