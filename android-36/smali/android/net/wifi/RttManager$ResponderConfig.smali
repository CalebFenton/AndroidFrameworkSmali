.class public Landroid/net/wifi/RttManager$ResponderConfig;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponderConfig"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist centerFreq0:I

.field public whitelist centerFreq1:I

.field public whitelist channelWidth:I

.field public whitelist frequency:I

.field public whitelist macAddress:Ljava/lang/String;

.field public whitelist preamble:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1163
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1139
    const-string v2, " frequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1140
    const-string v2, " centerFreq0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1141
    const-string v2, " centerFreq1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1142
    const-string v2, " channelWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1143
    const-string v2, " preamble = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1154
    iget-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1155
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    return-void
.end method
