.class public final synthetic Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IProcedureConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    return-void
.end method


# virtual methods
.method public final blacklist onNewProcedureReady(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->$r8$lambda$dKGyGlaCtrdjkiQyVVutc85i-tE(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    return-void
.end method
