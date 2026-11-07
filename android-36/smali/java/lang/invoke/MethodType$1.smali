.class Ljava/lang/invoke/MethodType$1;
.super Ljava/lang/Object;
.source "MethodType.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/util/Map<",
        "Ljdk/internal/util/ReferenceKey<",
        "Ljava/lang/invoke/MethodType;",
        ">;",
        "Ljdk/internal/util/ReferenceKey<",
        "Ljava/lang/invoke/MethodType;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 196
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType$1;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "Ljava/lang/invoke/MethodType;",
            ">;",
            "Ljdk/internal/util/ReferenceKey<",
            "Ljava/lang/invoke/MethodType;",
            ">;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-object v0
.end method
