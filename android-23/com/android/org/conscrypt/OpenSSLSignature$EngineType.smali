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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field public static final enum RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 33
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@4
    const-string/jumbo v1, "RSA"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@c
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@e
    const-string/jumbo v1, "EC"

    #@11
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@16
    .line 32
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@19
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    const-class v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .locals 1

    #@0
    .prologue
    .line 32
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    #@2
    return-object v0
.end method
