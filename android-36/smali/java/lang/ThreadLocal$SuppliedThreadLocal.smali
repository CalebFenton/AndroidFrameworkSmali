.class final Ljava/lang/ThreadLocal$SuppliedThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuppliedThreadLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)V"
        }
    .end annotation

    .line 299
    .local p0, "this":Ljava/lang/ThreadLocal$SuppliedThreadLocal;, "Ljava/lang/ThreadLocal$SuppliedThreadLocal<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Ljava/lang/ThreadLocal$SuppliedThreadLocal;->supplier:Ljava/util/function/Supplier;

    .line 301
    return-void
.end method


# virtual methods
.method protected whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 305
    .local p0, "this":Ljava/lang/ThreadLocal$SuppliedThreadLocal;, "Ljava/lang/ThreadLocal$SuppliedThreadLocal<TT;>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$SuppliedThreadLocal;->supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
