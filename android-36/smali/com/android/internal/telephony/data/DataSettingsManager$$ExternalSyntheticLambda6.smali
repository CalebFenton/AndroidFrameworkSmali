.class public final synthetic Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(ZI)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;->f$0:Z

    iput p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;->f$0:Z

    iget p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->$r8$lambda$7BJP4CCaqIz14lIbBM2Xq8SFxFo(ZILcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-void
.end method
