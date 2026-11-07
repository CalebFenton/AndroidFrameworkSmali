.class public Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;
.super Ljava/lang/Object;
.source "TableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/TableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageFilesBundle"
.end annotation


# instance fields
.field public final blacklist flagTable:Landroid/internal/aconfig/storage/FlagTable;

.field public final blacklist flagValueList:Landroid/internal/aconfig/storage/FlagValueList;

.field public final blacklist packageTable:Landroid/internal/aconfig/storage/PackageTable;


# direct methods
.method public constructor blacklist <init>(Landroid/internal/aconfig/storage/PackageTable;Landroid/internal/aconfig/storage/FlagTable;Landroid/internal/aconfig/storage/FlagValueList;)V
    .registers 4
    .param p1, "pTable"    # Landroid/internal/aconfig/storage/PackageTable;
    .param p2, "fTable"    # Landroid/internal/aconfig/storage/FlagTable;
    .param p3, "fValueList"    # Landroid/internal/aconfig/storage/FlagValueList;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/internal/aconfig/storage/PackageTable;

    .line 74
    iput-object p2, p0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagTable:Landroid/internal/aconfig/storage/FlagTable;

    .line 75
    iput-object p3, p0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    .line 76
    return-void
.end method
