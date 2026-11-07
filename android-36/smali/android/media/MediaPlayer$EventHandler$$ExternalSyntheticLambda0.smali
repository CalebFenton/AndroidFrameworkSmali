.class public final synthetic Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaPlayer$EventHandler;

.field public final synthetic blacklist f$1:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnRtpRxNoticeListener;I[I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer$EventHandler;

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    iput p3, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$3:[I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer$EventHandler;

    iget-object v1, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer$OnRtpRxNoticeListener;

    iget v2, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler$$ExternalSyntheticLambda0;->f$3:[I

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaPlayer$EventHandler;->$r8$lambda$AErwA6IA8bq3hHgvpTs7KS1Brcc(Landroid/media/MediaPlayer$EventHandler;Landroid/media/MediaPlayer$OnRtpRxNoticeListener;I[I)V

    return-void
.end method
