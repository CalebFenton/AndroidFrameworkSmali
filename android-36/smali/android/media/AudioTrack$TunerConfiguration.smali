.class public Landroid/media/AudioTrack$TunerConfiguration;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TunerConfiguration"
.end annotation


# static fields
.field public static final whitelist CONTENT_ID_NONE:I


# instance fields
.field private final blacklist mContentId:I

.field private final blacklist mSyncId:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 6
    .param p1, "contentId"    # I
    .param p2, "syncId"    # I

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    if-ltz p1, :cond_2c

    .line 1031
    const/4 v0, 0x1

    if-lt p2, v0, :cond_d

    .line 1034
    iput p1, p0, Landroid/media/AudioTrack$TunerConfiguration;->mContentId:I

    .line 1035
    iput p2, p0, Landroid/media/AudioTrack$TunerConfiguration;->mSyncId:I

    .line 1036
    return-void

    .line 1032
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive or CONTENT_ID_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getContentId()I
    .registers 2

    .line 1043
    iget v0, p0, Landroid/media/AudioTrack$TunerConfiguration;->mContentId:I

    return v0
.end method

.method public whitelist getSyncId()I
    .registers 2

    .line 1051
    iget v0, p0, Landroid/media/AudioTrack$TunerConfiguration;->mSyncId:I

    return v0
.end method
