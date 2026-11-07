.class public final synthetic Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

.field public final synthetic blacklist f$1:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

.field public final synthetic blacklist f$2:[B


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;->f$2:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;->f$2:[B

    invoke-static {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->$r8$lambda$aA_iIC2FQH2v3VEK85d5XXE9poU(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    return-void
.end method
