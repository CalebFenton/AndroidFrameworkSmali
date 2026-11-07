.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ECVNm96ywwmY895g12OaV0VHQV0(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mcomeToFront(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K8ZJKdMDnolGoGrQgEsLeavi5Zg(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mdetach(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1958
    .local p1, "service":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/service/dreams/DreamService;>;"
    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    .line 1959
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->mService:Ljava/lang/ref/WeakReference;

    .line 1960
    return-void
.end method

.method static synthetic blacklist lambda$attach$1(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;Landroid/service/dreams/DreamService;)V
    .registers 5
    .param p0, "dreamToken"    # Landroid/os/IBinder;
    .param p1, "canDoze"    # Z
    .param p2, "isPreviewMode"    # Z
    .param p3, "started"    # Landroid/os/IRemoteCallback;
    .param p4, "dreamService"    # Landroid/service/dreams/DreamService;

    .line 1977
    invoke-static {p4, p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->-$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$post$0(Ljava/util/function/Consumer;Landroid/service/dreams/DreamService;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "service"    # Landroid/service/dreams/DreamService;

    .line 1969
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wakeUp$2(Landroid/service/dreams/DreamService;)V
    .registers 2
    .param p0, "dreamService"    # Landroid/service/dreams/DreamService;

    .line 1998
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/DreamService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method

.method private blacklist post(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    .line 1963
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/DreamService;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    .line 1965
    .local v0, "service":Landroid/service/dreams/DreamService;
    if-nez v0, :cond_b

    .line 1966
    return-void

    .line 1969
    :cond_b
    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/service/dreams/DreamService;)V

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$mpostIfNeeded(Landroid/service/dreams/DreamService;Ljava/lang/Runnable;)V

    .line 1970
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 8
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "isPreviewMode"    # Z
    .param p4, "started"    # Landroid/os/IRemoteCallback;

    .line 1975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1977
    .local v0, "token":J
    :try_start_4
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1980
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1981
    nop

    .line 1982
    return-void

    .line 1980
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1981
    throw v2
.end method

.method public blacklist comeToFront()V
    .registers 4

    .line 2006
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2008
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesBeingObscured()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    if-nez v2, :cond_e

    .line 2013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2009
    return-void

    .line 2011
    :cond_e
    :try_start_e
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1b

    .line 2013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2014
    nop

    .line 2015
    return-void

    .line 2013
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2014
    throw v2
.end method

.method public greylist-max-o detach()V
    .registers 4

    .line 1986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1988
    .local v0, "token":J
    :try_start_4
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 1990
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    nop

    .line 1992
    return-void

    .line 1990
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    throw v2
.end method

.method public greylist-max-o wakeUp()V
    .registers 4

    .line 1996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1998
    .local v0, "token":J
    :try_start_4
    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v2}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->post(Ljava/util/function/Consumer;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2001
    nop

    .line 2002
    return-void

    .line 2000
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2001
    throw v2
.end method
