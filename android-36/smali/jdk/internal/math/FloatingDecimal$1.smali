.class Ljdk/internal/math/FloatingDecimal$1;
.super Ljava/lang/ThreadLocal;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 978
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 978
    invoke-virtual {p0}, Ljdk/internal/math/FloatingDecimal$1;->initialValue()Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initialValue()Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;
    .registers 2

    .line 981
    new-instance v0, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;

    invoke-direct {v0}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;-><init>()V

    return-object v0
.end method
