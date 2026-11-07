.class Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;
.super Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_32_BE"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getChar([BI)I
    .registers 5
    .param p1, "input"    # [B
    .param p2, "index"    # I

    .line 186
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 193
    const-string v0, "UTF-32BE"

    return-object v0
.end method
