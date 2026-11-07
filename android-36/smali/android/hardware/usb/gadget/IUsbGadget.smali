.class public interface abstract Landroid/hardware/usb/gadget/IUsbGadget;
.super Ljava/lang/Object;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/gadget/IUsbGadget$Stub;,
        Landroid/hardware/usb/gadget/IUsbGadget$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "cb628c69682659911bca5c1d04042adba7f0de4b"

.field public static final blacklist VERSION:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 276
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$usb$gadget$IUsbGadget"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/usb/gadget/IUsbGadget;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist getCurrentUsbFunctions(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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

.method public abstract blacklist getUsbSpeed(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reset(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/IUsbGadgetCallback;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
