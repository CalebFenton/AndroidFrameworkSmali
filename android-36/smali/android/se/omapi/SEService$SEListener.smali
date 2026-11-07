.class Landroid/se/omapi/SEService$SEListener;
.super Landroid/se/omapi/ISecureElementListener$Stub;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/SEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SEListener"
.end annotation


# instance fields
.field public greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field public greylist-max-o mListener:Landroid/se/omapi/SEService$OnConnectedListener;


# direct methods
.method private constructor blacklist <init>(Landroid/se/omapi/SEService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Landroid/se/omapi/ISecureElementListener$Stub;-><init>()V

    .line 103
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    .line 104
    iput-object p1, p0, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/SEService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/se/omapi/SEService$SEListener;-><init>(Landroid/se/omapi/SEService;)V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 108
    return-object p0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 124
    const-string v0, "894069bcfe4f35ceb2088278ddf87c83adee8014"

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onConnected()V
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_12

    .line 113
    iget-object v0, p0, Landroid/se/omapi/SEService$SEListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/se/omapi/SEService$SEListener$1;

    invoke-direct {v1, p0}, Landroid/se/omapi/SEService$SEListener$1;-><init>(Landroid/se/omapi/SEService$SEListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    :cond_12
    return-void
.end method
