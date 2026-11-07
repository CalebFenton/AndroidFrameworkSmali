.class public final synthetic Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    iput-boolean p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;->f$1:Z

    check-cast p1, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->$r8$lambda$Fyb4U251WjWIsoLXbt5gIqn-UYI(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;ZLcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    return-void
.end method
