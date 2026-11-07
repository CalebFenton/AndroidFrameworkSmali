.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAnyIdReq;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdReq;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtAnyIdReq"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 441
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdReq;-><init>(I)V

    .line 442
    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 436
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdReq;-><init>(IILjava/nio/ByteBuffer;)V

    .line 437
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 433
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdReq;->encode(Ljava/nio/ByteBuffer;)V

    return-void
.end method
