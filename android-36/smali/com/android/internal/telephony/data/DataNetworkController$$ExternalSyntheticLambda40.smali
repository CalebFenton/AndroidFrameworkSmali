.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda40;->f$0:Lcom/android/internal/telephony/data/DataNetworkController;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->$r8$lambda$rdBwHNyL7eRDKQ3f7NpwhKAfUzw(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method
