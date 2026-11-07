.class final Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;
.super Ljavax/crypto/ShortBufferException;
.source "ShortBufferWithoutStackTraceException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x9622b0ea80b437bL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljavax/crypto/ShortBufferException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    .line 41
    monitor-exit p0

    return-object p0
.end method
