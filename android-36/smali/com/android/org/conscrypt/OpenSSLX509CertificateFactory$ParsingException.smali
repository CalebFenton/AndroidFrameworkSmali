.class Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
.super Ljava/lang/Exception;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsingException"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x74721e98e27c190dL


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
