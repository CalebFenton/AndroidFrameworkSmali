.class Landroid/icu/text/Bidi$ImpTabPair;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImpTabPair"
.end annotation


# instance fields
.field greylist-max-o impact:[[S

.field greylist-max-o imptab:[[[B


# direct methods
.method constructor greylist-max-o <init>([[B[[B[S[S)V
    .registers 6
    .param p1, "table1"    # [[B
    .param p2, "table2"    # [[B
    .param p3, "act1"    # [S
    .param p4, "act2"    # [S

    .line 2851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2852
    filled-new-array {p1, p2}, [[[B

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    .line 2853
    filled-new-array {p3, p4}, [[S

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    .line 2854
    return-void
.end method
