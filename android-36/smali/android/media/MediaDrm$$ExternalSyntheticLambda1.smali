.class public final synthetic Landroid/media/MediaDrm$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaDrm;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaDrm;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaDrm;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaDrm;

    check-cast p1, Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    invoke-static {v0, p1}, Landroid/media/MediaDrm;->$r8$lambda$QqIASoflK_7IX95rX5nUDFEahXs(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
