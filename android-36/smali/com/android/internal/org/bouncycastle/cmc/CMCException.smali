.class public Lcom/android/internal/org/bouncycastle/cmc/CMCException;
.super Ljava/lang/Exception;
.source "CMCException.java"


# instance fields
.field private final blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cmc/CMCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cmc/CMCException;->cause:Ljava/lang/Throwable;

    .line 21
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cmc/CMCException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
