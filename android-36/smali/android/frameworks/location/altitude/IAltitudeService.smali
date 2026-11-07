.class public interface abstract Landroid/frameworks/location/altitude/IAltitudeService;
.super Ljava/lang/Object;
.source "IAltitudeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/frameworks/location/altitude/IAltitudeService$Stub;,
        Landroid/frameworks/location/altitude/IAltitudeService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "e47d23f579ff7a897fb03e7e7f1c3006cfc6036b"

.field public static final blacklist VERSION:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 260
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$frameworks$location$altitude$IAltitudeService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/frameworks/location/altitude/IAltitudeService;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getGeoidHeight(Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
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
