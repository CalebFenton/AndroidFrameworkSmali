.class Ljavax/crypto/JarVerifier$1;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/crypto/JarVerifier;->verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/crypto/JarVerifier;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/crypto/JarVerifier;
    .param p2, "val$url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 91
    iput-object p1, p0, Ljavax/crypto/JarVerifier$1;->this$0:Ljavax/crypto/JarVerifier;

    #@2
    iput-object p2, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v1, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    #@2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/net/JarURLConnection;

    #@8
    .line 97
    .local v0, "conn":Ljava/net/JarURLConnection;
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@c
    .line 98
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method
