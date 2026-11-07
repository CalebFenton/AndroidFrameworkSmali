.class public Landroid/telephony/data/Qos$QosBandwidth;
.super Ljava/lang/Object;
.source "Qos.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/Qos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosBandwidth"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/Qos$QosBandwidth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist guaranteedBitrateKbps:I

.field blacklist maxBitrateKbps:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth$1;

    invoke-direct {v0}, Landroid/telephony/data/Qos$QosBandwidth$1;-><init>()V

    sput-object v0, Landroid/telephony/data/Qos$QosBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "maxBitrateKbps"    # I
    .param p2, "guaranteedBitrateKbps"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    .line 71
    iput p2, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    .line 72
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/Qos-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 107
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    instance-of v2, p1, Landroid/telephony/data/Qos$QosBandwidth;

    if-nez v2, :cond_c

    goto :goto_1e

    .line 111
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/Qos$QosBandwidth;

    .line 112
    .local v2, "other":Landroid/telephony/data/Qos$QosBandwidth;
    iget v3, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    iget v4, v2, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    iget v4, v2, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 108
    .end local v2    # "other":Landroid/telephony/data/Qos$QosBandwidth;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public blacklist getGuaranteedBitrateKbps()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    return v0
.end method

.method public blacklist getMaxBitrateKbps()I
    .registers 2

    .line 80
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 100
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bandwidth { maxBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " guaranteedBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
