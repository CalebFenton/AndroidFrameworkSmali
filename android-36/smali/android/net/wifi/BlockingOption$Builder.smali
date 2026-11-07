.class public final Landroid/net/wifi/BlockingOption$Builder;
.super Ljava/lang/Object;
.source "BlockingOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/BlockingOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBSSIDOnly:Z

.field private blacklist mDisableTime:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "blockingTimeSec"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    const v0, 0x15180

    if-gt p1, v0, :cond_11

    .line 89
    iput p1, p0, Landroid/net/wifi/BlockingOption$Builder;->mDisableTime:I

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/BlockingOption$Builder;->mBSSIDOnly:Z

    .line 91
    return-void

    .line 87
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "blockingTimeSec should between 1 to 86400"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/BlockingOption;
    .registers 4

    .line 109
    new-instance v0, Landroid/net/wifi/BlockingOption;

    iget v1, p0, Landroid/net/wifi/BlockingOption$Builder;->mDisableTime:I

    iget-boolean v2, p0, Landroid/net/wifi/BlockingOption$Builder;->mBSSIDOnly:Z

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/BlockingOption;-><init>(IZ)V

    return-object v0
.end method

.method public whitelist setBlockingBssidOnly(Z)Landroid/net/wifi/BlockingOption$Builder;
    .registers 2
    .param p1, "bssidOnly"    # Z

    .line 100
    iput-boolean p1, p0, Landroid/net/wifi/BlockingOption$Builder;->mBSSIDOnly:Z

    .line 101
    return-object p0
.end method
