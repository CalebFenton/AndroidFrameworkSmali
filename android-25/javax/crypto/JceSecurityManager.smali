.class final Ljavax/crypto/JceSecurityManager;
.super Ljava/lang/SecurityManager;
.source "JceSecurityManager.java"


# static fields
.field static final INSTANCE:Ljavax/crypto/JceSecurityManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getCryptoPermission(Ljava/lang/String;)Ljavax/crypto/CryptoPermission;
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
