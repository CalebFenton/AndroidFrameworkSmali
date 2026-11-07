.class public abstract Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
.super Ljava/lang/Object;
.source "EapSimAkaTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;
    }
.end annotation


# static fields
.field private static final blacklist MIN_LEN_BYTES:I = 0x3

.field private static final blacklist RESERVED_BYTES_LEN:I = 0x2


# instance fields
.field public final blacklist attributeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist eapSubtype:I

.field final blacklist mReservedBytes:[B


# direct methods
.method protected constructor blacklist <init>(ILjava/util/LinkedHashMap;)V
    .registers 4
    .param p1, "eapSubType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;-><init>(ILjava/util/LinkedHashMap;[B)V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/LinkedHashMap;[B)V
    .registers 5
    .param p1, "eapSubType"    # I
    .param p3, "reservedBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;[B)V"
        }
    .end annotation

    .line 61
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->eapSubtype:I

    .line 63
    iput-object p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    .line 65
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->mReservedBytes:[B

    .line 66
    return-void
.end method


# virtual methods
.method public blacklist encode()[B
    .registers 5

    .line 74
    const/4 v0, 0x3

    .line 75
    .local v0, "lengthInBytes":I
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    .line 76
    .local v2, "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    iget v3, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    add-int/2addr v0, v3

    .line 77
    .end local v2    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    goto :goto_b

    .line 79
    :cond_1b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    .local v1, "output":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->eapSubtype:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->mReservedBytes:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    .line 86
    .local v3, "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    invoke-virtual {v3, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 87
    .end local v3    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    goto :goto_34

    .line 89
    :cond_44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
