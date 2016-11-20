.class public Landroid/media/MediaSyncEvent;
.super Ljava/lang/Object;
.source "MediaSyncEvent.java"


# static fields
.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1


# instance fields
.field private mAudioSession:I

.field private final mType:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    #@6
    .line 69
    iput p1, p0, Landroid/media/MediaSyncEvent;->mType:I

    #@8
    .line 68
    return-void
.end method

.method public static createEvent(I)Landroid/media/MediaSyncEvent;
    .locals 3
    .param p0, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-static {p0}, Landroid/media/MediaSyncEvent;->isValidType(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 59
    const-string/jumbo v2, "is not a valid MediaSyncEvent type."

    #@14
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 61
    :cond_0
    new-instance v0, Landroid/media/MediaSyncEvent;

    #@22
    invoke-direct {v0, p0}, Landroid/media/MediaSyncEvent;-><init>(I)V

    #@25
    return-object v0
.end method

.method private static isValidType(I)Z
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 114
    packed-switch p0, :pswitch_data_0

    #@3
    .line 119
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 117
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 114
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/media/MediaSyncEvent;->mType:I

    #@2
    return v0
.end method

.method public setAudioSessionId(I)Landroid/media/MediaSyncEvent;
    .locals 3
    .param p1, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    if-lez p1, :cond_0

    #@2
    .line 87
    iput p1, p0, Landroid/media/MediaSyncEvent;->mAudioSession:I

    #@4
    .line 91
    return-object p0

    #@5
    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, " is not a valid session ID."

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method
