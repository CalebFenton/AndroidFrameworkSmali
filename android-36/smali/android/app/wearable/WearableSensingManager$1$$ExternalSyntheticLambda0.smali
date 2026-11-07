.class public final synthetic Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/wearable/WearableSensingManager$1;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/wearable/WearableSensingManager$1;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/wearable/WearableSensingManager$1;

    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, v1, v2, v3}, Landroid/app/wearable/WearableSensingManager$1;->$r8$lambda$Gtfj7A2IVR2kFtlzeg6PG4SBaLs(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
