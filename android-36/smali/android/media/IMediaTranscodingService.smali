.class public interface abstract Landroid/media/IMediaTranscodingService;
.super Ljava/lang/Object;
.source "IMediaTranscodingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaTranscodingService$Stub;,
        Landroid/media/IMediaTranscodingService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaTranscodingService"

.field public static final blacklist ERROR_ALREADY_EXISTS:I = 0x2

.field public static final blacklist ERROR_DISABLED:I = 0x6

.field public static final blacklist ERROR_DISCONNECTED:I = 0x4

.field public static final blacklist ERROR_ILLEGAL_ARGUMENT:I = 0x3

.field public static final blacklist ERROR_INVALID_OPERATION:I = 0x7

.field public static final blacklist ERROR_PERMISSION_DENIED:I = 0x1

.field public static final blacklist ERROR_TIMED_OUT:I = 0x5

.field public static final blacklist USE_CALLING_PID:I = -0x1

.field public static final blacklist USE_CALLING_UID:I = -0x1


# virtual methods
.method public abstract blacklist getNumOfClients()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerClient(Landroid/media/ITranscodingClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/media/ITranscodingClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
