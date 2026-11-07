.class public final Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mParametersIncluded:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .registers 3

    .line 1340
    new-instance v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    iget-boolean v1, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;->mParametersIncluded:Z

    invoke-direct {v0, v1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;-><init>(Z)V

    return-object v0
.end method

.method public whitelist setParametersIncluded(Z)Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;
    .registers 2
    .param p1, "included"    # Z

    .line 1330
    iput-boolean p1, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;->mParametersIncluded:Z

    .line 1331
    return-object p0
.end method
