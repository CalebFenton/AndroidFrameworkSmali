.class Landroid/icu/text/StringSearch$Match;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Match"
.end annotation


# instance fields
.field greylist-max-o limit_:I

.field greylist-max-o start_:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/StringSearch$Match;->start_:I

    .line 985
    iput v0, p0, Landroid/icu/text/StringSearch$Match;->limit_:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/StringSearch-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/StringSearch$Match;-><init>()V

    return-void
.end method
