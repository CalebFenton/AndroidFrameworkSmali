.class public final synthetic Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;->f$0:I

    iput-boolean p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;->f$0:I

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;->f$1:Z

    check-cast p1, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->$r8$lambda$8wlxVN0nUoUvfqxiukEAdsIbFe8(IZLcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    return-void
.end method
