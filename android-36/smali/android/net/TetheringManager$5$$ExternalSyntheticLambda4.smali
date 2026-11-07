.class public final synthetic Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager$5;

.field public final synthetic blacklist f$1:Landroid/net/TetheringManager$TetheringEventCallback;

.field public final synthetic blacklist f$2:Landroid/net/TetheringCallbackStartedParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager$5;Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/TetheringCallbackStartedParcel;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;->f$0:Landroid/net/TetheringManager$5;

    iput-object p2, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;->f$1:Landroid/net/TetheringManager$TetheringEventCallback;

    iput-object p3, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;->f$2:Landroid/net/TetheringCallbackStartedParcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;->f$0:Landroid/net/TetheringManager$5;

    iget-object v1, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;->f$1:Landroid/net/TetheringManager$TetheringEventCallback;

    iget-object v2, p0, Landroid/net/TetheringManager$5$$ExternalSyntheticLambda4;->f$2:Landroid/net/TetheringCallbackStartedParcel;

    invoke-static {v0, v1, v2}, Landroid/net/TetheringManager$5;->$r8$lambda$xlPOSclmJkEEdtUOwVal737fZ5I(Landroid/net/TetheringManager$5;Landroid/net/TetheringManager$TetheringEventCallback;Landroid/net/TetheringCallbackStartedParcel;)V

    return-void
.end method
