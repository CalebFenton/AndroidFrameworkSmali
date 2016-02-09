.class public Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
.super Ljava/lang/Object;
.source "WifiPasspointOsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final OSU_METHOD_OMADM:I = 0x0

.field public static final OSU_METHOD_SOAP:I = 0x1

.field public static final OSU_METHOD_UNKNOWN:I = -0x1


# instance fields
.field public friendlyName:Ljava/lang/String;

.field public icon:Ljava/lang/Object;

.field public iconFileName:Ljava/lang/String;

.field public iconHeight:I

.field public iconType:Ljava/lang/String;

.field public iconWidth:I

.field public osuMethod:I

.field public osuNai:Ljava/lang/String;

.field public osuService:Ljava/lang/String;

.field public serverUri:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;-><init>()V

    #@5
    .line 129
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuMethod:I

    #@6
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuMethod:I

    #@6
    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 90
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "SSID: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "<"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->ssid:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, ">"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    .line 91
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->friendlyName:Ljava/lang/String;

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 92
    const-string/jumbo v1, " friendlyName: "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "<"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->friendlyName:Ljava/lang/String;

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, ">"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 93
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->serverUri:Ljava/lang/String;

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 94
    const-string/jumbo v1, " serverUri: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, "<"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->serverUri:Ljava/lang/String;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@54
    move-result-object v1

    #@55
    const-string/jumbo v2, ">"

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 95
    :cond_1
    const-string/jumbo v1, " osuMethod: "

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    move-result-object v1

    #@62
    const-string/jumbo v2, "<"

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    move-result-object v1

    #@69
    iget v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuMethod:I

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@6e
    move-result-object v1

    #@6f
    const-string/jumbo v2, ">"

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@75
    .line 96
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconFileName:Ljava/lang/String;

    #@77
    if-eqz v1, :cond_2

    #@79
    .line 97
    const-string/jumbo v1, " icon: <"

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7f
    move-result-object v1

    #@80
    iget v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconWidth:I

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@85
    move-result-object v1

    #@86
    const-string/jumbo v2, "x"

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    move-result-object v1

    #@8d
    .line 98
    iget v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconHeight:I

    #@8f
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@92
    move-result-object v1

    #@93
    .line 98
    const-string/jumbo v2, " "

    #@96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@99
    move-result-object v1

    #@9a
    .line 99
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconType:Ljava/lang/String;

    #@9c
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9f
    move-result-object v1

    #@a0
    .line 99
    const-string/jumbo v2, " "

    #@a3
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a6
    move-result-object v1

    #@a7
    .line 100
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconFileName:Ljava/lang/String;

    #@a9
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ac
    move-result-object v1

    #@ad
    .line 100
    const-string/jumbo v2, ">"

    #@b0
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b3
    .line 102
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuNai:Ljava/lang/String;

    #@b5
    if-eqz v1, :cond_3

    #@b7
    .line 103
    const-string/jumbo v1, " osuNai: "

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bd
    move-result-object v1

    #@be
    const-string/jumbo v2, "<"

    #@c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    move-result-object v1

    #@c5
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuNai:Ljava/lang/String;

    #@c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ca
    move-result-object v1

    #@cb
    const-string/jumbo v2, ">"

    #@ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d1
    .line 104
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuService:Ljava/lang/String;

    #@d3
    if-eqz v1, :cond_4

    #@d5
    .line 105
    const-string/jumbo v1, " osuService: "

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@db
    move-result-object v1

    #@dc
    const-string/jumbo v2, "<"

    #@df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e2
    move-result-object v1

    #@e3
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuService:Ljava/lang/String;

    #@e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e8
    move-result-object v1

    #@e9
    const-string/jumbo v2, ">"

    #@ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ef
    .line 106
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f2
    move-result-object v1

    #@f3
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->ssid:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 117
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->friendlyName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 118
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->serverUri:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 119
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuMethod:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 120
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconWidth:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 121
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconHeight:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 122
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconType:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 123
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconFileName:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 124
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuNai:Ljava/lang/String;

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    .line 125
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuService:Ljava/lang/String;

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 115
    return-void
.end method
