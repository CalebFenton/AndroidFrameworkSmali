.class public final synthetic Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioTrack$StreamEventHandler;

.field public final synthetic blacklist f$1:Landroid/media/AudioTrack$StreamEventCbInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iput-object p2, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda1;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/AudioTrack$StreamEventHandler$$ExternalSyntheticLambda1;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    invoke-static {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->$r8$lambda$4JJwngYADJwb6KtDnABGBlRkVEc(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V

    return-void
.end method
