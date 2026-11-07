.class public Landroid/text/AndroidCharacter;
.super Ljava/lang/Object;
.source "AndroidCharacter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EAST_ASIAN_WIDTH_AMBIGUOUS:I = 0x1

.field public static final whitelist EAST_ASIAN_WIDTH_FULL_WIDTH:I = 0x3

.field public static final whitelist EAST_ASIAN_WIDTH_HALF_WIDTH:I = 0x2

.field public static final whitelist EAST_ASIAN_WIDTH_NARROW:I = 0x4

.field public static final whitelist EAST_ASIAN_WIDTH_NEUTRAL:I = 0x0

.field public static final whitelist EAST_ASIAN_WIDTH_WIDE:I = 0x5


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist getDirectionalities([C[BI)V
.end method

.method public static native whitelist getEastAsianWidth(C)I
.end method

.method public static native whitelist getEastAsianWidths([CII[B)V
.end method

.method public static native whitelist getMirror(C)C
.end method

.method public static native whitelist mirror([CII)Z
.end method
