.class public final Landroid/net/wifi/nan/PublishSettings$Builder;
.super Ljava/lang/Object;
.source "PublishSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/PublishSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mPublishCount:I

.field mPublishType:I

.field mTtlSec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/PublishSettings;
    .locals 5

    #@0
    .prologue
    .line 201
    new-instance v0, Landroid/net/wifi/nan/PublishSettings;

    #@2
    iget v1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishType:I

    #@4
    iget v2, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishCount:I

    #@6
    iget v3, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mTtlSec:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/nan/PublishSettings;-><init>(IIILandroid/net/wifi/nan/PublishSettings;)V

    #@c
    return-object v0
.end method

.method public setPublishCount(I)Landroid/net/wifi/nan/PublishSettings$Builder;
    .locals 2
    .param p1, "publishCount"    # I

    #@0
    .prologue
    .line 169
    if-gez p1, :cond_0

    #@2
    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid publishCount - must be non-negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 172
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishCount:I

    #@d
    .line 173
    return-object p0
.end method

.method public setPublishType(I)Landroid/net/wifi/nan/PublishSettings$Builder;
    .locals 3
    .param p1, "publishType"    # I

    #@0
    .prologue
    .line 150
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid publishType - "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    #@1f
    .line 153
    :cond_1
    iput p1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mPublishType:I

    #@21
    .line 154
    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/nan/PublishSettings$Builder;
    .locals 2
    .param p1, "ttlSec"    # I

    #@0
    .prologue
    .line 189
    if-gez p1, :cond_0

    #@2
    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid ttlSec - must be non-negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 192
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/PublishSettings$Builder;->mTtlSec:I

    #@d
    .line 193
    return-object p0
.end method
