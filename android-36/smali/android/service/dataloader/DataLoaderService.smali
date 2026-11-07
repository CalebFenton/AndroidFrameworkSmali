.class public abstract Landroid/service/dataloader/DataLoaderService;
.super Landroid/app/Service;
.source "DataLoaderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;,
        Landroid/service/dataloader/DataLoaderService$FileSystemConnector;,
        Landroid/service/dataloader/DataLoaderService$DataLoader;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DataLoaderService"


# instance fields
.field private final blacklist mBinder:Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnativeCreateDataLoader(Landroid/service/dataloader/DataLoaderService;ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dataloader/DataLoaderService;->nativeCreateDataLoader(ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnativeDestroyDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService;->nativeDestroyDataLoader(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnativePrepareImage(Landroid/service/dataloader/DataLoaderService;I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/dataloader/DataLoaderService;->nativePrepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnativeStartDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService;->nativeStartDataLoader(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnativeStopDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService;->nativeStopDataLoader(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteData(JLjava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/service/dataloader/DataLoaderService;->nativeWriteData(JLjava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;-><init>(Landroid/service/dataloader/DataLoaderService;Landroid/service/dataloader/DataLoaderService-IA;)V

    iput-object v0, p0, Landroid/service/dataloader/DataLoaderService;->mBinder:Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;

    return-void
.end method

.method private native blacklist nativeCreateDataLoader(ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z
.end method

.method private native blacklist nativeDestroyDataLoader(I)Z
.end method

.method private native blacklist nativePrepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z
.end method

.method private native blacklist nativeStartDataLoader(I)Z
.end method

.method private native blacklist nativeStopDataLoader(I)Z
.end method

.method private static native blacklist nativeWriteData(JLjava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService;->mBinder:Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;

    return-object v0
.end method

.method public whitelist onCreateDataLoader(Landroid/content/pm/DataLoaderParams;)Landroid/service/dataloader/DataLoaderService$DataLoader;
    .registers 3
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method
