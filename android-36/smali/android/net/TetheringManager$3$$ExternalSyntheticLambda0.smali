.class public final synthetic Landroid/net/TetheringManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/net/TetheringManager$StopTetheringCallback;


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/net/TetheringManager$StopTetheringCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/TetheringManager$3$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Landroid/net/TetheringManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/net/TetheringManager$StopTetheringCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget v0, p0, Landroid/net/TetheringManager$3$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Landroid/net/TetheringManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/net/TetheringManager$StopTetheringCallback;

    invoke-static {v0, v1}, Landroid/net/TetheringManager$3;->lambda$onResult$0(ILandroid/net/TetheringManager$StopTetheringCallback;)V

    return-void
.end method
