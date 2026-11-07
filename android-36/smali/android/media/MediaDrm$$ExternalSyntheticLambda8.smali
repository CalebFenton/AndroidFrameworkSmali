.class public final synthetic Landroid/media/MediaDrm$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaDrm;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[B

.field public final synthetic blacklist f$4:[B

.field public final synthetic blacklist f$5:J

.field public final synthetic blacklist f$6:Ljava/util/List;

.field public final synthetic blacklist f$7:Z

.field public final synthetic blacklist f$8:Landroid/media/MediaDrm$ListenerWithExecutor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaDrm;II[B[BJLjava/util/List;ZLandroid/media/MediaDrm$ListenerWithExecutor;)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaDrm;

    iput p2, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$2:I

    iput-object p4, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$3:[B

    iput-object p5, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$4:[B

    iput-wide p6, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$5:J

    iput-object p8, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$6:Ljava/util/List;

    iput-boolean p9, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$7:Z

    iput-object p10, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$8:Landroid/media/MediaDrm$ListenerWithExecutor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 11

    .line 0
    iget-object v0, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaDrm;

    iget v1, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$1:I

    iget v2, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$2:I

    iget-object v3, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$3:[B

    iget-object v4, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$4:[B

    iget-wide v5, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$5:J

    iget-object v7, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$6:Ljava/util/List;

    iget-boolean v8, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$7:Z

    iget-object v9, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$8:Landroid/media/MediaDrm$ListenerWithExecutor;

    invoke-static/range {v0 .. v9}, Landroid/media/MediaDrm;->lambda$postEventFromNative$4(Landroid/media/MediaDrm;II[B[BJLjava/util/List;ZLandroid/media/MediaDrm$ListenerWithExecutor;)V

    return-void
.end method
