.class public Landroid/text/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o init()V
    .registers 0

    .line 30
    invoke-static {}, Landroid/text/Hyphenator;->nInit()V

    .line 31
    return-void
.end method

.method private static native greylist-max-o nInit()V
.end method
