.class public Landroid/app/admin/IKeyguardClient$Default;
.super Ljava/lang/Object;
.source "IKeyguardClient.java"

# interfaces
.implements Landroid/app/admin/IKeyguardClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IKeyguardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
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

.method public blacklist onCreateKeyguardSurface(Landroid/os/IBinder;Landroid/app/admin/IKeyguardCallback;)V
    .registers 3
    .param p1, "hostInputToken"    # Landroid/os/IBinder;
    .param p2, "keyguardCallback"    # Landroid/app/admin/IKeyguardCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
