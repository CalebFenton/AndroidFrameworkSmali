.class public Lcom/android/internal/org/bouncycastle/util/StoreException;
.super Ljava/lang/RuntimeException;
.source "StoreException.java"


# instance fields
.field private blacklist _e:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    .line 23
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    return-object v0
.end method
