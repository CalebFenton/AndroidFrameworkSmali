.class final Ljava/lang/invoke/ByteBufferViewVarHandle;
.super Ljava/lang/invoke/VarHandle;
.source "ByteBufferViewVarHandle.java"


# instance fields
.field private blacklist nativeByteOrder:Z


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Class;Ljava/nio/ByteOrder;)V
    .registers 9
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteOrder;",
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, [B

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;-><init>(Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;Ljava/lang/Class;)V

    .line 32
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Ljava/lang/invoke/ByteBufferViewVarHandle;->nativeByteOrder:Z

    .line 33
    return-void
.end method

.method static blacklist create(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/ByteBufferViewVarHandle;
    .registers 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteOrder;",
            ")",
            "Ljava/lang/invoke/ByteBufferViewVarHandle;"
        }
    .end annotation

    .line 36
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/invoke/ByteBufferViewVarHandle;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/ByteBufferViewVarHandle;-><init>(Ljava/lang/Class;Ljava/nio/ByteOrder;)V

    return-object v0
.end method
