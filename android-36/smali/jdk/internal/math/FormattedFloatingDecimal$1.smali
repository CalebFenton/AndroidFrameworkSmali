.class Ljdk/internal/math/FormattedFloatingDecimal$1;
.super Ljava/lang/ThreadLocal;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FormattedFloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 49
    const/16 v0, 0x14

    new-array v0, v0, [C

    return-object v0
.end method
