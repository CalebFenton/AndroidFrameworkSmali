.class public Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;
.super Ljava/lang/Object;
.source "OMAConstants.java"


# static fields
.field public static final ATTR_URN:Ljava/lang/String; = "spp:moURN"

.field private static final INDENT:[B

.field public static final LOC_DEVDETAIL:Ljava/lang/String; = "urn:wfa:mo-ext:hotspot2dot0-devdetail-ext"

.field public static final LOC_DEVINFO:Ljava/lang/String; = "urn:oma:mo:oma-dm-devinfo:1.0 urn:oma:mo:oma-dm-devdetail"

.field public static final LOC_PPS:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription"

.field public static final RequiredSyncMLVersion:Ljava/lang/String; = "1.2"

.field public static final SyncMLVersionTag:Ljava/lang/String; = "VerDTD"

.field public static final TAG_MO_Add:Ljava/lang/String; = "spp:addMO"

.field public static final TAG_MO_Container:Ljava/lang/String; = "spp:moContainer"

.field public static final TAG_PostDevData:Ljava/lang/String; = "spp:sppPostDevData"

.field public static final TAG_SupportedMOs:Ljava/lang/String; = "spp:supportedMOList"

.field public static final TAG_SupportedVersions:Ljava/lang/String; = "spp:supportedSPPVersions"

.field private static final sMOContainers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    #@7
    .line 37
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "spp:addMO"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 38
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "spp:moContainer"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 45
    const/16 v0, 0x400

    #@19
    new-array v0, v0, [B

    #@1b
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->INDENT:[B

    #@1d
    .line 48
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->INDENT:[B

    #@1f
    const/16 v1, 0x20

    #@21
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    #@24
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static deserializeString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 65
    .local v5, "prefix":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@8
    move-result v6

    #@9
    int-to-byte v1, v6

    #@a
    .line 66
    .local v1, "b":B
    const/16 v6, 0x2e

    #@c
    if-ne v1, v6, :cond_1

    #@e
    .line 67
    const/4 v6, 0x0

    #@f
    return-object v6

    #@10
    .line 68
    :cond_1
    const/16 v6, 0x3a

    #@12
    if-ne v1, v6, :cond_2

    #@14
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    const/16 v7, 0x10

    #@1a
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1d
    move-result v2

    #@1e
    .line 74
    .local v2, "length":I
    new-array v3, v2, [B

    #@20
    .line 75
    .local v3, "octets":[B
    const/4 v4, 0x0

    #@21
    .line 76
    .local v4, "offset":I
    :goto_1
    array-length v6, v3

    #@22
    if-ge v4, v6, :cond_4

    #@24
    .line 77
    array-length v6, v3

    #@25
    sub-int/2addr v6, v4

    #@26
    invoke-virtual {p0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    #@29
    move-result v0

    #@2a
    .line 78
    .local v0, "amount":I
    if-gtz v0, :cond_3

    #@2c
    .line 79
    new-instance v6, Ljava/io/EOFException;

    #@2e
    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    #@31
    throw v6

    #@32
    .line 70
    .end local v0    # "amount":I
    .end local v2    # "length":I
    .end local v3    # "octets":[B
    .end local v4    # "offset":I
    :cond_2
    const/16 v6, 0x20

    #@34
    if-le v1, v6, :cond_0

    #@36
    .line 71
    int-to-char v6, v1

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_0

    #@3b
    .line 80
    .restart local v0    # "amount":I
    .restart local v2    # "length":I
    .restart local v3    # "octets":[B
    .restart local v4    # "offset":I
    :cond_3
    add-int/2addr v4, v0

    #@3c
    goto :goto_1

    #@3d
    .line 82
    .end local v0    # "amount":I
    :cond_4
    new-instance v6, Ljava/lang/String;

    #@3f
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@41
    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@44
    return-object v6
.end method

.method public static indent(ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->INDENT:[B

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    #@6
    .line 58
    return-void
.end method

.method public static isMOContainer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static readURN(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 89
    .local v1, "urn":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@8
    move-result v2

    #@9
    int-to-byte v0, v2

    #@a
    .line 90
    .local v0, "b":B
    const/16 v2, 0x29

    #@c
    if-ne v0, v2, :cond_0

    #@e
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 92
    :cond_0
    int-to-char v2, v0

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    goto :goto_0
.end method

.method public static serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@5
    move-result-object v0

    #@6
    .line 53
    .local v0, "octets":[B
    const-string/jumbo v2, "%x:"

    #@9
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Object;

    #@c
    array-length v4, v0

    #@d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v4

    #@11
    const/4 v5, 0x0

    #@12
    aput-object v4, v3, v5

    #@14
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1d
    move-result-object v1

    #@1e
    .line 54
    .local v1, "prefix":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@21
    .line 55
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@24
    .line 51
    return-void
.end method
