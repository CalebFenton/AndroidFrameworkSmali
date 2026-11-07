.class final Ljava/lang/reflect/Proxy$KeyFactory;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/ClassLoader;",
        "[",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/reflect/Proxy-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/reflect/Proxy$KeyFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 563
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_24

    .line 567
    new-instance v0, Ljava/lang/reflect/Proxy$KeyX;

    invoke-direct {v0, p2}, Ljava/lang/reflect/Proxy$KeyX;-><init>([Ljava/lang/Class;)V

    return-object v0

    .line 565
    :pswitch_b
    new-instance v0, Ljava/lang/reflect/Proxy$Key2;

    aget-object v1, p2, v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-direct {v0, v1, v2}, Ljava/lang/reflect/Proxy$Key2;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 564
    :pswitch_16
    new-instance v0, Ljava/lang/reflect/Proxy$Key1;

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/Proxy$Key1;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 566
    :pswitch_1e
    invoke-static {}, Ljava/lang/reflect/Proxy;->-$$Nest$sfgetkey0()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_16
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 558
    check-cast p1, Ljava/lang/ClassLoader;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Proxy$KeyFactory;->apply(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
