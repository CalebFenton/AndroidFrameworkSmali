.class public final synthetic Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda7;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->$r8$lambda$Fn79WJcBX667TkouCEAHC07q5Zo(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V

    return-void
.end method
