.class public final synthetic Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    iput-boolean p3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$1:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->$r8$lambda$f4UFo4SJm1kNd3Aba8dnFSAsN2Y(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Z)V

    return-void
.end method
