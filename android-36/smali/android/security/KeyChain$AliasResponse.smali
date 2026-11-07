.class Landroid/security/KeyChain$AliasResponse;
.super Landroid/security/IKeyChainAliasCallback$Stub;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AliasResponse"
.end annotation


# instance fields
.field private final greylist-max-o keyChainAliasResponse:Landroid/security/KeyChainAliasCallback;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/security/KeyChainAliasCallback;)V
    .registers 2
    .param p1, "keyChainAliasResponse"    # Landroid/security/KeyChainAliasCallback;

    .line 716
    invoke-direct {p0}, Landroid/security/IKeyChainAliasCallback$Stub;-><init>()V

    .line 717
    iput-object p1, p0, Landroid/security/KeyChain$AliasResponse;->keyChainAliasResponse:Landroid/security/KeyChainAliasCallback;

    .line 718
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o alias(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 720
    iget-object v0, p0, Landroid/security/KeyChain$AliasResponse;->keyChainAliasResponse:Landroid/security/KeyChainAliasCallback;

    invoke-interface {v0, p1}, Landroid/security/KeyChainAliasCallback;->alias(Ljava/lang/String;)V

    .line 721
    return-void
.end method
