.class public final synthetic Landroid/net/TetheringManager$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager$TetheringEventCallback;

.field public final synthetic blacklist f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/Network;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda1;->f$0:Landroid/net/TetheringManager$TetheringEventCallback;

    iput-object p2, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda1;->f$0:Landroid/net/TetheringManager$TetheringEventCallback;

    iget-object v1, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    invoke-static {v0, v1}, Landroid/net/TetheringManager$5;->lambda$onUpstreamChanged$0(Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/Network;)V

    return-void
.end method
