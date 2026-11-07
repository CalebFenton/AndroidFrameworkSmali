.class public final synthetic Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;

.field public final synthetic blacklist f$1:Landroid/net/ipsec/ike/IkeSessionConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase$$ExternalSyntheticLambda0;->f$1:Landroid/net/ipsec/ike/IkeSessionConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase$$ExternalSyntheticLambda0;->f$1:Landroid/net/ipsec/ike/IkeSessionConfiguration;

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;->$r8$lambda$0lHrHSJHJULdPTF_NQBkWkHdbXo(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeAuthFirstAndLastExchangeBase;Landroid/net/ipsec/ike/IkeSessionConfiguration;)V

    return-void
.end method
