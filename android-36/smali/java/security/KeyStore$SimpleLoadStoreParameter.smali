.class Ljava/security/KeyStore$SimpleLoadStoreParameter;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleLoadStoreParameter"
.end annotation


# instance fields
.field private final greylist-max-o protection:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method constructor greylist-max-o <init>(Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 2
    .param p1, "protection"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 2291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2292
    iput-object p1, p0, Ljava/security/KeyStore$SimpleLoadStoreParameter;->protection:Ljava/security/KeyStore$ProtectionParameter;

    .line 2293
    return-void
.end method


# virtual methods
.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    .line 2296
    iget-object v0, p0, Ljava/security/KeyStore$SimpleLoadStoreParameter;->protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method
