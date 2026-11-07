.class public final Landroid/net/VpnTransportInfo;
.super Ljava/lang/Object;
.source "VpnTransportInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/VpnTransportInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UPSIDE_DOWN_CAKE:I = 0x22


# instance fields
.field private final blacklist mBypassable:Z

.field private final blacklist mLongLivedTcpConnectionsExpensive:Z

.field private final blacklist mSessionId:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 206
    new-instance v0, Landroid/net/VpnTransportInfo$1;

    invoke-direct {v0}, Landroid/net/VpnTransportInfo$1;-><init>()V

    sput-object v0, Landroid/net/VpnTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;ZZ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "bypassable"    # Z
    .param p4, "longLivedTcpConnectionsExpensive"    # Z

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Landroid/net/VpnTransportInfo;->mType:I

    .line 102
    iput-object p2, p0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    .line 103
    iput-boolean p3, p0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    .line 104
    iput-boolean p4, p0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist areLongLivedTcpConnectionsExpensive()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 172
    instance-of v0, p1, Landroid/net/VpnTransportInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 174
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/VpnTransportInfo;

    .line 175
    .local v0, "that":Landroid/net/VpnTransportInfo;
    iget v2, p0, Landroid/net/VpnTransportInfo;->mType:I

    iget v3, v0, Landroid/net/VpnTransportInfo;->mType:I

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-boolean v2, p0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    iget-boolean v3, v0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    if-ne v2, v3, :cond_26

    iget-boolean v2, p0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    iget-boolean v3, v0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    if-ne v2, v3, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public blacklist getApplicableRedactions()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 64
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/net/VpnTransportInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 183
    iget v0, p0, Landroid/net/VpnTransportInfo;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBypassable()Z
    .registers 3

    .line 115
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    iget-boolean v0, p0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    return v0

    .line 116
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported before U"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist makeCopy(J)Landroid/net/TransportInfo;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/net/VpnTransportInfo;->makeCopy(J)Landroid/net/VpnTransportInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist makeCopy(J)Landroid/net/VpnTransportInfo;
    .registers 9
    .param p1, "redactions"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 74
    new-instance v0, Landroid/net/VpnTransportInfo;

    iget v1, p0, Landroid/net/VpnTransportInfo;->mType:I

    .line 75
    const-wide/16 v2, 0x4

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_11

    :cond_f
    iget-object v2, p0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    :goto_11
    iget-boolean v3, p0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    iget-boolean v4, p0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;ZZ)V

    .line 74
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 188
    iget v0, p0, Landroid/net/VpnTransportInfo;->mType:I

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 188
    const-string v1, "VpnTransportInfo{type=%d, sessionId=%s, bypassable=%b longLivedTcpConnectionsExpensive=%b}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    iget v0, p0, Landroid/net/VpnTransportInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroid/net/VpnTransportInfo;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-boolean v0, p0, Landroid/net/VpnTransportInfo;->mBypassable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    iget-boolean v0, p0, Landroid/net/VpnTransportInfo;->mLongLivedTcpConnectionsExpensive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    return-void
.end method
