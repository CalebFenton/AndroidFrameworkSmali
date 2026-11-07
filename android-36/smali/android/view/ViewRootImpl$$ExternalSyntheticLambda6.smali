.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final whitelist onTransactionCommitted()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->$r8$lambda$j3mpoWnnr1Jv_6dNJl-Ge67-IRA(Landroid/view/ViewRootImpl;)V

    return-void
.end method
