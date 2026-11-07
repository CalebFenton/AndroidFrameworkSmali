.class public final synthetic Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda3;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iput p2, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda3;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iget v1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->$r8$lambda$NPpjpSOL8j-r8SuR7KPb2TxgYF0(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;I)V

    return-void
.end method
