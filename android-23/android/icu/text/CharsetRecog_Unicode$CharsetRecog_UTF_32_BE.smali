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
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getChar([BI)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 174
    add-int/lit8 v0, p2, 0x0

    #@2
    aget-byte v0, p1, v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    shl-int/lit8 v0, v0, 0x18

    #@8
    add-int/lit8 v1, p2, 0x1

    #@a
    aget-byte v1, p1, v1

    #@c
    and-int/lit16 v1, v1, 0xff

    #@e
    shl-int/lit8 v1, v1, 0x10

    #@10
    or-int/2addr v0, v1

    #@11
    .line 175
    add-int/lit8 v1, p2, 0x2

    #@13
    aget-byte v1, p1, v1

    #@15
    and-int/lit16 v1, v1, 0xff

    #@17
    shl-int/lit8 v1, v1, 0x8

    #@19
    .line 174
    or-int/2addr v0, v1

    #@1a
    .line 175
    add-int/lit8 v1, p2, 0x3

    #@1c
    aget-byte v1, p1, v1

    #@1e
    and-int/lit16 v1, v1, 0xff

    #@20
    .line 174
    or-int/2addr v0, v1

    #@21
    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    const-string/jumbo v0, "UTF-32BE"

    #@3
    return-object v0
.end method
