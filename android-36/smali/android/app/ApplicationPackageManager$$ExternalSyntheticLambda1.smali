.class public final synthetic Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ApplicationPackageManager;

.field public final synthetic blacklist f$1:Landroid/os/UserHandle;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/ApplicationPackageManager;

    iput-object p2, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    iput p3, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/ApplicationPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    iget v2, p0, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->$r8$lambda$uLLyus_hKSvNbMZDIY5Cj5EP0sk(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
