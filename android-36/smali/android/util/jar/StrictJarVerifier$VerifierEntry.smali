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
.field private final blacklist certChains:[[Ljava/security/cert/Certificate;

.field private final blacklist digest:Ljava/security/MessageDigest;

.field private final blacklist hash:[B

.field private final blacklist name:Ljava/lang/String;

.field private final blacklist verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    .registers 6
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
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p5, "verifedEntries":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[[Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    .line 121
    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    .line 122
    iput-object p4, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    .line 123
    iput-object p5, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    .line 124
    return-void
.end method


# virtual methods
.method blacklist verify()V
    .registers 5

    .line 154
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 155
    .local v0, "d":[B
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarVerifier;->-$$Nest$smverifyMessageDigest([B[B)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 158
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void

    .line 156
    :cond_18
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-static {v3, v1, v2}, Landroid/util/jar/StrictJarVerifier;->-$$Nest$sminvalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "value"    # I

    .line 131
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 132
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I

    .line 139
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 140
    return-void
.end method
