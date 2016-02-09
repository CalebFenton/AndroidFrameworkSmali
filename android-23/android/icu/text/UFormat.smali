.class public abstract Landroid/icu/text/UFormat;
.super Ljava/text/Format;
.source "UFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x44e50edf26f8a240L


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 61
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 62
    iget-object v0, p0, Landroid/icu/text/UFormat;->actualLocale:Landroid/icu/util/ULocale;

    #@6
    .line 61
    :goto_0
    return-object v0

    #@7
    .line 62
    :cond_0
    iget-object v0, p0, Landroid/icu/text/UFormat;->validLocale:Landroid/icu/util/ULocale;

    #@9
    goto :goto_0
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 83
    if-nez p1, :cond_0

    #@4
    move v2, v0

    #@5
    :goto_0
    if-nez p2, :cond_1

    #@7
    :goto_1
    if-eq v2, v0, :cond_2

    #@9
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_0
    move v2, v1

    #@10
    .line 83
    goto :goto_0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_1

    #@13
    .line 90
    :cond_2
    iput-object p1, p0, Landroid/icu/text/UFormat;->validLocale:Landroid/icu/util/ULocale;

    #@15
    .line 91
    iput-object p2, p0, Landroid/icu/text/UFormat;->actualLocale:Landroid/icu/util/ULocale;

    #@17
    .line 81
    return-void
.end method
