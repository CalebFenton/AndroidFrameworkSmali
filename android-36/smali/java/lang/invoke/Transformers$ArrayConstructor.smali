.class Ljava/lang/invoke/Transformers$ArrayConstructor;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayConstructor"
.end annotation


# instance fields
.field private final blacklist componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 354
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 355
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$ArrayConstructor;->componentType:Ljava/lang/Class;

    .line 356
    return-void
.end method


# virtual methods
.method public blacklist transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 5
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 360
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 361
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 362
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v1

    .line 363
    .local v1, "length":I
    iget-object v2, p0, Ljava/lang/invoke/Transformers$ArrayConstructor;->componentType:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 364
    .local v2, "array":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame;->setReturnValueTo(Ljava/lang/Object;)V

    .line 365
    return-void
.end method
