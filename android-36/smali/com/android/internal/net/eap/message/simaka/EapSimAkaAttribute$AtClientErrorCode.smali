.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtClientErrorCode"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x4

.field public static final blacklist INSUFFICIENT_CHALLENGES:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

.field public static final blacklist STALE_RANDS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

.field public static final blacklist UNSUPPORTED_VERSION:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;


# instance fields
.field public final blacklist errorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 907
    const-class v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->TAG:Ljava/lang/String;

    .line 911
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->getClientErrorCode(I)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 912
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->getClientErrorCode(I)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNSUPPORTED_VERSION:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 913
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->getClientErrorCode(I)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->INSUFFICIENT_CHALLENGES:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 914
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->getClientErrorCode(I)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->STALE_RANDS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "lengthInBytes"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 920
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 922
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 926
    iput p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->errorCode:I

    .line 927
    return-void

    .line 923
    :cond_b
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getClientErrorCode(I)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;
    .registers 5
    .param p0, "errorCode"    # I

    .line 937
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;-><init>(II)V
    :try_end_6
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 938
    :catch_7
    move-exception v0

    .line 939
    .local v0, "exception":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->TAG:Ljava/lang/String;

    const-string v3, "Exception thrown while making AtClientErrorCodeConstants"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 931
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 932
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->errorCode:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 933
    return-void
.end method
