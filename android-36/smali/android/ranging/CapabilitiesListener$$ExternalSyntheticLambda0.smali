.class public final synthetic Landroid/ranging/CapabilitiesListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/ranging/CapabilitiesListener;

.field public final synthetic blacklist f$1:Landroid/ranging/RangingManager$RangingCapabilitiesCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/ranging/CapabilitiesListener;Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/ranging/CapabilitiesListener$$ExternalSyntheticLambda0;->f$0:Landroid/ranging/CapabilitiesListener;

    iput-object p2, p0, Landroid/ranging/CapabilitiesListener$$ExternalSyntheticLambda0;->f$1:Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/ranging/CapabilitiesListener$$ExternalSyntheticLambda0;->f$0:Landroid/ranging/CapabilitiesListener;

    iget-object v1, p0, Landroid/ranging/CapabilitiesListener$$ExternalSyntheticLambda0;->f$1:Landroid/ranging/RangingManager$RangingCapabilitiesCallback;

    invoke-static {v0, v1}, Landroid/ranging/CapabilitiesListener;->$r8$lambda$UzOkWEqVveFRLUoNFXhcDe38_T8(Landroid/ranging/CapabilitiesListener;Landroid/ranging/RangingManager$RangingCapabilitiesCallback;)V

    return-void
.end method
