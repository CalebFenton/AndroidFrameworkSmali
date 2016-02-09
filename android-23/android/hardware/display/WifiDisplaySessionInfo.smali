.class public final Landroid/hardware/display/WifiDisplaySessionInfo;
.super Ljava/lang/Object;
.source "WifiDisplaySessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/WifiDisplaySessionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplaySessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClient:Z

.field private final mGroupId:Ljava/lang/String;

.field private final mIP:Ljava/lang/String;

.field private final mPassphrase:Ljava/lang/String;

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/display/WifiDisplaySessionInfo$1;-><init>()V

    #@5
    .line 39
    sput-object v0, Landroid/hardware/display/WifiDisplaySessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 59
    const-string/jumbo v3, ""

    #@3
    const-string/jumbo v4, ""

    #@6
    const-string/jumbo v5, ""

    #@9
    const/4 v1, 0x1

    #@a
    const/4 v2, 0x0

    #@b
    move-object v0, p0

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 58
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Z
    .param p2, "session"    # I
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "pp"    # Ljava/lang/String;
    .param p5, "ip"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-boolean p1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    #@5
    .line 65
    iput p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    #@7
    .line 66
    iput-object p3, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    #@9
    .line 67
    iput-object p4, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    #@b
    .line 68
    iput-object p5, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    #@d
    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    #@2
    return v0
.end method

.method public isClient()Z
    .locals 1

    #@0
    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "WifiDisplaySessionInfo:\n    Client/Owner: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 109
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    const-string/jumbo v0, "Client"

    #@13
    .line 108
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 110
    const-string/jumbo v1, "\n    GroupId: "

    #@1a
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 110
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    #@20
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 111
    const-string/jumbo v1, "\n    Passphrase: "

    #@27
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 111
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    #@2d
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 112
    const-string/jumbo v1, "\n    SessionId: "

    #@34
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 112
    iget v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    #@3a
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 113
    const-string/jumbo v1, "\n    IP Address: "

    #@41
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 113
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    #@47
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    return-object v0

    #@50
    .line 109
    :cond_0
    const-string/jumbo v0, "Owner"

    #@53
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 94
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 95
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 96
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 97
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 92
    return-void

    #@1d
    .line 93
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method
