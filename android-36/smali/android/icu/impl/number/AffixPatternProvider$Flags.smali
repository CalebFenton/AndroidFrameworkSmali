.class public final Landroid/icu/impl/number/AffixPatternProvider$Flags;
.super Ljava/lang/Object;
.source "AffixPatternProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/AffixPatternProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flags"
.end annotation


# static fields
.field public static final blacklist NEGATIVE_SUBPATTERN:I = 0x200

.field public static final blacklist PADDING:I = 0x400

.field public static final blacklist PLURAL_MASK:I = 0xff

.field public static final blacklist PREFIX:I = 0x100


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
