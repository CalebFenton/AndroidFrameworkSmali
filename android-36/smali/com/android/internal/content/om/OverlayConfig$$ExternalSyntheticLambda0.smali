.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-static {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->lambda$sortPartitions$2(Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)I

    move-result p1

    return p1
.end method
