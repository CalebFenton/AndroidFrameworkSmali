.class Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZDBNameInfo"
.end annotation


# instance fields
.field ambiguousType:Z

.field mzID:Ljava/lang/String;

.field parseRegions:[Ljava/lang/String;

.field type:Landroid/icu/text/TimeZoneNames$NameType;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>()V

    #@3
    return-void
.end method
