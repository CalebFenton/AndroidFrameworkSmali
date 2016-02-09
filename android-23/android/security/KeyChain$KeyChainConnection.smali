.class public final Landroid/security/KeyChain$KeyChainConnection;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyChainConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/security/IKeyChainService;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/security/IKeyChainService;

    #@0
    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 500
    iput-object p1, p0, Landroid/security/KeyChain$KeyChainConnection;->context:Landroid/content/Context;

    #@5
    .line 501
    iput-object p2, p0, Landroid/security/KeyChain$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    #@7
    .line 502
    iput-object p3, p0, Landroid/security/KeyChain$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    #@9
    .line 499
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Landroid/security/KeyChain$KeyChainConnection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/security/IKeyChainService;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->context:Landroid/content/Context;

    #@2
    iget-object v1, p0, Landroid/security/KeyChain$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@7
    .line 504
    return-void
.end method

.method public getService()Landroid/security/IKeyChainService;
    .locals 1

    #@0
    .prologue
    .line 508
    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    #@2
    return-object v0
.end method
