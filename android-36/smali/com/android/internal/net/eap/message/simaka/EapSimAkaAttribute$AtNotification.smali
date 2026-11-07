.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtNotification"
.end annotation


# static fields
.field private static final blacklist ATTR_LENGTH:I = 0x4

.field private static final blacklist CODE_DEFS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DENIED_ACCESS_POST_CHALLENGE:I = 0x402

.field public static final blacklist GENERAL_FAILURE_POST_CHALLENGE:I = 0x0

.field public static final blacklist GENERAL_FAILURE_PRE_CHALLENGE:I = 0x4000

.field private static final blacklist PRE_SUCCESSFUL_CHALLENGE_MASK:I = 0x4000

.field public static final blacklist SUCCESS:I = 0x8000

.field private static final blacklist SUCCESS_MASK:I = 0x8000

.field public static final blacklist USER_NOT_SUBSCRIBED_POST_CHALLENGE:I = 0x407


# instance fields
.field public final blacklist isPreSuccessfulChallenge:Z

.field public final blacklist isSuccessCode:Z

.field public final blacklist notificationCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 827
    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->loadCodeDefs()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->CODE_DEFS:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "notificationCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 856
    const/16 v0, 0xc

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 857
    iput p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    .line 860
    const v0, 0x8000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iput-boolean v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isSuccessCode:Z

    .line 863
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    iput-boolean v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isPreSuccessfulChallenge:Z

    .line 865
    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isSuccessCode:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isPreSuccessfulChallenge:Z

    if-nez v0, :cond_26

    goto :goto_2e

    .line 866
    :cond_26
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid state specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_2e
    :goto_2e
    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 835
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;-><init>(II)V

    .line 837
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3d

    .line 841
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    .line 844
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isSuccessCode:Z

    .line 847
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    iput-boolean v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isPreSuccessfulChallenge:Z

    .line 849
    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isSuccessCode:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isPreSuccessfulChallenge:Z

    if-nez v0, :cond_34

    goto :goto_3c

    .line 850
    :cond_34
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid state specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_3c
    :goto_3c
    return-void

    .line 838
    :cond_3d
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Invalid Length specified"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist loadCodeDefs()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 884
    .local v0, "defs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "General failure after authentication. (Implies failure, used after successful authentication.)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "General failure. (Implies failure, used before authentication.)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Success.  User has been successfully authenticated. (Does not imply failure, used after successful authentication)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const/16 v1, 0x402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "User has been temporarily denied access to the requested service. (Implies failure, used after successful authentication.)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const/16 v1, 0x407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "User has not subscribed to the requested service.  (Implies failure, used after successful authentication.)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    return-object v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 872
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->encodeAttributeHeader(Ljava/nio/ByteBuffer;)V

    .line 873
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 874
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 878
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->CODE_DEFS:Ljava/util/Map;

    iget v1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Code not recognized"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 879
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{Notification Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", descr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
