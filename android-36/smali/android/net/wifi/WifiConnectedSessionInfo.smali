.class public final Landroid/net/wifi/WifiConnectedSessionInfo;
.super Ljava/lang/Object;
.source "WifiConnectedSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConnectedSessionInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiConnectedSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsUserSelected:Z

.field private final blacklist mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/net/wifi/WifiConnectedSessionInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConnectedSessionInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConnectedSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IZ)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "isUserSelected"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mSessionId:I

    .line 38
    iput-boolean p2, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mIsUserSelected:Z

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(IZLandroid/net/wifi/WifiConnectedSessionInfo-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiConnectedSessionInfo;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mSessionId:I

    return v0
.end method

.method public whitelist isUserSelected()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mIsUserSelected:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget v0, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-boolean v0, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mIsUserSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    return-void
.end method
