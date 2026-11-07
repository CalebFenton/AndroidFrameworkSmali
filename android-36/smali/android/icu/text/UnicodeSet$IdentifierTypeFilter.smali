.class final Landroid/icu/text/UnicodeSet$IdentifierTypeFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IdentifierTypeFilter"
.end annotation


# instance fields
.field blacklist idType:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "idType"    # I

    .line 3320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/UnicodeSet$IdentifierTypeFilter;->idType:I

    return-void
.end method


# virtual methods
.method public blacklist contains(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 3323
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/text/UnicodeSet$IdentifierTypeFilter;->idType:I

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->hasIDType(II)Z

    move-result v0

    return v0
.end method
