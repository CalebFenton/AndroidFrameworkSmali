.class public final Landroid/media/MediaCodec$GlobalResourceInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalResourceInfo"
.end annotation


# instance fields
.field blacklist mAvailable:J

.field blacklist mCapacity:J

.field blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAvailable()J
    .registers 3

    .line 2360
    iget-wide v0, p0, Landroid/media/MediaCodec$GlobalResourceInfo;->mAvailable:J

    return-wide v0
.end method

.method public blacklist getCapacity()J
    .registers 3

    .line 2356
    iget-wide v0, p0, Landroid/media/MediaCodec$GlobalResourceInfo;->mCapacity:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 2352
    iget-object v0, p0, Landroid/media/MediaCodec$GlobalResourceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method
