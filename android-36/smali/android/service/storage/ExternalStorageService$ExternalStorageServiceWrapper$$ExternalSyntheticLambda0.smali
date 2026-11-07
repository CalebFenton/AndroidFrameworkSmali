.class public final synthetic Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

.field public final synthetic blacklist f$1:Landroid/os/storage/StorageVolume;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iput-object p2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/StorageVolume;

    iput-object p3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iget-object v1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/StorageVolume;

    iget-object v2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/os/RemoteCallback;

    invoke-static {v0, v1, v2, v3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->$r8$lambda$HI4zAgZwngb8P3mkKidbkr637_g(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Landroid/os/storage/StorageVolume;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
