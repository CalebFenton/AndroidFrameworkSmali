.class Landroid/text/HtmlToSpannedConverter$Heading;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Heading"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method static synthetic -get0(Landroid/text/HtmlToSpannedConverter$Heading;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    #@2
    return v0
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1323
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    #@5
    .line 1322
    return-void
.end method
