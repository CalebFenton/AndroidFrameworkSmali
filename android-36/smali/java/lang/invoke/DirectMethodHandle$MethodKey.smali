.class final Ljava/lang/invoke/DirectMethodHandle$MethodKey;
.super Ljava/lang/Object;
.source "DirectMethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/DirectMethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodKey"
.end annotation


# instance fields
.field private final blacklist arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 114
    .local p2, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->name:Ljava/lang/String;

    .line 116
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->arguments:Ljava/util/List;

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 126
    instance-of v0, p1, Ljava/lang/invoke/DirectMethodHandle$MethodKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;

    .line 127
    .local v0, "methodKey":Ljava/lang/invoke/DirectMethodHandle$MethodKey;
    iget-object v2, p0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->name:Ljava/lang/String;

    iget-object v3, v0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->arguments:Ljava/util/List;

    iget-object v3, v0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->arguments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1

    .line 130
    .end local v0    # "methodKey":Ljava/lang/invoke/DirectMethodHandle$MethodKey;
    :cond_1e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 121
    iget-object v0, p0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ljava/lang/invoke/DirectMethodHandle$MethodKey;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
