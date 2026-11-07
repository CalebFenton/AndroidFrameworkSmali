.class Lcom/android/org/conscrypt/Conscrypt$1;
.super Ljava/lang/Object;
.source "Conscrypt.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/Conscrypt;->wrapHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$verifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method constructor blacklist <init>(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 834
    iput-object p1, p0, Lcom/android/org/conscrypt/Conscrypt$1;->val$verifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist verify([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 5
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;

    .line 838
    iget-object v0, p0, Lcom/android/org/conscrypt/Conscrypt$1;->val$verifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v0, p2, p3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
