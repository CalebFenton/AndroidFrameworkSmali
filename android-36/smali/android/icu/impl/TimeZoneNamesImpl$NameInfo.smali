.class Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameInfo"
.end annotation


# instance fields
.field blacklist mzID:Ljava/lang/String;

.field blacklist type:Landroid/icu/text/TimeZoneNames$NameType;

.field blacklist tzID:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>()V

    return-void
.end method
