.class Ljava/math/BigDecimal$1;
.super Ljava/lang/ThreadLocal;
.source "BigDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/math/BigDecimal$StringBuilderHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 365
    invoke-virtual {p0}, Ljava/math/BigDecimal$1;->initialValue()Ljava/math/BigDecimal$StringBuilderHelper;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initialValue()Ljava/math/BigDecimal$StringBuilderHelper;
    .registers 2

    .line 368
    new-instance v0, Ljava/math/BigDecimal$StringBuilderHelper;

    invoke-direct {v0}, Ljava/math/BigDecimal$StringBuilderHelper;-><init>()V

    return-object v0
.end method
