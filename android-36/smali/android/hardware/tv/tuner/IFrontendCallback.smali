.class public interface abstract Landroid/hardware/tv/tuner/IFrontendCallback;
.super Ljava/lang/Object;
.source "IFrontendCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFrontendCallback$Stub;,
        Landroid/hardware/tv/tuner/IFrontendCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "b0d0067a930514438d7772c2e02069c7370f3620"

.field public static final blacklist VERSION:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 208
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$tv$tuner$IFrontendCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/tv/tuner/IFrontendCallback;->DESCRIPTOR:Ljava/lang/String;

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

.method public abstract blacklist onEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onScanMessage(ILandroid/hardware/tv/tuner/FrontendScanMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
