.class final Landroid/icu/text/StringSearch$Pattern;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pattern"
.end annotation


# instance fields
.field greylist-max-o CELength_:I

.field greylist-max-o CE_:[I

.field greylist-max-o PCELength_:I

.field greylist-max-o PCE_:[J

.field greylist-max-o text_:Ljava/lang/String;


# direct methods
.method protected constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1599
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    .line 1604
    iput v0, p0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    .line 1614
    iput-object p1, p0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 1615
    return-void
.end method
