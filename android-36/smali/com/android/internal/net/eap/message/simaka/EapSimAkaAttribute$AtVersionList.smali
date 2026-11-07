.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtVersionList"
.end annotation


# static fields
.field private static final blacklist BYTES_PER_VERSION:I = 0x2


# instance fields
.field public final blacklist versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 267
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    .line 270
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 271
    .local v0, "bytesInList":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3f

    .line 276
    div-int/lit8 v1, v0, 0x2

    .line 277
    .local v1, "numVersions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_31

    .line 278
    iget-object v3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 281
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    .line 282
    .local v2, "bytesUsed":I
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->consumePadding(ILjava/nio/ByteBuffer;)V

    .line 283
    return-void

    .line 272
    .end local v1    # "numVersions":I
    .end local v2    # "bytesUsed":I
    :cond_3f
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v2, "Actual Version List Length must be multiple of 2"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs constructor blacklist <init>(I[I)V
    .registers 8
    .param p1, "lengthInBytes"    # I
    .param p2, "versions"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 288
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    .line 289
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    aget v2, p2, v1

    .line 290
    .local v2, "version":I
    iget-object v3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v2    # "version":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 292
    :cond_1e
    return-void
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 299
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    .local v1, "i":I
    int-to-short v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 301
    .end local v1    # "i":I
    goto :goto_15

    .line 303
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    .line 304
    .local v0, "bytesUsed":I
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->addPadding(ILjava/nio/ByteBuffer;)V

    .line 305
    return-void
.end method
