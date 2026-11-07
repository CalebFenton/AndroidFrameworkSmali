.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$updateUserSensitiveForApp$28(ILjava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
