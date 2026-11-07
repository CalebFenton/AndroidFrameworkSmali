.class public final synthetic Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Lcom/android/internal/content/om/OverlayScanner;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayScanner;-><init>()V

    return-object v0
.end method
