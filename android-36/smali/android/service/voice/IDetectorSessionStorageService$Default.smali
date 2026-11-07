.class public Landroid/service/voice/IDetectorSessionStorageService$Default;
.super Ljava/lang/Object;
.source "IDetectorSessionStorageService.java"

# interfaces
.implements Landroid/service/voice/IDetectorSessionStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IDetectorSessionStorageService;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
