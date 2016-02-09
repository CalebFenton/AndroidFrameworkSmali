.class Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IPackageInstallerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "active"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionActiveChanged(IIZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionBadgingChanged(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionCreated(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "progress"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionProgressChanged(IIF)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1114
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 1111
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@5
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@a
    .line 1113
    return-void
.end method

.method private invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1145
    iget v0, p2, Landroid/os/Message;->arg1:I

    #@2
    .line 1146
    .local v0, "sessionId":I
    iget v1, p2, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1144
    :goto_0
    return-void

    #@8
    .line 1148
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    #@b
    goto :goto_0

    #@c
    .line 1151
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    #@f
    goto :goto_0

    #@10
    .line 1154
    :pswitch_2
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    check-cast v1, Ljava/lang/Boolean;

    #@14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@17
    move-result v1

    #@18
    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    #@1b
    goto :goto_0

    #@1c
    .line 1157
    :pswitch_3
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    check-cast v1, Ljava/lang/Float;

    #@20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@23
    move-result v1

    #@24
    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    #@27
    goto :goto_0

    #@28
    .line 1160
    :pswitch_4
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2a
    check-cast v1, Ljava/lang/Boolean;

    #@2c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@2f
    move-result v1

    #@30
    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    #@33
    goto :goto_0

    #@34
    .line 1146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private notifySessionActiveChanged(IIZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "active"    # Z

    #@0
    .prologue
    .line 1174
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1173
    return-void
.end method

.method private notifySessionBadgingChanged(II)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1170
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@8
    .line 1169
    return-void
.end method

.method private notifySessionCreated(II)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1166
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@8
    .line 1165
    return-void
.end method

.method private notifySessionProgressChanged(IIF)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "progress"    # F

    #@0
    .prologue
    .line 1178
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1177
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1127
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@2
    .line 1128
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@4
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@7
    move-result v3

    #@8
    .line 1129
    .local v3, "n":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@b
    .line 1130
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@d
    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/content/pm/IPackageInstallerCallback;

    #@13
    .line 1131
    .local v0, "callback":Landroid/content/pm/IPackageInstallerCallback;
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@15
    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/os/UserHandle;

    #@1b
    .line 1133
    .local v4, "user":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    #@1e
    move-result v6

    #@1f
    if-ne v5, v6, :cond_0

    #@21
    .line 1135
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 1129
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1136
    :catch_0
    move-exception v2

    #@28
    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_1

    #@29
    .line 1140
    .end local v0    # "callback":Landroid/content/pm/IPackageInstallerCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    .end local v4    # "user":Landroid/os/UserHandle;
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2b
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@2e
    .line 1126
    return-void
.end method

.method public notifySessionFinished(IIZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "success"    # Z

    #@0
    .prologue
    .line 1182
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x5

    #@5
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1181
    return-void
.end method

.method public register(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    new-instance v1, Landroid/os/UserHandle;

    #@4
    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@7
    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    #@a
    .line 1117
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    #@0
    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 1121
    return-void
.end method
