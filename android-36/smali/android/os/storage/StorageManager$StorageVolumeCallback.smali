.class public Landroid/os/storage/StorageManager$StorageVolumeCallback;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageVolumeCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onStateChanged(Landroid/os/storage/StorageVolume;)V
    .registers 2
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .line 605
    return-void
.end method
