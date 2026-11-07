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
.field blacklist which:I


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .registers 4
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 353
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 354
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    .line 355
    return-void
.end method


# virtual methods
.method blacklist contains(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 358
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCaseProps;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method
