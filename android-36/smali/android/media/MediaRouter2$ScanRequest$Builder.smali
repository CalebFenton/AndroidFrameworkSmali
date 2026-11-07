.class public final Landroid/media/MediaRouter2$ScanRequest$Builder;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2$ScanRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mIsScreenOffScan:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaRouter2$ScanRequest;
    .registers 4

    .line 1879
    new-instance v0, Landroid/media/MediaRouter2$ScanRequest;

    iget-boolean v1, p0, Landroid/media/MediaRouter2$ScanRequest$Builder;->mIsScreenOffScan:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaRouter2$ScanRequest;-><init>(ZLandroid/media/MediaRouter2-IA;)V

    return-object v0
.end method

.method public whitelist setScreenOffScan(Z)Landroid/media/MediaRouter2$ScanRequest$Builder;
    .registers 2
    .param p1, "isScreenOffScan"    # Z

    .line 1872
    iput-boolean p1, p0, Landroid/media/MediaRouter2$ScanRequest$Builder;->mIsScreenOffScan:Z

    .line 1873
    return-object p0
.end method
