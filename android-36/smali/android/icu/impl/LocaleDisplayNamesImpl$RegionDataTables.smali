.class Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegionDataTables"
.end annotation


# static fields
.field static final blacklist impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 731
    const-string v0, "android.icu.impl.ICURegionDataTables"

    invoke-static {v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->load(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
