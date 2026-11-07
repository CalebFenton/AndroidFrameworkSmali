.class Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberFormatterCacheEntry"
.end annotation


# instance fields
.field blacklist formatter:Landroid/icu/number/LocalizedNumberFormatter;

.field blacklist perUnit:Landroid/icu/util/MeasureUnit;

.field blacklist type:I

.field blacklist unit:Landroid/icu/util/MeasureUnit;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
