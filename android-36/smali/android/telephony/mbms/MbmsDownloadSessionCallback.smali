.class public Landroid/telephony/mbms/MbmsDownloadSessionCallback;
.super Ljava/lang/Object;
.source "MbmsDownloadSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/MbmsDownloadSessionCallback$DownloadError;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 60
    return-void
.end method

.method public whitelist onFileServicesUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileServiceInfo;>;"
    return-void
.end method

.method public whitelist onMiddlewareReady()V
    .registers 1

    .line 88
    return-void
.end method
