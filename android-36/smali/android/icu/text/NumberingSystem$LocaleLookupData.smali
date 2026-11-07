.class Landroid/icu/text/NumberingSystem$LocaleLookupData;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleLookupData"
.end annotation


# instance fields
.field public final greylist-max-o locale:Landroid/icu/util/ULocale;

.field public final greylist-max-o numbersKeyword:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "numbersKeyword"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->locale:Landroid/icu/util/ULocale;

    .line 159
    iput-object p2, p0, Landroid/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    .line 160
    return-void
.end method
