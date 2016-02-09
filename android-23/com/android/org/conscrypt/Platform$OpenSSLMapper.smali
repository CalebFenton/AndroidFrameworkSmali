.class Lcom/android/org/conscrypt/Platform$OpenSSLMapper;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lorg/apache/harmony/security/utils/AlgNameMapperSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenSSLMapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/Platform$OpenSSLMapper;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform$OpenSSLMapper;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public mapNameToOid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "algName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->OBJ_txt2nid_oid(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mapOidToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->OBJ_txt2nid_longName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
