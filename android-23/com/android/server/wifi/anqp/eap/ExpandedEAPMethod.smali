.class public Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;
.super Ljava/lang/Object;
.source "ExpandedEAPMethod.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# instance fields
.field private final mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field private final mVendorID:I

.field private final mVendorType:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V
    .locals 1
    .param p1, "authInfoID"    # Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .param p2, "vendorID"    # I
    .param p3, "vendorType"    # J

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@5
    .line 40
    iput p2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    #@7
    .line 41
    iput-wide p3, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    #@9
    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "authInfoID"    # Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .param p2, "length"    # I
    .param p3, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    const/4 v2, 0x7

    #@4
    if-eq p2, v2, :cond_0

    #@6
    .line 23
    new-instance v2, Ljava/net/ProtocolException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Bad length: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    #@17
    move-result v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 26
    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@26
    .line 28
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@29
    move-result-object v2

    #@2a
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2c
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@2f
    move-result-object v1

    #@30
    .line 30
    .local v1, "vndBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    #@33
    move-result v2

    #@34
    const v3, 0xffff

    #@37
    and-int v0, v2, v3

    #@39
    .line 31
    .local v0, "id":I
    shl-int/lit8 v2, v0, 0x8

    #@3b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@3e
    move-result v3

    #@3f
    and-int/lit16 v3, v3, 0xff

    #@41
    or-int v0, v2, v3

    #@43
    .line 32
    iput v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    #@45
    .line 33
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    #@48
    move-result v2

    #@49
    int-to-long v2, v2

    #@4a
    const-wide v4, 0xffffffffL

    #@4f
    and-long/2addr v2, v4

    #@50
    iput-wide v2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    #@52
    .line 35
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    #@55
    move-result v2

    #@56
    add-int/lit8 v2, v2, 0x7

    #@58
    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@5b
    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 56
    if-ne p1, p0, :cond_0

    #@4
    .line 57
    return v1

    #@5
    .line 58
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    const-class v4, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@d
    if-eq v3, v4, :cond_2

    #@f
    .line 59
    :cond_1
    return v2

    #@10
    :cond_2
    move-object v0, p1

    #@11
    .line 61
    check-cast v0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@13
    .line 62
    .local v0, "that":Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorID()I

    #@16
    move-result v3

    #@17
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorID()I

    #@1a
    move-result v4

    #@1b
    if-ne v3, v4, :cond_3

    #@1d
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorType()J

    #@20
    move-result-wide v4

    #@21
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorType()J

    #@24
    move-result-wide v6

    #@25
    cmp-long v3, v4, v6

    #@27
    if-nez v3, :cond_3

    #@29
    :goto_0
    return v1

    #@2a
    :cond_3
    move v1, v2

    #@2b
    goto :goto_0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    return-object v0
.end method

.method public getVendorID()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    #@2
    return v0
.end method

.method public getVendorType()J
    .locals 2

    #@0
    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget v1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    #@a
    add-int/2addr v0, v1

    #@b
    mul-int/lit8 v0, v0, 0x1f

    #@d
    iget-wide v2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    #@f
    long-to-int v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Auth method "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", id "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", type "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-wide v2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    #@28
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "\n"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
