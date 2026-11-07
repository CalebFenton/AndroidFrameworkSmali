.class public final synthetic Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    iput p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;->f$1:I

    iput-boolean p3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    iget v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;->f$1:I

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->$r8$lambda$CiWl-j0LlVRi0JvJrjVjc4ib62o(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;IZ)V

    return-void
.end method
