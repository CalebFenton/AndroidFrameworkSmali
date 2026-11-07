.class public final synthetic Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->$r8$lambda$M3hrDqSsV6kJ0cXf6jVz70bOpWk(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method
