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
.field final blacklist ambiguousType:Z

.field final blacklist mzID:Ljava/lang/String;

.field final blacklist parseRegions:[Ljava/lang/String;

.field final blacklist type:Landroid/icu/text/TimeZoneNames$NameType;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V
    .registers 5
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "ambiguousType"    # Z
    .param p4, "parseRegions"    # [Ljava/lang/String;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    .line 231
    iput-boolean p3, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    .line 232
    iput-object p4, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    .line 233
    return-void
.end method
