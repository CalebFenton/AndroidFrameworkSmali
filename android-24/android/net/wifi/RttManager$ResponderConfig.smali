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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ResponderConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public frequency:I

.field public macAddress:Ljava/lang/String;

.field public preamble:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1074
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig$1;-><init>()V

    #@5
    .line 1073
    sput-object v0, Landroid/net/wifi/RttManager$ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1007
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1013
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    #@8
    .line 1007
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1059
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1048
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "macAddress = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 1049
    const-string/jumbo v2, " frequency = "

    #@15
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 1049
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    #@1b
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1050
    const-string/jumbo v2, " centerFreq0 = "

    #@22
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1050
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    #@28
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 1051
    const-string/jumbo v2, " centerFreq1 = "

    #@2f
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 1051
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    #@35
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 1052
    const-string/jumbo v2, " channelWidth = "

    #@3c
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 1052
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    #@42
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1053
    const-string/jumbo v2, " preamble = "

    #@49
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 1053
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    #@4f
    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    .line 1054
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1064
    iget-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 1065
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1066
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1067
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1068
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 1069
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1063
    return-void
.end method
