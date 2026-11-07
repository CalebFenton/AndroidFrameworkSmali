.class public final synthetic Landroid/os/UserManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserManager;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/UserManager$$ExternalSyntheticLambda14;->f$0:Landroid/os/UserManager;

    iput p2, p0, Landroid/os/UserManager$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/UserManager$$ExternalSyntheticLambda14;->f$0:Landroid/os/UserManager;

    iget v1, p0, Landroid/os/UserManager$$ExternalSyntheticLambda14;->f$1:I

    invoke-static {v0, v1}, Landroid/os/UserManager;->$r8$lambda$ooNoutSCQatoIUpzGYHlc9B8HQk(Landroid/os/UserManager;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
