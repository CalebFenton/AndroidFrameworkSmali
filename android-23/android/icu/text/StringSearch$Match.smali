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
.field limit_:I

.field start_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 995
    iput v0, p0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@6
    .line 996
    iput v0, p0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@8
    .line 994
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/StringSearch$Match;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/StringSearch$Match;-><init>()V

    #@3
    return-void
.end method
