.class public final Landroid/media/MediaCodec$InstanceResourceInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceResourceInfo"
.end annotation


# instance fields
.field blacklist mName:Ljava/lang/String;

.field blacklist mPerFrameCount:J

.field blacklist mStaticCount:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 2600
    iget-object v0, p0, Landroid/media/MediaCodec$InstanceResourceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPerFrameCount()J
    .registers 3

    .line 2608
    iget-wide v0, p0, Landroid/media/MediaCodec$InstanceResourceInfo;->mPerFrameCount:J

    return-wide v0
.end method

.method public blacklist getStaticCount()J
    .registers 3

    .line 2604
    iget-wide v0, p0, Landroid/media/MediaCodec$InstanceResourceInfo;->mStaticCount:J

    return-wide v0
.end method
