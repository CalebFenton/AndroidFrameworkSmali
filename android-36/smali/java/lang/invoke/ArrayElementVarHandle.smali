.class final Ljava/lang/invoke/ArrayElementVarHandle;
.super Ljava/lang/invoke/VarHandle;
.source "ArrayElementVarHandle.java"


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 28
    .local p1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v4, p1

    move-object v0, p0

    move-object v2, p1

    .end local p1    # "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;-><init>(Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;Ljava/lang/Class;)V

    .line 30
    return-void
.end method

.method static blacklist create(Ljava/lang/Class;)Ljava/lang/invoke/ArrayElementVarHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/ArrayElementVarHandle;"
        }
    .end annotation

    .line 33
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/invoke/ArrayElementVarHandle;

    invoke-direct {v0, p0}, Ljava/lang/invoke/ArrayElementVarHandle;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
