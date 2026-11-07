.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/LongConsumer;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/LongConsumer;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/LongConsumer;

    iput-wide p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/LongConsumer;

    iget-wide v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;->f$1:J

    invoke-static {v0, v1, v2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->lambda$getVersion$2(Ljava/util/function/LongConsumer;J)V

    return-void
.end method
