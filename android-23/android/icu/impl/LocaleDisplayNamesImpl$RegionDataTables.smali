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
.field static final impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 622
    const-string/jumbo v0, "android.icu.impl.ICURegionDataTables"

    #@3
    invoke-static {v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->load(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    #@9
    .line 621
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
