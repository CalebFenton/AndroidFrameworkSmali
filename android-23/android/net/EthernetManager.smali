.class public Landroid/net/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetManager$Listener;,
        Landroid/net/EthernetManager$1;,
        Landroid/net/EthernetManager$2;
    }
.end annotation


# static fields
.field private static final MSG_AVAILABILITY_CHANGED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/EthernetManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IEthernetManager;

.field private final mServiceListener:Landroid/net/IEthernetServiceListener$Stub;


# direct methods
.method static synthetic -get0(Landroid/net/EthernetManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/EthernetManager;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IEthernetManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IEthernetManager;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Landroid/net/EthernetManager$1;

    #@5
    invoke-direct {v0, p0}, Landroid/net/EthernetManager$1;-><init>(Landroid/net/EthernetManager;)V

    #@8
    iput-object v0, p0, Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;

    #@a
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    #@11
    .line 53
    new-instance v0, Landroid/net/EthernetManager$2;

    #@13
    invoke-direct {v0, p0}, Landroid/net/EthernetManager$2;-><init>(Landroid/net/EthernetManager;)V

    #@16
    .line 52
    iput-object v0, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    #@18
    .line 79
    iput-object p1, p0, Landroid/net/EthernetManager;->mContext:Landroid/content/Context;

    #@1a
    .line 80
    iput-object p2, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    #@1c
    .line 78
    return-void
.end method


# virtual methods
.method public addListener(Landroid/net/EthernetManager$Listener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    #@0
    .prologue
    .line 123
    if-nez p1, :cond_0

    #@2
    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "listener must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 126
    :cond_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 127
    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v1

    #@16
    const/4 v2, 0x1

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    #@1b
    iget-object v2, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    #@1d
    invoke-interface {v1, v2}, Landroid/net/IEthernetManager;->addListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 122
    :cond_1
    :goto_0
    return-void

    #@21
    .line 130
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 2

    #@0
    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    #@2
    invoke-interface {v1}, Landroid/net/IEthernetManager;->getConfiguration()Landroid/net/IpConfiguration;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 90
    :catch_0
    move-exception v0

    #@8
    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/net/IpConfiguration;

    #@a
    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    #@d
    return-object v1
.end method

.method public isAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    #@2
    invoke-interface {v1}, Landroid/net/IEthernetManager;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 112
    :catch_0
    move-exception v0

    #@8
    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public removeListener(Landroid/net/EthernetManager$Listener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/EthernetManager$Listener;

    #@0
    .prologue
    .line 141
    if-nez p1, :cond_0

    #@2
    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "listener must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 144
    :cond_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@10
    .line 145
    iget-object v1, p0, Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 147
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    #@1a
    iget-object v2, p0, Landroid/net/EthernetManager;->mServiceListener:Landroid/net/IEthernetServiceListener$Stub;

    #@1c
    invoke-interface {v1, v2}, Landroid/net/IEthernetManager;->removeListener(Landroid/net/IEthernetServiceListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 140
    :cond_1
    :goto_0
    return-void

    #@20
    .line 148
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/IpConfiguration;

    #@0
    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/net/EthernetManager;->mService:Landroid/net/IEthernetManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/IEthernetManager;->setConfiguration(Landroid/net/IpConfiguration;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 98
    :goto_0
    return-void

    #@6
    .line 101
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
