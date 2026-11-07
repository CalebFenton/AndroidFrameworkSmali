.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/LongConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/LongConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/LongConsumer;

    invoke-static {v0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->lambda$getVersion$0(Ljava/util/function/LongConsumer;)V

    return-void
.end method
