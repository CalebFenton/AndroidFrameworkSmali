.class public final synthetic Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/appprediction/AppPredictionService;

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda0;->f$0:Landroid/service/appprediction/AppPredictionService;

    iput-object p2, p0, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda0;->f$0:Landroid/service/appprediction/AppPredictionService;

    iget-object v1, p0, Landroid/service/appprediction/AppPredictionService$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    invoke-static {v0, v1, p1}, Landroid/service/appprediction/AppPredictionService;->$r8$lambda$IcTUs_jsHwL9h4WHwRusV7rpb28(Landroid/service/appprediction/AppPredictionService;Ljava/util/ArrayList;Landroid/service/appprediction/AppPredictionService$CallbackWrapper;)V

    return-void
.end method
