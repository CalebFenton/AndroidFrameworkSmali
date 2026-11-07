.class final Ljavax/crypto/JceSecurityManager;
.super Ljava/lang/SecurityManager;
.source "JceSecurityManager.java"


# static fields
.field static final blacklist INSTANCE:Ljavax/crypto/JceSecurityManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Ljavax/crypto/JceSecurityManager;->INSTANCE:Ljavax/crypto/JceSecurityManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method blacklist getCryptoPermission(Ljava/lang/String;)Ljavax/crypto/CryptoPermission;
    .registers 3
    .param p1, "alg"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
