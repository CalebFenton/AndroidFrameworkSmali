.class Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BssidBlacklistStatus"
.end annotation


# instance fields
.field mBlacklistedTimeStamp:J

.field mCounter:I

.field mIsBlacklisted:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    #@7
    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;-><init>()V

    #@3
    return-void
.end method
