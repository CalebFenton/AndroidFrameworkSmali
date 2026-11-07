.class public final synthetic Landroid/health/connect/internal/datatypes/SleepStageInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/SleepStageInternal$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroid/health/connect/internal/datatypes/SleepStageInternal;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->lambda$getExternalStages$0(Ljava/util/List;Landroid/health/connect/internal/datatypes/SleepStageInternal;)V

    return-void
.end method
