.class public final Landroid/hardware/display/WifiDisplaySessionInfo;
.super Ljava/lang/Object;
.source "WifiDisplaySessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/WifiDisplaySessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mClient:Z

.field private final greylist-max-o mGroupId:Ljava/lang/String;

.field private final greylist-max-o mIP:Ljava/lang/String;

.field private final greylist-max-o mPassphrase:Ljava/lang/String;

.field private final greylist-max-o mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplaySessionInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplaySessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 7

    .line 59
    const-string v4, ""

    const-string v5, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor greylist-max-o <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "client"    # Z
    .param p2, "session"    # I
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "pp"    # Ljava/lang/String;
    .param p5, "ip"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    .line 65
    iput p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    .line 66
    iput-object p3, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getGroupId()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIP()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPassphrase()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSessionId()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    return v0
.end method

.method public greylist-max-o isClient()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDisplaySessionInfo:\n    Client/Owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    iget-boolean v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    if-eqz v1, :cond_12

    const-string v1, "Client"

    goto :goto_14

    :cond_12
    const-string v1, "Owner"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    GroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    Passphrase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    SessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    IP Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return-void
.end method
