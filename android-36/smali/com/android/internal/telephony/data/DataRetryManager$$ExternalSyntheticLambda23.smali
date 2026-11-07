.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;->f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;

    return-void
.end method


# virtual methods
.method public final whitelist onAlarm()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;->f$0:Lcom/android/internal/telephony/data/DataRetryManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;->f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$bbEEk4RfzXl3KPbHq98dOFwettc(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void
.end method
