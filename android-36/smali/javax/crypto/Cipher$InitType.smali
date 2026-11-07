.class final enum Ljavax/crypto/Cipher$InitType;
.super Ljava/lang/Enum;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/crypto/Cipher$InitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljavax/crypto/Cipher$InitType;

.field public static final enum greylist-max-o ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

.field public static final enum greylist-max-o ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

.field public static final enum greylist-max-o KEY:Ljavax/crypto/Cipher$InitType;


# direct methods
.method private static synthetic blacklist $values()[Ljavax/crypto/Cipher$InitType;
    .registers 3

    .line 2761
    sget-object v0, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    sget-object v2, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    filled-new-array {v0, v1, v2}, [Ljavax/crypto/Cipher$InitType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2762
    new-instance v0, Ljavax/crypto/Cipher$InitType;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    new-instance v0, Ljavax/crypto/Cipher$InitType;

    const-string v1, "ALGORITHM_PARAMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    new-instance v0, Ljavax/crypto/Cipher$InitType;

    const-string v1, "ALGORITHM_PARAM_SPEC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    .line 2761
    invoke-static {}, Ljavax/crypto/Cipher$InitType;->$values()[Ljavax/crypto/Cipher$InitType;

    move-result-object v0

    sput-object v0, Ljavax/crypto/Cipher$InitType;->$VALUES:[Ljavax/crypto/Cipher$InitType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2761
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljavax/crypto/Cipher$InitType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2761
    const-class v0, Ljavax/crypto/Cipher$InitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher$InitType;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljavax/crypto/Cipher$InitType;
    .registers 1

    .line 2761
    sget-object v0, Ljavax/crypto/Cipher$InitType;->$VALUES:[Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v0}, [Ljavax/crypto/Cipher$InitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/crypto/Cipher$InitType;

    return-object v0
.end method
