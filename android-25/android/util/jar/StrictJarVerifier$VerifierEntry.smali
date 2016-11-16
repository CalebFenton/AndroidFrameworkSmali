.class Landroid/util/jar/StrictJarVerifier$VerifierEntry;
.super Ljava/io/OutputStream;
.source "StrictJarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierEntry"
.end annotation


# instance fields
.field private final certChains:[[Ljava/security/cert/Certificate;

.field private final digest:Ljava/security/MessageDigest;

.field private final hash:[B

.field private final name:Ljava/lang/String;

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/security/MessageDigest;
    .param p3, "hash"    # [B
    .param p4, "certChains"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            "[B[[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p5, "verifedEntries":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[[Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 106
    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    #@5
    .line 107
    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    #@7
    .line 108
    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    #@9
    .line 109
    iput-object p4, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    #@b
    .line 110
    iput-object p5, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    #@d
    .line 105
    return-void
.end method


# virtual methods
.method verify()V
    .locals 4

    #@0
    .prologue
    .line 141
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    #@2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@5
    move-result-object v0

    #@6
    .line 142
    .local v0, "d":[B
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    #@8
    invoke-static {v1}, Llibcore/io/Base64;->decode([B)[B

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 143
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@15
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    #@17
    iget-object v3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    #@19
    invoke-static {v1, v2, v3}, Landroid/util/jar/StrictJarVerifier;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    #@1c
    move-result-object v1

    #@1d
    throw v1

    #@1e
    .line 145
    :cond_0
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    #@20
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    #@22
    iget-object v3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    #@24
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 140
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    #@2
    int-to-byte v1, p1

    #@3
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    #@6
    .line 117
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@5
    .line 125
    return-void
.end method
