.class public final synthetic Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iput-object p2, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final blacklist run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iget-object v1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->$r8$lambda$LE52Lie1lMrOEp0tvWoxAnEOg6Y(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method
