.class final Landroid/icu/text/SpoofChecker$ConfusableDataUtils;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfusableDataUtils"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o FORMAT_VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1803
    const-class v0, Landroid/icu/text/SpoofChecker;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist-max-o codePointAndLengthToKey(II)I
    .registers 3
    .param p0, "codePoint"    # I
    .param p1, "length"    # I

    .line 1815
    nop

    .line 1816
    nop

    .line 1817
    add-int/lit8 v0, p1, -0x1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, p0

    return v0
.end method

.method public static final greylist-max-o keyToCodePoint(I)I
    .registers 2
    .param p0, "key"    # I

    .line 1807
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static final greylist-max-o keyToLength(I)I
    .registers 2
    .param p0, "key"    # I

    .line 1811
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
