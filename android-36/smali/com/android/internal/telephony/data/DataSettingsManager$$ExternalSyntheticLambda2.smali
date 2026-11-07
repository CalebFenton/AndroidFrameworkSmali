.class public final synthetic Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$$ExternalSyntheticLambda2;->f$0:Z

    check-cast p1, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->$r8$lambda$wdxSCdThUs3U8IecpFkVrVJQtqs(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-void
.end method
