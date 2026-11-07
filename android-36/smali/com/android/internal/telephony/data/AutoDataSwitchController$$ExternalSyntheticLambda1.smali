.class public final synthetic Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/AutoDataSwitchController;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AutoDataSwitchController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    iput p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist onAlarm()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->$r8$lambda$ZK7kHF8vUj4xB3UFIedEbuAMfuI(Lcom/android/internal/telephony/data/AutoDataSwitchController;I)V

    return-void
.end method
