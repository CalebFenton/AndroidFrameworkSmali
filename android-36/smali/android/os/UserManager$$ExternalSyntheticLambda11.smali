.class public final synthetic Landroid/os/UserManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserManager;

.field public final synthetic blacklist f$1:Ljava/lang/CharSequence;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserManager;Ljava/lang/CharSequence;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/UserManager$$ExternalSyntheticLambda11;->f$0:Landroid/os/UserManager;

    iput-object p2, p0, Landroid/os/UserManager$$ExternalSyntheticLambda11;->f$1:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/os/UserManager$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/os/UserManager$$ExternalSyntheticLambda11;->f$0:Landroid/os/UserManager;

    iget-object v1, p0, Landroid/os/UserManager$$ExternalSyntheticLambda11;->f$1:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/os/UserManager$$ExternalSyntheticLambda11;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/os/UserManager;->$r8$lambda$HyjxpgUuixyJ1XREnDoJf4il8eE(Landroid/os/UserManager;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
