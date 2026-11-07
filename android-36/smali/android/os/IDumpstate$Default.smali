.class public Landroid/os/IDumpstate$Default;
.super Ljava/lang/Object;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelBugreport(ILjava/lang/String;)V
    .registers 3
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist preDumpUiData(Ljava/lang/String;)V
    .registers 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "bugreportFd"    # Ljava/io/FileDescriptor;
    .param p5, "bugreportFile"    # Ljava/lang/String;
    .param p6, "keepBugreportOnRetrieval"    # Z
    .param p7, "skipUserConsent"    # Z
    .param p8, "listener"    # Landroid/os/IDumpstateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bugreportFd"    # Ljava/io/FileDescriptor;
    .param p4, "screenshotFd"    # Ljava/io/FileDescriptor;
    .param p5, "bugreportMode"    # I
    .param p6, "bugreportFlags"    # I
    .param p7, "listener"    # Landroid/os/IDumpstateListener;
    .param p8, "isScreenshotRequested"    # Z
    .param p9, "skipUserConsent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method
