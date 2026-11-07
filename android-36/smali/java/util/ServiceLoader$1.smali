.class Ljava/util/ServiceLoader$1;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ServiceLoader;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$clazz:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 583
    .local p0, "this":Ljava/util/ServiceLoader$1;, "Ljava/util/ServiceLoader$1;"
    iput-object p2, p0, Ljava/util/ServiceLoader$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 583
    .local p0, "this":Ljava/util/ServiceLoader$1;, "Ljava/util/ServiceLoader$1;"
    invoke-virtual {p0}, Ljava/util/ServiceLoader$1;->run()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 586
    .local p0, "this":Ljava/util/ServiceLoader$1;, "Ljava/util/ServiceLoader$1;"
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->val$clazz:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 589
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 590
    return-object v0
.end method
