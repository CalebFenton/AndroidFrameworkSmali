.class public final synthetic Landroid/ranging/RangingSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/ranging/RangingSession;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/ranging/RangingSession;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda6;->f$0:Landroid/ranging/RangingSession;

    iput p2, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda6;->f$0:Landroid/ranging/RangingSession;

    iget v1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {v0, v1}, Landroid/ranging/RangingSession;->$r8$lambda$5PglmuMCbAMZAmFECuVUwXgYiVo(Landroid/ranging/RangingSession;I)V

    return-void
.end method
