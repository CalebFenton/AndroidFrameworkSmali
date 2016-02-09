.class final Landroid/icu/text/MessageFormat$PluralSelectorContext;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralSelectorContext"
.end annotation


# instance fields
.field argName:Ljava/lang/String;

.field forReplaceNumber:Z

.field formatter:Ljava/text/Format;

.field number:Ljava/lang/Number;

.field numberArgIndex:I

.field numberString:Ljava/lang/String;

.field offset:D

.field startIndex:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Number;D)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "num"    # Ljava/lang/Number;
    .param p4, "off"    # D

    #@0
    .prologue
    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2038
    iput p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    #@5
    .line 2039
    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    #@7
    .line 2043
    const-wide/16 v0, 0x0

    #@9
    cmpl-double v0, p4, v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2044
    iput-object p3, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@f
    .line 2048
    :goto_0
    iput-wide p4, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    #@11
    .line 2037
    return-void

    #@12
    .line 2046
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    #@15
    move-result-wide v0

    #@16
    sub-double/2addr v0, p4

    #@17
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@1d
    goto :goto_0
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat$PluralSelectorContext;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "num"    # Ljava/lang/Number;
    .param p4, "off"    # D

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;D)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2052
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    const-string/jumbo v1, "PluralSelectorContext being formatted, rather than its number"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@8
    throw v0
.end method
