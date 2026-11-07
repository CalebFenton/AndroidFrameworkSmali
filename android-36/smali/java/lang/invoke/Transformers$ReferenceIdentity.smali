.class Ljava/lang/invoke/Transformers$ReferenceIdentity;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceIdentity"
.end annotation


# instance fields
.field private final greylist-max-o type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 321
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 322
    iput-object p1, p0, Ljava/lang/invoke/Transformers$ReferenceIdentity;->type:Ljava/lang/Class;

    .line 323
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 6
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 327
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 328
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 330
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 331
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 332
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    .line 333
    iget-object v2, p0, Ljava/lang/invoke/Transformers$ReferenceIdentity;->type:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/Transformers$ReferenceIdentity;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 334
    return-void
.end method
