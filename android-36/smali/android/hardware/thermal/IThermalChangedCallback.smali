.class public interface abstract Landroid/hardware/thermal/IThermalChangedCallback;
.super Ljava/lang/Object;
.source "IThermalChangedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/thermal/IThermalChangedCallback$Stub;,
        Landroid/hardware/thermal/IThermalChangedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "4c4fc474c40b64963eb8d78b713b1095fecd72f0"

.field public static final blacklist VERSION:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 242
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$thermal$IThermalChangedCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/thermal/IThermalChangedCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyThrottling(Landroid/hardware/thermal/Temperature;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
