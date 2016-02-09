.class public Lcom/android/server/wifi/anqp/VenueNameElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "VenueNameElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;,
        Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    }
.end annotation


# static fields
.field private static final PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

.field private static final sGroupBases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 20
    new-instance v4, Ljava/util/EnumMap;

    #@3
    const-class v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@5
    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@8
    .line 19
    sput-object v4, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    #@a
    .line 171
    const/16 v4, 0xc

    #@c
    new-array v4, v4, [Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@e
    .line 172
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@10
    aput-object v5, v4, v3

    #@12
    .line 173
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedAssembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@14
    const/4 v6, 0x1

    #@15
    aput-object v5, v4, v6

    #@17
    .line 174
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedBusiness:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@19
    const/4 v6, 0x2

    #@1a
    aput-object v5, v4, v6

    #@1c
    .line 175
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedEducational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@1e
    const/4 v6, 0x3

    #@1f
    aput-object v5, v4, v6

    #@21
    .line 176
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedFactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@23
    const/4 v6, 0x4

    #@24
    aput-object v5, v4, v6

    #@26
    .line 177
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedInstitutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@28
    const/4 v6, 0x5

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 178
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedMercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2d
    const/4 v6, 0x6

    #@2e
    aput-object v5, v4, v6

    #@30
    .line 179
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedResidential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@32
    const/4 v6, 0x7

    #@33
    aput-object v5, v4, v6

    #@35
    .line 180
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedStorage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@37
    const/16 v6, 0x8

    #@39
    aput-object v5, v4, v6

    #@3b
    .line 181
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedUtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@3d
    const/16 v6, 0x9

    #@3f
    aput-object v5, v4, v6

    #@41
    .line 182
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedVehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@43
    const/16 v6, 0xa

    #@45
    aput-object v5, v4, v6

    #@47
    .line 183
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedOutdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@49
    const/16 v6, 0xb

    #@4b
    aput-object v5, v4, v6

    #@4d
    .line 170
    sput-object v4, Lcom/android/server/wifi/anqp/VenueNameElement;->PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@4f
    .line 187
    const/4 v0, 0x0

    #@50
    .line 188
    .local v0, "index":I
    sget-object v4, Lcom/android/server/wifi/anqp/VenueNameElement;->PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@52
    array-length v5, v4

    #@53
    move v1, v0

    #@54
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v3, v5, :cond_0

    #@56
    aget-object v2, v4, v3

    #@58
    .line 189
    .local v2, "venue":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    sget-object v6, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    #@5a
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@5d
    move-result-object v7

    #@5e
    add-int/lit8 v0, v1, 0x1

    #@60
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-object v7, v7, v1

    #@62
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    #@65
    move-result v8

    #@66
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v8

    #@6a
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    .line 188
    add-int/lit8 v3, v3, 0x1

    #@6f
    move v1, v0

    #@70
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@71
    .line 14
    .end local v2    # "venue":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    :cond_0
    return-void
.end method

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
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 26
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x2

    #@8
    if-ge v2, v3, :cond_0

    #@a
    .line 27
    new-instance v2, Ljava/net/ProtocolException;

    #@c
    const-string/jumbo v3, "Runt Venue Name"

    #@f
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 29
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@16
    move-result v2

    #@17
    and-int/lit16 v0, v2, 0xff

    #@19
    .line 30
    .local v0, "group":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@1c
    move-result v2

    #@1d
    and-int/lit16 v1, v2, 0xff

    #@1f
    .line 32
    .local v1, "type":I
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@22
    move-result-object v2

    #@23
    array-length v2, v2

    #@24
    if-lt v0, v2, :cond_1

    #@26
    .line 33
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@28
    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2a
    .line 34
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2c
    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2e
    .line 45
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    #@30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    #@35
    .line 46
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 47
    iget-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    #@3d
    new-instance v3, Lcom/android/server/wifi/anqp/I18Name;

    #@3f
    invoke-direct {v3, p2}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    #@42
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_1

    #@46
    .line 36
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@49
    move-result-object v2

    #@4a
    aget-object v2, v2, v0

    #@4c
    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@4e
    .line 37
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    #@50
    iget-object v3, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@52
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Ljava/lang/Integer;

    #@58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v2

    #@5c
    add-int/2addr v1, v2

    #@5d
    .line 38
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@60
    move-result-object v2

    #@61
    array-length v2, v2

    #@62
    if-lt v1, v2, :cond_2

    #@64
    .line 39
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@66
    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@68
    goto :goto_0

    #@69
    .line 41
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@6c
    move-result-object v2

    #@6d
    aget-object v2, v2, v1

    #@6f
    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@71
    goto :goto_0

    #@72
    .line 23
    :cond_3
    return-void
.end method


# virtual methods
.method public getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2
    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VenueName{m_group="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 66
    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@e
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 67
    const-string/jumbo v1, ", m_type="

    #@15
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 67
    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@1b
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 68
    const-string/jumbo v1, ", m_names="

    #@22
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 68
    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    #@28
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 69
    const/16 v1, 0x7d

    #@2e
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
