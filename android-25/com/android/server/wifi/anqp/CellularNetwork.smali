.class public Lcom/android/server/wifi/anqp/CellularNetwork;
.super Ljava/lang/Object;
.source "CellularNetwork.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PLMNListType:I


# instance fields
.field private final mMccMnc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "plmnCount"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    #@9
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    iput-object v5, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    #@e
    .line 19
    :goto_0
    if-lez p1, :cond_2

    #@10
    .line 20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@13
    move-result v5

    #@14
    if-ge v5, v11, :cond_0

    #@16
    .line 21
    new-instance v5, Ljava/net/ProtocolException;

    #@18
    const-string/jumbo v6, "Truncated PLMN info"

    #@1b
    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v5

    #@1f
    .line 23
    :cond_0
    new-array v4, v11, [B

    #@21
    .line 24
    .local v4, "plmn":[B
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@24
    .line 26
    aget-byte v5, v4, v8

    #@26
    shl-int/lit8 v5, v5, 0x8

    #@28
    and-int/lit16 v5, v5, 0xf00

    #@2a
    .line 27
    aget-byte v6, v4, v8

    #@2c
    and-int/lit16 v6, v6, 0xf0

    #@2e
    .line 26
    or-int/2addr v5, v6

    #@2f
    .line 28
    aget-byte v6, v4, v9

    #@31
    and-int/lit8 v6, v6, 0xf

    #@33
    .line 26
    or-int v0, v5, v6

    #@35
    .line 30
    .local v0, "mcc":I
    aget-byte v5, v4, v10

    #@37
    shl-int/lit8 v5, v5, 0x4

    #@39
    and-int/lit16 v5, v5, 0xf0

    #@3b
    .line 31
    aget-byte v6, v4, v10

    #@3d
    shr-int/lit8 v6, v6, 0x4

    #@3f
    and-int/lit8 v6, v6, 0xf

    #@41
    .line 30
    or-int v2, v5, v6

    #@43
    .line 33
    .local v2, "mnc":I
    aget-byte v5, v4, v9

    #@45
    shr-int/lit8 v5, v5, 0x4

    #@47
    and-int/lit8 v3, v5, 0xf

    #@49
    .line 34
    .local v3, "n2":I
    const/16 v5, 0xf

    #@4b
    if-eq v3, v5, :cond_1

    #@4d
    .line 35
    const-string/jumbo v5, "%03x%03x"

    #@50
    new-array v6, v10, [Ljava/lang/Object;

    #@52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v7

    #@56
    aput-object v7, v6, v8

    #@58
    shl-int/lit8 v7, v2, 0x4

    #@5a
    or-int/2addr v7, v3

    #@5b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v7

    #@5f
    aput-object v7, v6, v9

    #@61
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    .line 38
    .local v1, "mccMnc":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    #@67
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    .line 39
    add-int/lit8 p1, p1, -0x1

    #@6c
    goto :goto_0

    #@6d
    .line 36
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "%03x%02x"

    #@70
    new-array v6, v10, [Ljava/lang/Object;

    #@72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v7

    #@76
    aput-object v7, v6, v8

    #@78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v7

    #@7c
    aput-object v7, v6, v9

    #@7e
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    .restart local v1    # "mccMnc":Ljava/lang/String;
    goto :goto_1

    #@83
    .line 16
    .end local v0    # "mcc":I
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "mnc":I
    .end local v3    # "n2":I
    .end local v4    # "plmn":[B
    :cond_2
    return-void
.end method

.method public static buildCellularNetwork(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/CellularNetwork;
    .locals 4
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@3
    move-result v3

    #@4
    and-int/lit16 v0, v3, 0xff

    #@6
    .line 46
    .local v0, "iei":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@9
    move-result v3

    #@a
    and-int/lit8 v2, v3, 0x7f

    #@c
    .line 48
    .local v2, "plmnLen":I
    if-eqz v0, :cond_0

    #@e
    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@11
    move-result v3

    #@12
    add-int/2addr v3, v2

    #@13
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@16
    .line 50
    const/4 v3, 0x0

    #@17
    return-object v3

    #@18
    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@1b
    move-result v3

    #@1c
    and-int/lit16 v1, v3, 0xff

    #@1e
    .line 54
    .local v1, "plmnCount":I
    new-instance v3, Lcom/android/server/wifi/anqp/CellularNetwork;

    #@20
    invoke-direct {v3, v1, p0}, Lcom/android/server/wifi/anqp/CellularNetwork;-><init>(ILjava/nio/ByteBuffer;)V

    #@23
    return-object v3
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "PLMN:"

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 65
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "mccMnc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 66
    .local v0, "mccMnc":Ljava/lang/String;
    const/16 v3, 0x20

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    goto :goto_0

    #@24
    .line 68
    .end local v0    # "mccMnc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    return-object v3
.end method
