.class public Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "IPAddressTypeAvailabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;,
        Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    }
.end annotation


# instance fields
.field private final mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

.field private final mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 24
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x1

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 25
    new-instance v1, Ljava/net/ProtocolException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Bad IP Address Type Availability length: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 26
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v3

    #@1c
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@2b
    move-result v0

    #@2c
    .line 29
    .local v0, "ipField":I
    invoke-static {}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;->values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@2f
    move-result-object v1

    #@30
    and-int/lit8 v2, v0, 0x3

    #@32
    aget-object v1, v1, v2

    #@34
    iput-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@36
    .line 31
    shr-int/lit8 v1, v0, 0x2

    #@38
    and-int/lit8 v0, v1, 0x3f

    #@3a
    .line 32
    invoke-static {}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@3d
    move-result-object v1

    #@3e
    array-length v1, v1

    #@3f
    if-gt v0, v1, :cond_1

    #@41
    .line 33
    invoke-static {}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->values()[Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@44
    move-result-object v1

    #@45
    aget-object v1, v1, v0

    #@47
    .line 32
    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@49
    .line 21
    return-void

    #@4a
    .line 34
    :cond_1
    sget-object v1, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;->Unknown:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@4c
    goto :goto_0
.end method


# virtual methods
.method public getV4Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@2
    return-object v0
.end method

.method public getV6Availability()Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "IPAddressTypeAvailability{mV4Availability="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 48
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV4Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv4Availability;

    #@e
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 49
    const-string/jumbo v1, ", mV6Availability="

    #@15
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 49
    iget-object v1, p0, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;->mV6Availability:Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement$IPv6Availability;

    #@1b
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 50
    const/16 v1, 0x7d

    #@21
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
