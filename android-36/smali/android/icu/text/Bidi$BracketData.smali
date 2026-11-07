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
.field greylist-max-o isNumbersSpecial:Z

.field greylist-max-o isoRunLast:I

.field greylist-max-o isoRuns:[Landroid/icu/text/Bidi$IsoRun;

.field greylist-max-o openings:[Landroid/icu/text/Bidi$Opening;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/icu/text/Bidi$Opening;

    iput-object v0, p0, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    .line 553
    const/16 v0, 0x7f

    new-array v0, v0, [Landroid/icu/text/Bidi$IsoRun;

    iput-object v0, p0, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    return-void
.end method
