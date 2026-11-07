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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/util/jar/JarFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$url:Ljava/net/URL;


# direct methods
.method constructor blacklist <init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V
    .registers 3
    .param p1, "this$0"    # Ljavax/crypto/JarVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
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

    .line 90
    iput-object p2, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Ljavax/crypto/JarVerifier$1;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/jar/JarFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ljavax/crypto/JarVerifier$1;->val$url:Ljava/net/URL;

    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    .line 96
    .local v0, "conn":Ljava/net/JarURLConnection;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 97
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    return-object v1
.end method
