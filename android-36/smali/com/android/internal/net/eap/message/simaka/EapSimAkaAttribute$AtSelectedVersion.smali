.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtSelectedVersion"
.end annotation


# static fields
.field private static final blacklist LENGTH:I = 0x4

.field public static final blacklist SUPPORTED_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist selectedVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 312
    const-class v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "selectedVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 331
    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 332
    iput p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;->selectedVersion:I

    .line 333
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "selectedVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 321
    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 322
    iput p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;->selectedVersion:I

    .line 324
    if-ne p1, v1, :cond_b

    .line 327
    return-void

    .line 325
    :cond_b
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSelectedVersion()Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;
    .registers 4

    .line 348
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;-><init>(II)V
    :try_end_7
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 349
    :catch_8
    move-exception v0

    .line 351
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;->TAG:Ljava/lang/String;

    const-string v3, "Error thrown while creating AtSelectedVersion with correct length"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Impossible exception encountered"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 338
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;->selectedVersion:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 339
    return-void
.end method
