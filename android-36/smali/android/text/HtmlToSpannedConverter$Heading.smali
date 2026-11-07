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
.field private blacklist mLevel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLevel(Landroid/text/HtmlToSpannedConverter$Heading;)I
    .registers 1

    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "level"    # I

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    .line 1357
    return-void
.end method
