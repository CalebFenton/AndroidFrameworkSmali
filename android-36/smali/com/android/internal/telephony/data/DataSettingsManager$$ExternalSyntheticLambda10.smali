.class public final synthetic Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;->f$1:Z

    iput p3, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;->f$1:Z

    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda10;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->$r8$lambda$Jmk3Z7ZPXEVUeDU6K6DWcnoAEjY(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;ZI)V

    return-void
.end method
