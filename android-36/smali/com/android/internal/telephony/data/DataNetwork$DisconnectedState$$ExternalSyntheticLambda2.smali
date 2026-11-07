.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;->$r8$lambda$akCkJuQbWA22kXB9C5B0lG-aWIw(Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method
