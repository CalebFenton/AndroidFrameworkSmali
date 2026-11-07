.class public Landroid/telephony/NetworkServiceCallback;
.super Ljava/lang/Object;
.source "NetworkServiceCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkServiceCallback$Result;
    }
.end annotation


# static fields
.field public static final whitelist RESULT_ERROR_BUSY:I = 0x3

.field public static final whitelist RESULT_ERROR_FAILED:I = 0x5

.field public static final whitelist RESULT_ERROR_ILLEGAL_STATE:I = 0x4

.field public static final whitelist RESULT_ERROR_INVALID_ARG:I = 0x2

.field public static final whitelist RESULT_ERROR_UNSUPPORTED:I = 0x1

.field public static final whitelist RESULT_SUCCESS:I

.field private static final greylist-max-o mTag:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Landroid/telephony/INetworkServiceCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Landroid/telephony/NetworkServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/NetworkServiceCallback;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/INetworkServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/telephony/NetworkServiceCallback;->mCallback:Landroid/telephony/INetworkServiceCallback;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    .registers 6
    .param p1, "result"    # I
    .param p2, "state"    # Landroid/telephony/NetworkRegistrationInfo;

    .line 82
    iget-object v0, p0, Landroid/telephony/NetworkServiceCallback;->mCallback:Landroid/telephony/INetworkServiceCallback;

    if-eqz v0, :cond_13

    .line 84
    :try_start_4
    iget-object v0, p0, Landroid/telephony/NetworkServiceCallback;->mCallback:Landroid/telephony/INetworkServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/INetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    .line 85
    :catch_a
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/telephony/NetworkServiceCallback;->mTag:Ljava/lang/String;

    const-string v2, "Failed to onRequestNetworkRegistrationInfoComplete on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    goto :goto_1b

    .line 89
    :cond_13
    sget-object v0, Landroid/telephony/NetworkServiceCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onRequestNetworkRegistrationInfoComplete callback is null."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1b
    return-void
.end method
