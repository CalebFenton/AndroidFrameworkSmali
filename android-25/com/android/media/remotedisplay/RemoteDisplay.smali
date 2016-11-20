.class public Lcom/android/media/remotedisplay/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# static fields
.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x2

.field public static final STATUS_CONNECTED:I = 0x4

.field public static final STATUS_CONNECTING:I = 0x3

.field public static final STATUS_IN_USE:I = 0x1

.field public static final STATUS_NOT_AVAILABLE:I


# instance fields
.field private mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field private final mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "id must not be null or empty"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 76
    :cond_0
    new-instance v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@14
    invoke-direct {v0, p1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;-><init>(Ljava/lang/String;)V

    #@17
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@19
    .line 77
    invoke-virtual {p0, p2}, Lcom/android/media/remotedisplay/RemoteDisplay;->setName(Ljava/lang/String;)V

    #@1c
    .line 72
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method getInfo()Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .locals 2

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 168
    new-instance v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@6
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@8
    invoke-direct {v0, v1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;-><init>(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)V

    #@b
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@d
    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@f
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getPresentationDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    #@4
    return v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    #@4
    return v0
.end method

.method public getVolume()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    #@4
    return v0
.end method

.method public getVolumeHandling()I
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    #@4
    return v0
.end method

.method public getVolumeMax()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    #@4
    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    #@4
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 101
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@c
    iput-object p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    #@e
    .line 102
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@11
    .line 99
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget-object v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    #@4
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 90
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@c
    iput-object p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    #@e
    .line 91
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@11
    .line 88
    :cond_0
    return-void
.end method

.method public setPresentationDisplayId(I)V
    .locals 1
    .param p1, "presentationDisplayId"    # I

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 156
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@8
    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    #@a
    .line 157
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@d
    .line 154
    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 112
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@8
    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    #@a
    .line 113
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@d
    .line 110
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 123
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@8
    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    #@a
    .line 124
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@d
    .line 121
    :cond_0
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .param p1, "volumeHandling"    # I

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 145
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@8
    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    #@a
    .line 146
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@d
    .line 143
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .param p1, "volumeMax"    # I

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    iget v0, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 134
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@8
    iput p1, v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    #@a
    .line 135
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mImmutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@d
    .line 132
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RemoteDisplay{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplay;->mMutableInfo:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@e
    invoke-virtual {v1}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "}"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
