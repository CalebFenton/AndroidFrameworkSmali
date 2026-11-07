.class public Landroid/security/KeyChain$KeyChainConnection;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainConnection"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/security/IKeyChainService;

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/security/IKeyChainService;

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    iput-object p1, p0, Landroid/security/KeyChain$KeyChainConnection;->mContext:Landroid/content/Context;

    .line 979
    iput-object p2, p0, Landroid/security/KeyChain$KeyChainConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 980
    iput-object p3, p0, Landroid/security/KeyChain$KeyChainConnection;->mService:Landroid/security/IKeyChainService;

    .line 981
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 983
    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/KeyChain$KeyChainConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 984
    return-void
.end method

.method public greylist-max-o getService()Landroid/security/IKeyChainService;
    .registers 2

    .line 988
    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->mService:Landroid/security/IKeyChainService;

    return-object v0
.end method
