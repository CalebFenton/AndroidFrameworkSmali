.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/permission/PermissionControllerManager;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/permission/PermissionControllerManager;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;->f$0:Landroid/permission/PermissionControllerManager;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;->f$0:Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/permission/PermissionControllerManager;->$r8$lambda$sV-Xg1_T9EH_oiZVVEFmcOEwpRE(Landroid/permission/PermissionControllerManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
