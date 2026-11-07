.class public Landroid/provider/IOemMetadataService$Default;
.super Ljava/lang/Object;
.source "IOemMetadataService.java"

# interfaces
.implements Landroid/provider/IOemMetadataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/IOemMetadataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOemCustomData(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist getSupportedMimeTypes(Landroid/os/RemoteCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
