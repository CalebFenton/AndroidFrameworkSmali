.class abstract Lsun/invoke/util/Wrapper$Format;
.super Ljava/lang/Object;
.source "Wrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/invoke/util/Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Format"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist BOOLEAN:I = 0x5

.field static final blacklist CHAR:I = 0x41

.field static final blacklist FLOAT:I = 0x1081

.field static final blacklist FLOATING:I = 0x1000

.field static final blacklist INT:I = -0xf7f

.field static final blacklist KIND_SHIFT:I = 0xc

.field static final blacklist NUM_MASK:I = -0x4

.field static final blacklist SHORT:I = -0xfbf

.field static final blacklist SIGNED:I = -0x1000

.field static final blacklist SIZE_MASK:I = 0x3ff

.field static final blacklist SIZE_SHIFT:I = 0x2

.field static final blacklist SLOT_MASK:I = 0x3

.field static final blacklist SLOT_SHIFT:I

.field static final blacklist UNSIGNED:I

.field static final blacklist VOID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const-class v0, Lsun/invoke/util/Wrapper;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist floating(I)I
    .registers 3
    .param p0, "size"    # I

    .line 106
    const/16 v0, 0x20

    if-le p0, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    const/16 v1, 0x1000

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0
.end method

.method static blacklist format(III)I
    .registers 5
    .param p0, "kind"    # I
    .param p1, "size"    # I
    .param p2, "slots"    # I

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 91
    nop

    .line 94
    shl-int/lit8 v0, p1, 0x2

    or-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method static blacklist other(I)I
    .registers 2
    .param p0, "slots"    # I

    .line 107
    shl-int/lit8 v0, p0, 0x0

    return v0
.end method

.method static blacklist signed(I)I
    .registers 3
    .param p0, "size"    # I

    .line 104
    const/16 v0, 0x20

    if-le p0, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    const/16 v1, -0x1000

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0
.end method

.method static blacklist unsigned(I)I
    .registers 3
    .param p0, "size"    # I

    .line 105
    const/16 v0, 0x20

    if-le p0, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lsun/invoke/util/Wrapper$Format;->format(III)I

    move-result v0

    return v0
.end method
