.class Landroid/icu/text/Bidi$BracketData;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BracketData"
.end annotation


# instance fields
.field isNumbersSpecial:Z

.field isoRunLast:I

.field isoRuns:[Landroid/icu/text/Bidi$IsoRun;

.field openings:[Landroid/icu/text/Bidi$Opening;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 547
    const/16 v0, 0x14

    #@5
    new-array v0, v0, [Landroid/icu/text/Bidi$Opening;

    #@7
    iput-object v0, p0, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@9
    .line 551
    const/16 v0, 0x7f

    #@b
    new-array v0, v0, [Landroid/icu/text/Bidi$IsoRun;

    #@d
    iput-object v0, p0, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@f
    .line 546
    return-void
.end method
