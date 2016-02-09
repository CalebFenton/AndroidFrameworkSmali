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
.field impact:[[S

.field imptab:[[[B


# direct methods
.method constructor <init>([[B[[B[S[S)V
    .locals 4
    .param p1, "table1"    # [[B
    .param p2, "table2"    # [[B
    .param p3, "act1"    # [S
    .param p4, "act2"    # [S

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 2858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2860
    new-array v0, v3, [[[B

    #@8
    aput-object p1, v0, v1

    #@a
    aput-object p2, v0, v2

    #@c
    iput-object v0, p0, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    #@e
    .line 2861
    new-array v0, v3, [[S

    #@10
    aput-object p3, v0, v1

    #@12
    aput-object p4, v0, v2

    #@14
    iput-object v0, p0, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    #@16
    .line 2859
    return-void
.end method
