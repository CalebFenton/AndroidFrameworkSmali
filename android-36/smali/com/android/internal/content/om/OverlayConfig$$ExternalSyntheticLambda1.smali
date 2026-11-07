.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    invoke-static {p1}, Lcom/android/internal/content/om/OverlayConfig;->lambda$dump$5(Lcom/android/internal/content/om/OverlayConfig$Configuration;)I

    move-result p1

    return p1
.end method
