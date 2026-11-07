.class public final synthetic Landroid/telecom/Call$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/Call$Callback;

.field public final synthetic blacklist f$1:Landroid/telecom/Call;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Landroid/telecom/Call$RttCall;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Call$Callback;

    iput-object p2, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$1:Landroid/telecom/Call;

    iput-boolean p3, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$3:Landroid/telecom/Call$RttCall;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$1:Landroid/telecom/Call;

    iget-boolean v2, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Landroid/telecom/Call$$ExternalSyntheticLambda1;->f$3:Landroid/telecom/Call$RttCall;

    invoke-static {v0, v1, v2, v3}, Landroid/telecom/Call;->lambda$fireOnIsRttChanged$4(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    return-void
.end method
