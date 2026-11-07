.class public final synthetic Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda22;->f$0:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda22;->f$0:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;->onDeviceConfigChanged()V

    return-void
.end method
