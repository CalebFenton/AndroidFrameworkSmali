.class public interface abstract Landroid/hardware/radio/config/IRadioConfigIndication;
.super Ljava/lang/Object;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/IRadioConfigIndication$Stub;,
        Landroid/hardware/radio/config/IRadioConfigIndication$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "fc7eeb47f5238e538dead4af7575507920c359f7"

.field public static final blacklist VERSION:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 254
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$radio$config$IRadioConfigIndication"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/radio/config/IRadioConfigIndication;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract blacklist onSimultaneousCallingSupportChanged([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist simSlotsStatusChanged(I[Landroid/hardware/radio/config/SimSlotStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
