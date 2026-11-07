.class public abstract Ljava/lang/invoke/Transformers$Transformer;
.super Ljava/lang/invoke/MethodHandle;
.source "Transformers.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Transformer"
.end annotation


# direct methods
.method protected constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 67
    invoke-static {}, Ljava/lang/invoke/Transformers;->-$$Nest$sfgetTRANSFORM_INTERNAL()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v0

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 68
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;I)V
    .registers 5
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "invokeKind"    # I

    .line 71
    invoke-static {}, Ljava/lang/invoke/Transformers;->-$$Nest$sfgetTRANSFORM_INTERNAL()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p1}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 72
    return-void
.end method

.method protected static blacklist invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V
    .registers 3
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    instance-of v0, p0, Ljava/lang/invoke/Transformers$Transformer;

    if-eqz v0, :cond_b

    .line 88
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/Transformers$Transformer;

    invoke-virtual {v0, p1}, Ljava/lang/invoke/Transformers$Transformer;->transform(Ldalvik/system/EmulatedStackFrame;)V

    goto :goto_16

    .line 90
    :cond_b
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 91
    .local v0, "adaptedTarget":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodHandle;->invokeExactWithFrame(Ldalvik/system/EmulatedStackFrame;)V

    .line 93
    .end local v0    # "adaptedTarget":Ljava/lang/invoke/MethodHandle;
    :goto_16
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    instance-of v0, p1, Ljava/lang/invoke/Transformers$Transformer;

    if-eqz v0, :cond_b

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/lang/invoke/Transformers$Transformer;

    invoke-virtual {v0, p2}, Ljava/lang/invoke/Transformers$Transformer;->transform(Ldalvik/system/EmulatedStackFrame;)V

    goto :goto_e

    .line 106
    :cond_b
    invoke-virtual {p1, p2}, Ljava/lang/invoke/MethodHandle;->invokeExactWithFrame(Ldalvik/system/EmulatedStackFrame;)V

    .line 108
    :goto_e
    return-void
.end method
