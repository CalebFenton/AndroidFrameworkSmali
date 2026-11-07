.class public Lcom/android/internal/net/eap/message/EapData;
.super Ljava/lang/Object;
.source "EapData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/EapData$EapType;
    }
.end annotation


# static fields
.field public static final blacklist EAP_IDENTITY:I = 0x1

.field public static final blacklist EAP_NAK:I = 0x3

.field public static final blacklist EAP_NOTIFICATION:I = 0x2

.field public static final blacklist EAP_TYPE_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_DATA:Lcom/android/internal/net/eap/message/EapData;

.field private static final blacklist SUPPORTED_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist eapType:I

.field public final blacklist eapTypeData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    .line 78
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Identity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Notification"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Nak"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "EAP-SIM"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/16 v6, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "EAP-AKA"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/16 v7, 0x1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EAP-MSCHAP-V2"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "EAP-AKA-PRIME"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    const/16 v9, 0x15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "EAP-TTLS"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    .line 90
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcom/android/internal/net/eap/message/EapData;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    sput-object v0, Lcom/android/internal/net/eap/message/EapData;->NOTIFICATION_DATA:Lcom/android/internal/net/eap/message/EapData;

    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 3
    .param p1, "eapType"    # I
    .param p2, "eapTypeData"    # [B

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    .line 117
    iput-object p2, p0, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 119
    invoke-direct {p0}, Lcom/android/internal/net/eap/message/EapData;->validate()V

    .line 120
    return-void
.end method

.method public static blacklist isSupportedEapType(I)Z
    .registers 3
    .param p0, "eapType"    # I

    .line 178
    sget-object v0, Lcom/android/internal/net/eap/message/EapData;->SUPPORTED_TYPES:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist validate()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    if-eqz v0, :cond_15

    .line 185
    iget v0, p0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    invoke-static {v0}, Lcom/android/internal/net/eap/message/EapData;->isSupportedEapType(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 188
    return-void

    .line 186
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eapType must be be a valid @EapType value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EapTypeData byte[] must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encodeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .line 167
    iget v0, p0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 168
    iget-object v0, p0, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 169
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 141
    return v0

    .line 143
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_22

    instance-of v2, p1, Lcom/android/internal/net/eap/message/EapData;

    if-nez v2, :cond_c

    goto :goto_22

    .line 146
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/android/internal/net/eap/message/EapData;

    .line 147
    .local v2, "eapData":Lcom/android/internal/net/eap/message/EapData;
    iget v3, p0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    iget v4, v2, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    if-ne v3, v4, :cond_20

    iget-object v3, p0, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    iget-object v4, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 148
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    .line 147
    :goto_21
    return v0

    .line 144
    .end local v2    # "eapData":Lcom/android/internal/net/eap/message/EapData;
    :cond_22
    :goto_22
    return v1
.end method

.method public blacklist getLength()I
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 158
    iget v0, p0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
