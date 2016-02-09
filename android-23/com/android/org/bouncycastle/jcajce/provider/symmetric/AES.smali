.class public final Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.super Ljava/lang/Object;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$CBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$CFB;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$OFB;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Wrap;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithAESCBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd128BitAESBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd192BitAESBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd256BitAESBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And128BitAESBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And192BitAESBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And256BitAESBC;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And128BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And192BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithMD5And256BitAESCBCOpenSSL;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParams;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;
    }
.end annotation


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# direct methods
.method static synthetic -get0()Ljava/lang/Class;
    .locals 1

    #@0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->gcmSpecClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "javax.crypto.spec.GCMParameterSpec"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->gcmSpecClass:Ljava/lang/Class;

    #@9
    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 880
    :try_start_0
    const-class v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v0

    #@a
    .line 882
    .local v0, "def":Ljava/lang/Class;
    return-object v0

    #@b
    .line 885
    .end local v0    # "def":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@c
    .line 886
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@d
    return-object v2
.end method
