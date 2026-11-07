.class final Ljavax/crypto/CryptoAllPermission;
.super Ljavax/crypto/CryptoPermission;
.source "CryptoAllPermission.java"


# static fields
.field static final blacklist ALG_NAME:Ljava/lang/String;

.field static final blacklist INSTANCE:Ljavax/crypto/CryptoAllPermission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Ljavax/crypto/CryptoAllPermission;->ALG_NAME:Ljava/lang/String;

    .line 37
    sput-object v0, Ljavax/crypto/CryptoAllPermission;->INSTANCE:Ljavax/crypto/CryptoAllPermission;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 39
    const-string v0, ""

    invoke-direct {p0, v0}, Ljavax/crypto/CryptoPermission;-><init>(Ljava/lang/String;)V

    return-void
.end method
