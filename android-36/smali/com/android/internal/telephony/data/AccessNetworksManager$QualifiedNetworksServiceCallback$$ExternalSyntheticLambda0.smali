.class public final synthetic Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/IIntegerConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/IIntegerConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/IIntegerConsumer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->$r8$lambda$3oOeFJOhLW4XClg9T3SjuZtKGg0(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V

    return-void
.end method
