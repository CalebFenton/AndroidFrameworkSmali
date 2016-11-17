.class final enum Ljava/awt/font/NumericShaper$Range$1;
.super Ljava/awt/font/NumericShaper$Range;
.source "NumericShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/font/NumericShaper$Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 7
    .param p3, "$anonymous0"    # I
    .param p4, "$anonymous1"    # I
    .param p5, "$anonymous2"    # I

    #@0
    .prologue
    .line 234
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIIILjava/awt/font/NumericShaper$Range;)V

    #@a
    return-void
.end method


# virtual methods
.method getNumericBase()C
    .locals 1

    #@0
    .prologue
    .line 236
    const/4 v0, 0x1

    #@1
    return v0
.end method
