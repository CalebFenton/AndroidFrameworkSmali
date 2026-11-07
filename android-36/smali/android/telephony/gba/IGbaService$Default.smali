.class public Landroid/telephony/gba/IGbaService$Default;
.super Ljava/lang/Object;
.source "IGbaService.java"

# interfaces
.implements Landroid/telephony/gba/IGbaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/IGbaService;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist authenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/telephony/gba/GbaAuthRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
