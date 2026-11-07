.class public Lcom/android/internal/org/bouncycastle/x509/NoSuchStoreException;
.super Ljava/lang/Exception;
.source "NoSuchStoreException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
