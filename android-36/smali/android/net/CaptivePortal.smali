.class public Landroid/net/CaptivePortal;
.super Ljava/lang/Object;
.source "CaptivePortal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist APP_REQUEST_BASE:I = 0x64

.field public static final whitelist APP_REQUEST_REEVALUATION_REQUIRED:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_RETURN_DISMISSED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_RETURN_UNWANTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_RETURN_WANTED_AS_IS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/CaptivePortal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field private final blacklist mLifetimeBinder:Landroid/os/Binder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Landroid/net/CaptivePortal$1;

    invoke-direct {v0}, Landroid/net/CaptivePortal$1;-><init>()V

    sput-object v0, Landroid/net/CaptivePortal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/CaptivePortal;->mLifetimeBinder:Landroid/os/Binder;

    .line 94
    iput-object p1, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist ignoreNetwork()V
    .registers 3

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 143
    goto :goto_c

    .line 142
    :catch_b
    move-exception v0

    .line 144
    :goto_c
    return-void
.end method

.method public whitelist logEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "eventId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    return-void
.end method

.method public whitelist reevaluateNetwork()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appRequest(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 173
    goto :goto_d

    .line 172
    :catch_c
    move-exception v0

    .line 174
    :goto_d
    return-void
.end method

.method public whitelist reportCaptivePortalDismissed()V
    .registers 3

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 129
    goto :goto_c

    .line 128
    :catch_b
    move-exception v0

    .line 130
    :goto_c
    return-void
.end method

.method public blacklist setDelegateUid(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/os/ServiceSpecificException;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/os/ServiceSpecificException;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :try_start_6
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    iget-object v1, p0, Landroid/net/CaptivePortal;->mLifetimeBinder:Landroid/os/Binder;

    new-instance v2, Landroid/net/CaptivePortal$2;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/net/CaptivePortal$2;-><init>(Landroid/net/CaptivePortal;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1, v2}, Landroid/net/ICaptivePortal;->setDelegateUid(ILandroid/os/IBinder;Landroid/net/IIntResultListener;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_18

    .line 238
    nop

    .line 239
    return-void

    .line 236
    :catch_18
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist useNetwork()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 160
    goto :goto_c

    .line 159
    :catch_b
    move-exception v0

    .line 161
    :goto_c
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 105
    return-void
.end method
