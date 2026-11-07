.class public final synthetic Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->$r8$lambda$C8LuI05QcZrg3eL7bKQPpxorTNE(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    return-void
.end method
