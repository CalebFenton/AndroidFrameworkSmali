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
.field greylist-max-o argName:Ljava/lang/String;

.field greylist-max-o forReplaceNumber:Z

.field greylist-max-o formatter:Ljava/text/Format;

.field greylist-max-o number:Ljava/lang/Number;

.field greylist-max-o numberArgIndex:I

.field greylist-max-o numberString:Ljava/lang/String;

.field greylist-max-o offset:D

.field greylist-max-o startIndex:I


# direct methods
.method private constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/Number;D)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "num"    # Ljava/lang/Number;
    .param p4, "off"    # D

    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    iput p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    .line 2014
    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    .line 2018
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_10

    .line 2019
    iput-object p3, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    goto :goto_1b

    .line 2021
    :cond_10
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-double/2addr v0, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    .line 2023
    :goto_1b
    iput-wide p4, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    .line 2024
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;D)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2027
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PluralSelectorContext being formatted, rather than its number"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
