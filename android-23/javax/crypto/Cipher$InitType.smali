.class final enum Ljavax/crypto/Cipher$InitType;
.super Ljava/lang/Enum;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/crypto/Cipher$InitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/crypto/Cipher$InitType;

.field public static final enum ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

.field public static final enum ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

.field public static final enum KEY:Ljavax/crypto/Cipher$InitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 115
    new-instance v0, Ljavax/crypto/Cipher$InitType;

    #@5
    const-string/jumbo v1, "KEY"

    #@8
    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    #@d
    new-instance v0, Ljavax/crypto/Cipher$InitType;

    #@f
    const-string/jumbo v1, "ALGORITHM_PARAMS"

    #@12
    invoke-direct {v0, v1, v3}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    #@17
    new-instance v0, Ljavax/crypto/Cipher$InitType;

    #@19
    const-string/jumbo v1, "ALGORITHM_PARAM_SPEC"

    #@1c
    invoke-direct {v0, v1, v4}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    #@21
    .line 114
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljavax/crypto/Cipher$InitType;

    #@24
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljavax/crypto/Cipher$InitType;->$VALUES:[Ljavax/crypto/Cipher$InitType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/crypto/Cipher$InitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    const-class v0, Ljavax/crypto/Cipher$InitType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/crypto/Cipher$InitType;

    #@8
    return-object v0
.end method

.method public static values()[Ljavax/crypto/Cipher$InitType;
    .locals 1

    #@0
    .prologue
    .line 114
    sget-object v0, Ljavax/crypto/Cipher$InitType;->$VALUES:[Ljavax/crypto/Cipher$InitType;

    #@2
    return-object v0
.end method
