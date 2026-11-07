.class Landroid/icu/text/StringSearch$CEI;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CEI"
.end annotation


# instance fields
.field greylist-max-o ce_:J

.field greylist-max-o highIndex_:I

.field greylist-max-o lowIndex_:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/StringSearch-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/StringSearch$CEI;-><init>()V

    return-void
.end method
