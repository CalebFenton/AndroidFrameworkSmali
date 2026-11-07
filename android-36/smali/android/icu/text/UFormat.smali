.class public abstract Landroid/icu/text/UFormat;
.super Ljava/text/Format;
.source "UFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UFormat$SpanField;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x44e50edf26f8a240L


# instance fields
.field private greylist-max-o actualLocale:Landroid/icu/util/ULocale;

.field private greylist-max-o validLocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public final greylist-max-r getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    .line 78
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    .line 79
    iget-object v0, p0, Landroid/icu/text/UFormat;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/icu/text/UFormat;->validLocale:Landroid/icu/util/ULocale;

    .line 78
    :goto_9
    return-object v0
.end method

.method final greylist-max-o setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    .line 100
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-nez p2, :cond_a

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-ne v2, v0, :cond_12

    .line 107
    iput-object p1, p0, Landroid/icu/text/UFormat;->validLocale:Landroid/icu/util/ULocale;

    .line 108
    iput-object p2, p0, Landroid/icu/text/UFormat;->actualLocale:Landroid/icu/util/ULocale;

    .line 109
    return-void

    .line 102
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
