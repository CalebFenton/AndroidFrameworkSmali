.class public Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Default;
.super Ljava/lang/Object;
.source "IDeviceIdleControllerAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist exemptAppTemporarilyForEvent(Ljava/lang/String;JILjava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userHandle"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
