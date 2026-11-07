.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtNextReauthId"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist reauthId:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1329
    const-class v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1335
    const/16 v0, 0x85

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1336
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 1337
    .local v0, "identityLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    .line 1339
    iget-object v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1341
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_37

    aget-byte v5, v2, v4

    .line 1342
    .local v5, "data":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02X "

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .end local v5    # "data":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1344
    :cond_37
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next re-authId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    add-int/lit8 v2, v0, 0x4

    .line 1347
    .local v2, "bytesUsed":I
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->consumePadding(ILjava/nio/ByteBuffer;)V

    .line 1348
    return-void
.end method

.method private constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "lengthInBytes"    # I
    .param p2, "identity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1352
    const/16 v0, 0x85

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 1353
    iput-object p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    .line 1354
    return-void
.end method

.method public static blacklist getAtNextReauthId([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;
    .registers 3
    .param p0, "identity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 1375
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    .line 1376
    .local v0, "lengthInBytes":I
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_c

    .line 1377
    rem-int/lit8 v1, v0, 0x4

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 1380
    :cond_c
    new-instance v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;-><init>(I[B)V

    return-object v1
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 1359
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1360
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1362
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 1363
    .local v0, "bytesUsed":I
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->addPadding(ILjava/nio/ByteBuffer;)V

    .line 1364
    return-void
.end method
