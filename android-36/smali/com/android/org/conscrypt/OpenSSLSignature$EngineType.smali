.class final enum Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
.super Ljava/lang/Enum;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum blacklist EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum blacklist RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .registers 2

    .line 43
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    filled-new-array {v0, v1}, [Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const-string v1, "RSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const-string v1, "EC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    .line 43
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->$values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
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

    .line 43
    const-class v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    return-object v0
.end method
