.class public final synthetic Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

.field public final synthetic blacklist f$1:Landroid/net/Network;

.field public final synthetic blacklist f$2:Landroid/net/LinkProperties;

.field public final synthetic blacklist f$3:Landroid/net/NetworkCapabilities;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$2:Landroid/net/LinkProperties;

    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$3:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$2:Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;->f$3:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->$r8$lambda$ScLi5gOOqXv2eVDFpVFtFhhdNfs(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    return-void
.end method
