.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Message;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Message;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21$$ExternalSyntheticLambda0;->f$0:Landroid/os/Message;

    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21$$ExternalSyntheticLambda0;->f$0:Landroid/os/Message;

    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21;->$r8$lambda$KQ52qUrAMUznWnKe5wjrvgWJuuI(Landroid/os/Message;Z)V

    return-void
.end method
