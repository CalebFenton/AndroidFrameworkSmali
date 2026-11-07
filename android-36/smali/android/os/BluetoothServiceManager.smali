.class public Landroid/os/BluetoothServiceManager;
.super Ljava/lang/Object;
.source "BluetoothServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BluetoothServiceManager$ServiceRegisterer;,
        Landroid/os/BluetoothServiceManager$ServiceNotFoundException;
    }
.end annotation


# static fields
.field public static final blacklist BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getBluetoothManagerServiceRegisterer()Landroid/os/BluetoothServiceManager$ServiceRegisterer;
    .registers 3

    .line 119
    new-instance v0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;

    const-string v1, "bluetooth_manager"

    invoke-direct {v0, v1}, Landroid/os/BluetoothServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
