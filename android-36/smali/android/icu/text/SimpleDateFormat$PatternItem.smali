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
.field final greylist-max-o isNumeric:Z

.field final greylist-max-o length:I

.field final greylist-max-o type:C


# direct methods
.method constructor greylist-max-o <init>(CI)V
    .registers 4
    .param p1, "type"    # C
    .param p2, "length"    # I

    .line 1796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    iput-char p1, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 1798
    iput p2, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    .line 1799
    invoke-static {p1, p2}, Landroid/icu/text/SimpleDateFormat;->-$$Nest$smisNumeric(CI)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    .line 1800
    return-void
.end method
