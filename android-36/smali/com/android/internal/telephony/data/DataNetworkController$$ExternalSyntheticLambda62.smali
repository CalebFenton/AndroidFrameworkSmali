.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetworkController;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;->f$1:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda62;->f$1:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataNetworkController;->$r8$lambda$IVlTesH8V9LXOTjrWjv8rtAlTmk(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method
