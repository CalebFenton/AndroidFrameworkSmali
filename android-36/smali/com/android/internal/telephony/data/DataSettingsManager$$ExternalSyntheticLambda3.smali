.class public final synthetic Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;->f$0:Z

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;->f$0:Z

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->$r8$lambda$JRahrLntf21lY34T2Bi_Y7ShCIw(ZLjava/lang/String;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-void
.end method
