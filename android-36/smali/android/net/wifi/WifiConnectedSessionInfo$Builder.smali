.class public final Landroid/net/wifi/WifiConnectedSessionInfo$Builder;
.super Ljava/lang/Object;
.source "WifiConnectedSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConnectedSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsUserSelected:Z

.field private final blacklist mSessionId:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiConnectedSessionInfo$Builder;->mIsUserSelected:Z

    .line 48
    iput p1, p0, Landroid/net/wifi/WifiConnectedSessionInfo$Builder;->mSessionId:I

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiConnectedSessionInfo;
    .registers 5

    .line 59
    new-instance v0, Landroid/net/wifi/WifiConnectedSessionInfo;

    iget v1, p0, Landroid/net/wifi/WifiConnectedSessionInfo$Builder;->mSessionId:I

    iget-boolean v2, p0, Landroid/net/wifi/WifiConnectedSessionInfo$Builder;->mIsUserSelected:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiConnectedSessionInfo;-><init>(IZLandroid/net/wifi/WifiConnectedSessionInfo-IA;)V

    return-object v0
.end method

.method public whitelist setUserSelected(Z)Landroid/net/wifi/WifiConnectedSessionInfo$Builder;
    .registers 2
    .param p1, "isUserSelected"    # Z

    .line 53
    iput-boolean p1, p0, Landroid/net/wifi/WifiConnectedSessionInfo$Builder;->mIsUserSelected:Z

    .line 54
    return-object p0
.end method
