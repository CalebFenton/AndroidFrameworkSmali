.class abstract Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Call"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist exec(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract blacklist onError(Ljava/lang/String;)V
.end method
