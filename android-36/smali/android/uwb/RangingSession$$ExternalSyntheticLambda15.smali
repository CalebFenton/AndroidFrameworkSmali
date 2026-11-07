.class public final synthetic Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/uwb/RangingSession;

.field public final synthetic blacklist f$1:Landroid/uwb/RangingReport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/uwb/RangingSession;Landroid/uwb/RangingReport;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;->f$0:Landroid/uwb/RangingSession;

    iput-object p2, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;->f$1:Landroid/uwb/RangingReport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;->f$0:Landroid/uwb/RangingSession;

    iget-object v1, p0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;->f$1:Landroid/uwb/RangingReport;

    invoke-static {v0, v1}, Landroid/uwb/RangingSession;->$r8$lambda$qaZN_zDLWgT2c1WFr78U7pET01k(Landroid/uwb/RangingSession;Landroid/uwb/RangingReport;)V

    return-void
.end method
