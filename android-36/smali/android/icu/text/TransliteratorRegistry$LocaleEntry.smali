.class Landroid/icu/text/TransliteratorRegistry$LocaleEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleEntry"
.end annotation


# instance fields
.field public greylist-max-o direction:I

.field public greylist-max-o rule:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "r"    # Ljava/lang/String;
    .param p2, "d"    # I

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->rule:Ljava/lang/String;

    .line 266
    iput p2, p0, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->direction:I

    .line 267
    return-void
.end method
