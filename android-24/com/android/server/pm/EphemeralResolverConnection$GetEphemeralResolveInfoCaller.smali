.class final Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetEphemeralResolveInfoCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/EphemeralResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 165
    const-wide/16 v0, 0x1388

    #@2
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    #@5
    .line 166
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;-><init>(Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;)V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->mCallback:Landroid/os/IRemoteCallback;

    #@c
    .line 164
    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfoList(Lcom/android/internal/app/IEphemeralResolver;I)Ljava/util/List;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/IEphemeralResolver;
    .param p2, "hashPrefix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IEphemeralResolver;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->onBeforeRemoteCall()I

    #@3
    move-result v0

    #@4
    .line 183
    .local v0, "sequence":I
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->mCallback:Landroid/os/IRemoteCallback;

    #@6
    invoke-interface {p1, v1, p2, v0}, Lcom/android/internal/app/IEphemeralResolver;->getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;II)V

    #@9
    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getResultTimed(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/util/List;

    #@f
    return-object v1
.end method
