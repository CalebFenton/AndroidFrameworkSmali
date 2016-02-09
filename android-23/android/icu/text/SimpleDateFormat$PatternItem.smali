.class Landroid/icu/text/SimpleDateFormat$PatternItem;
.super Ljava/lang/Object;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternItem"
.end annotation


# instance fields
.field final isNumeric:Z

.field final length:I

.field final type:C


# direct methods
.method constructor <init>(CI)V
    .locals 1
    .param p1, "type"    # C
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1935
    iput-char p1, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    #@5
    .line 1936
    iput p2, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    #@7
    .line 1937
    invoke-static {p1, p2}, Landroid/icu/text/SimpleDateFormat;->-wrap0(CI)Z

    #@a
    move-result v0

    #@b
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    #@d
    .line 1934
    return-void
.end method
