.class public Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interworking"
.end annotation


# instance fields
.field public ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public hessid:J

.field public internet:Z

.field public venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 161
    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@6
    .line 162
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    #@9
    .line 163
    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@b
    .line 164
    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@d
    .line 165
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    #@11
    .line 160
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 11
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/16 v10, 0x9

    #@2
    const/4 v9, 0x7

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 168
    iget v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@7
    const/16 v8, 0x6b

    #@9
    if-eq v7, v8, :cond_0

    #@b
    .line 169
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "Element id is not INTERWORKING, : "

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    iget v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v5

    #@27
    .line 171
    :cond_0
    iget-object v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@29
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@2c
    move-result-object v7

    #@2d
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2f
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@32
    move-result-object v1

    #@33
    .line 172
    .local v1, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@36
    move-result v7

    #@37
    and-int/lit16 v0, v7, 0xff

    #@39
    .line 173
    .local v0, "anOptions":I
    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@3c
    move-result-object v7

    #@3d
    and-int/lit8 v8, v0, 0xf

    #@3f
    aget-object v7, v7, v8

    #@41
    iput-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@43
    .line 174
    and-int/lit8 v7, v0, 0x10

    #@45
    if-eqz v7, :cond_1

    #@47
    move v5, v6

    #@48
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    #@4a
    .line 176
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@4c
    array-length v5, v5

    #@4d
    const/4 v7, 0x3

    #@4e
    if-eq v5, v7, :cond_2

    #@50
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@52
    array-length v5, v5

    #@53
    if-ne v5, v10, :cond_6

    #@55
    .line 178
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@58
    move-result-object v3

    #@59
    .line 179
    .local v3, "vinfo":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    #@5c
    move-result v5

    #@5d
    add-int/lit8 v5, v5, 0x2

    #@5f
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@62
    .line 180
    new-instance v4, Lcom/android/server/wifi/anqp/VenueNameElement;

    #@64
    .line 181
    sget-object v5, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@66
    .line 180
    invoke-direct {v4, v5, v3}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@69
    .line 182
    .local v4, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    invoke-virtual {v4}, Lcom/android/server/wifi/anqp/VenueNameElement;->getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@6c
    move-result-object v5

    #@6d
    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@6f
    .line 183
    invoke-virtual {v4}, Lcom/android/server/wifi/anqp/VenueNameElement;->getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@72
    move-result-object v5

    #@73
    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    .line 191
    .end local v3    # "vinfo":Ljava/nio/ByteBuffer;
    .end local v4    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_3
    :goto_0
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@77
    array-length v5, v5

    #@78
    if-eq v5, v9, :cond_4

    #@7a
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@7c
    array-length v5, v5

    #@7d
    if-ne v5, v10, :cond_5

    #@7f
    .line 192
    :cond_4
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@81
    const/4 v6, 0x6

    #@82
    invoke-static {v1, v5, v6}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@85
    move-result-wide v6

    #@86
    iput-wide v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    #@88
    .line 167
    :cond_5
    return-void

    #@89
    .line 187
    :cond_6
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@8b
    array-length v5, v5

    #@8c
    if-eq v5, v6, :cond_3

    #@8e
    iget-object v5, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@90
    array-length v5, v5

    #@91
    if-eq v5, v9, :cond_3

    #@93
    .line 188
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@95
    new-instance v6, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v7, "Bad Interworking element length: "

    #@9d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    .line 189
    iget-object v7, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@a3
    array-length v7, v7

    #@a4
    .line 188
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v6

    #@ac
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@af
    throw v5

    #@b0
    .line 184
    :catch_0
    move-exception v2

    #@b1
    .local v2, "pe":Ljava/net/ProtocolException;
    goto :goto_0
.end method
