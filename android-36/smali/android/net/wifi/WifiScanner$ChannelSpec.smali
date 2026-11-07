.class public Landroid/net/wifi/WifiScanner$ChannelSpec;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelSpec"
.end annotation


# instance fields
.field public greylist-max-o dwellTimeMS:I

.field public whitelist frequency:I

.field public greylist-max-o passive:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "frequency"    # I

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 447
    iput v0, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    .line 448
    return-void
.end method

.method public constructor blacklist <init>(IZI)V
    .registers 4
    .param p1, "frequency"    # I
    .param p2, "passive"    # Z
    .param p3, "dwellTimeMS"    # I

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    .line 456
    iput-boolean p2, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 457
    iput p3, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    .line 458
    return-void
.end method
