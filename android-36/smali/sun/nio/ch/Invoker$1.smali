.class Lsun/nio/ch/Invoker$1;
.super Ljava/lang/ThreadLocal;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Invoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lsun/nio/ch/Invoker$GroupAndInvokeCount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lsun/nio/ch/Invoker$1;->initialValue()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initialValue()Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method
