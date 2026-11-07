.class public interface abstract Landroid/os/IDumpstate;
.super Ljava/lang/Object;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub;,
        Landroid/os/IDumpstate$Default;
    }
.end annotation


# static fields
.field public static final blacklist BUGREPORT_FLAG_DEFER_CONSENT:I = 0x2

.field public static final blacklist BUGREPORT_FLAG_KEEP_BUGREPORT_ON_RETRIEVAL:I = 0x4

.field public static final blacklist BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA:I = 0x1

.field public static final blacklist BUGREPORT_MODE_DEFAULT:I = 0x6

.field public static final blacklist BUGREPORT_MODE_FULL:I = 0x0

.field public static final blacklist BUGREPORT_MODE_INTERACTIVE:I = 0x1

.field public static final blacklist BUGREPORT_MODE_ONBOARDING:I = 0x7

.field public static final blacklist BUGREPORT_MODE_REMOTE:I = 0x2

.field public static final blacklist BUGREPORT_MODE_TELEPHONY:I = 0x4

.field public static final blacklist BUGREPORT_MODE_WEAR:I = 0x3

.field public static final blacklist BUGREPORT_MODE_WIFI:I = 0x5

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstate"


# virtual methods
.method public abstract blacklist cancelBugreport(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist preDumpUiData(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
