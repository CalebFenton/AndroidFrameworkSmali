.class public final Landroid/net/wifi/nan/SubscribeSettings$Builder;
.super Ljava/lang/Object;
.source "SubscribeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/SubscribeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mSubscribeCount:I

.field mSubscribeType:I

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
.method public build()Landroid/net/wifi/nan/SubscribeSettings;
    .locals 5

    #@0
    .prologue
    .line 202
    new-instance v0, Landroid/net/wifi/nan/SubscribeSettings;

    #@2
    iget v1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeType:I

    #@4
    iget v2, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeCount:I

    #@6
    iget v3, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mTtlSec:I

    #@8
    const/4 v4, 0x0

    #@9
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/nan/SubscribeSettings;-><init>(IIILandroid/net/wifi/nan/SubscribeSettings;)V

    #@c
    return-object v0
.end method

.method public setSubscribeCount(I)Landroid/net/wifi/nan/SubscribeSettings$Builder;
    .locals 2
    .param p1, "subscribeCount"    # I

    #@0
    .prologue
    .line 170
    if-gez p1, :cond_0

    #@2
    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid subscribeCount - must be non-negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 173
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeCount:I

    #@d
    .line 174
    return-object p0
.end method

.method public setSubscribeType(I)Landroid/net/wifi/nan/SubscribeSettings$Builder;
    .locals 3
    .param p1, "subscribeType"    # I

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
    const-string/jumbo v2, "Invalid subscribeType - "

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
    iput p1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mSubscribeType:I

    #@21
    .line 154
    return-object p0
.end method

.method public setTtlSec(I)Landroid/net/wifi/nan/SubscribeSettings$Builder;
    .locals 2
    .param p1, "ttlSec"    # I

    #@0
    .prologue
    .line 190
    if-gez p1, :cond_0

    #@2
    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid ttlSec - must be non-negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 193
    :cond_0
    iput p1, p0, Landroid/net/wifi/nan/SubscribeSettings$Builder;->mTtlSec:I

    #@d
    .line 194
    return-object p0
.end method
