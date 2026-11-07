.class public Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;
.super Ljava/lang/Object;
.source "TableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/internal/aconfig/storage/TableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageFilesBundle"
.end annotation


# instance fields
.field public final blacklist flagTable:Landroid/provider/internal/aconfig/storage/FlagTable;

.field public final blacklist flagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

.field public final blacklist packageTable:Landroid/provider/internal/aconfig/storage/PackageTable;


# direct methods
.method public constructor blacklist <init>(Landroid/provider/internal/aconfig/storage/PackageTable;Landroid/provider/internal/aconfig/storage/FlagTable;Landroid/provider/internal/aconfig/storage/FlagValueList;)V
    .registers 4
    .param p1, "pTable"    # Landroid/provider/internal/aconfig/storage/PackageTable;
    .param p2, "fTable"    # Landroid/provider/internal/aconfig/storage/FlagTable;
    .param p3, "fValueList"    # Landroid/provider/internal/aconfig/storage/FlagValueList;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/provider/internal/aconfig/storage/PackageTable;

    .line 74
    iput-object p2, p0, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagTable:Landroid/provider/internal/aconfig/storage/FlagTable;

    .line 75
    iput-object p3, p0, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

    .line 76
    return-void
.end method
