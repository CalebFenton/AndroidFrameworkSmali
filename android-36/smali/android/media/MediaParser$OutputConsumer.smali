.class public interface abstract Landroid/media/MediaParser$OutputConsumer;
.super Ljava/lang/Object;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutputConsumer"
.end annotation


# virtual methods
.method public abstract whitelist onSampleCompleted(IJIIILandroid/media/MediaCodec$CryptoInfo;)V
.end method

.method public abstract whitelist onSampleDataFound(ILandroid/media/MediaParser$InputReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist onSeekMapFound(Landroid/media/MediaParser$SeekMap;)V
.end method

.method public abstract whitelist onTrackCountFound(I)V
.end method

.method public abstract whitelist onTrackDataFound(ILandroid/media/MediaParser$TrackData;)V
.end method
