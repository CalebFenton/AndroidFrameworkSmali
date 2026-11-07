.class public abstract Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;
.super Ljava/lang/Object;
.source "EapSimAkaTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EapSimAkaTypeDataDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributeFactory:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;

.field private final blacklist mEapMethod:Ljava/lang/String;

.field private final blacklist mEapSubtypeStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedSubtypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTAG:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;Ljava/util/Map;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapMethod"    # Ljava/lang/String;
    .param p4, "eapSimAkaAttributeFactory"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder<TT;>;"
    .local p3, "supportedSubtypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p5, "eapSubtypeStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mEapMethod:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mSupportedSubtypes:Ljava/util/Set;

    .line 113
    iput-object p4, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mAttributeFactory:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;

    .line 114
    iput-object p5, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mEapSubtypeStrings:Ljava/util/Map;

    .line 115
    return-void
.end method

.method private blacklist logDecodedEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)V
    .registers 9
    .param p1, "eapSimAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    .line 176
    .local p0, "this":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "Decoded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mEapMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, " type data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mEapSubtypeStrings:Ljava/util/Map;

    iget v2, p1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->eapSubtype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Unknown"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, " attributes=[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    .local v2, "attributeType":I
    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .end local v2    # "attributeType":I
    goto :goto_36

    .line 189
    :cond_74
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected blacklist decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;
    .registers 11
    .param p1, "typeData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder<TT;>;"
    const-string v0, "Invalid EAP Type-Data"

    if-nez p1, :cond_13

    .line 119
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    sget-object v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)V

    return-object v0

    .line 123
    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 125
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_17
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 126
    .local v2, "eapSubType":I
    iget-object v3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mSupportedSubtypes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 127
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-direct {v0, v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)V

    return-object v0

    .line 132
    :cond_3a
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 133
    .local v0, "reservedBytes":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 136
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 137
    .local v3, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    :goto_45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 138
    iget-object v4, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mAttributeFactory:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;

    invoke-virtual {v4, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;->getAttribute(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    move-result-object v4

    .line 140
    .local v4, "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    iget v5, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 142
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    const-string v7, "Duplicate attribute in parsed EAP-Message"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    sget-object v6, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-direct {v5, v6}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)V

    return-object v5

    .line 146
    :cond_6e
    instance-of v5, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;

    if-eqz v5, :cond_8e

    .line 147
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported EAP attribute during decoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_8e
    iget v5, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    nop

    .end local v4    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    goto :goto_45

    .line 153
    :cond_99
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->getInstance(ILjava/util/LinkedHashMap;[B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-result-object v4

    .line 155
    .local v4, "eapSimAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;, "TT;"
    invoke-direct {p0, v4}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->logDecodedEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)V

    .line 157
    new-instance v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    invoke-direct {v5, v4}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)V
    :try_end_a5
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimInvalidAtRandException; {:try_start_17 .. :try_end_a5} :catch_ca
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_17 .. :try_end_a5} :catch_b8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_17 .. :try_end_a5} :catch_b8
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException; {:try_start_17 .. :try_end_a5} :catch_a6

    return-object v5

    .line 164
    .end local v0    # "reservedBytes":[B
    .end local v2    # "eapSubType":I
    .end local v3    # "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    .end local v4    # "eapSimAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;, "TT;"
    :catch_a6
    move-exception v0

    .line 165
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    const-string v4, "Unrecognized, non-skippable attribute encountered"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)V

    return-object v2

    .line 161
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
    :catch_b8
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    const-string v4, "Incorrectly formatted attribute"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)V

    return-object v2

    .line 158
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_ca
    move-exception v0

    .line 159
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimInvalidAtRandException;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->mTAG:Ljava/lang/String;

    const-string v4, "Invalid AtRand attribute"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->INSUFFICIENT_CHALLENGES:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)V

    return-object v2
.end method

.method protected abstract blacklist getInstance(ILjava/util/LinkedHashMap;[B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;[B)TT;"
        }
    .end annotation
.end method
