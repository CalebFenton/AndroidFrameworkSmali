.class public final synthetic Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZLjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;->f$1:Z

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->$r8$lambda$c4V_xkcFpFpeCSzSDdkutbnnisg(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZLjava/lang/String;)V

    return-void
.end method
