.class public Landroid/net/wifi/WifiConnectionStatistics;
.super Ljava/lang/Object;
.source "WifiConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConnectionStatistics$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiConnnectionStatistics"


# instance fields
.field public num24GhzConnected:I

.field public num5GhzConnected:I

.field public numAutoJoinAttempt:I

.field public numAutoRoamAttempt:I

.field public numWifiManagerJoinAttempt:I

.field public untrustedNetworkHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiNetworkConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/net/wifi/WifiConnectionStatistics$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiConnectionStatistics$1;-><init>()V

    #@5
    .line 132
    sput-object v0, Landroid/net/wifi/WifiConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@a
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConnectionStatistics;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiConnectionStatistics;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@a
    .line 102
    if-eqz p1, :cond_0

    #@c
    .line 103
    iget-object v0, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@e
    iget-object v1, p1, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@13
    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public incrementOrAddUntrusted(Ljava/lang/String;II)V
    .locals 2
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "connection"    # I
    .param p3, "usage"    # I

    #@0
    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 66
    return-void

    #@7
    .line 67
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_3

    #@f
    .line 68
    iget-object v1, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    #@17
    .line 69
    .local v0, "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    if-eqz v0, :cond_1

    #@19
    .line 70
    iget v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@1b
    add-int/2addr v1, p2

    #@1c
    iput v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@1e
    .line 71
    iget v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@20
    add-int/2addr v1, p3

    #@21
    iput v1, v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@23
    .line 76
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    #@25
    .line 77
    iget-object v1, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@27
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 63
    :cond_2
    return-void

    #@2b
    .line 74
    .end local v0    # "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    :cond_3
    new-instance v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    #@2d
    invoke-direct {v0, p2, p3}, Landroid/net/wifi/WifiNetworkConnectionStatistics;-><init>(II)V

    #@30
    .restart local v0    # "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 84
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Connected on: 2.4Ghz="

    #@8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 85
    const-string/jumbo v4, " 5Ghz="

    #@14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, "\n"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 86
    const-string/jumbo v4, " join="

    #@27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 87
    const-string/jumbo v4, "\\"

    #@33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, "\n"

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 88
    const-string/jumbo v4, " roam="

    #@46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    iget v5, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, "\n"

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 90
    iget-object v4, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@58
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5b
    move-result-object v4

    #@5c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5f
    move-result-object v1

    #@60
    .local v1, "Key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v4

    #@64
    if-eqz v4, :cond_1

    #@66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Ljava/lang/String;

    #@6c
    .line 91
    .local v0, "Key":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@6e
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v3

    #@72
    check-cast v3, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    #@74
    .line 92
    .local v3, "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    if-eqz v3, :cond_0

    #@76
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    const-string/jumbo v5, " "

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v3}, Landroid/net/wifi/WifiNetworkConnectionStatistics;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    const-string/jumbo v5, "\n"

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    goto :goto_0

    #@90
    .line 96
    .end local v0    # "Key":Ljava/lang/String;
    .end local v3    # "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 115
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    #@2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 116
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    #@7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 117
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    #@c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 118
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    #@11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 119
    iget v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    #@16
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 121
    iget-object v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 122
    iget-object v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@24
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "Key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_0

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Ljava/lang/String;

    #@38
    .line 123
    .local v0, "Key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    #@3a
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    #@40
    .line 124
    .local v2, "num":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@43
    .line 125
    iget v3, v2, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@45
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 126
    iget v3, v2, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@4a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    goto :goto_0

    #@4e
    .line 114
    .end local v0    # "Key":Ljava/lang/String;
    .end local v2    # "num":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    :cond_0
    return-void
.end method
