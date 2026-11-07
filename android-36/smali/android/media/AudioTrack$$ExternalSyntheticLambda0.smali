.class public final synthetic Landroid/media/AudioTrack$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/Utils$ListenerList$Listener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioTrack;

.field public final synthetic blacklist f$1:Landroid/media/AudioTrack$OnCodecFormatChangedListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack;

    iput-object p2, p0, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    return-void
.end method


# virtual methods
.method public final blacklist onEvent(ILjava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroid/media/AudioTrack$$ExternalSyntheticLambda0;->f$1:Landroid/media/AudioTrack$OnCodecFormatChangedListener;

    check-cast p2, Landroid/media/AudioMetadataReadMap;

    invoke-static {v0, v1, p1, p2}, Landroid/media/AudioTrack;->$r8$lambda$EG1sDnofkWd-yTxahEDuDlLu2YA(Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnCodecFormatChangedListener;ILandroid/media/AudioMetadataReadMap;)V

    return-void
.end method
