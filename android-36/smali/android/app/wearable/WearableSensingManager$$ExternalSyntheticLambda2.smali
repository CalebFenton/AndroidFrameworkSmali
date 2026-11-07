.class public final synthetic Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/wearable/WearableSensingManager;

.field public final synthetic blacklist f$1:Landroid/app/wearable/WearableConnection;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/wearable/WearableSensingManager;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/wearable/WearableConnection;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/wearable/WearableSensingManager;

    iget-object v1, p0, Landroid/app/wearable/WearableSensingManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/wearable/WearableConnection;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroid/app/wearable/WearableSensingManager;->$r8$lambda$1N1-ahcdKgRbrJYFjidNq70uN-M(Landroid/app/wearable/WearableSensingManager;Landroid/app/wearable/WearableConnection;Ljava/lang/Integer;)V

    return-void
.end method
