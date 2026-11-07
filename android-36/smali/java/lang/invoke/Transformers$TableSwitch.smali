.class Ljava/lang/invoke/Transformers$TableSwitch;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TableSwitch"
.end annotation


# instance fields
.field private final blacklist fallback:Ljava/lang/invoke/MethodHandle;

.field private final blacklist targets:[Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor blacklist <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "fallback"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "targets"    # [Ljava/lang/invoke/MethodHandle;

    .line 3020
    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 3021
    iput-object p2, p0, Ljava/lang/invoke/Transformers$TableSwitch;->fallback:Ljava/lang/invoke/MethodHandle;

    .line 3022
    iput-object p3, p0, Ljava/lang/invoke/Transformers$TableSwitch;->targets:[Ljava/lang/invoke/MethodHandle;

    .line 3023
    return-void
.end method

.method private blacklist selectMethodHandle(Ldalvik/system/EmulatedStackFrame;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 3032
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 3033
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 3034
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v1

    .line 3036
    .local v1, "index":I
    if-ltz v1, :cond_18

    iget-object v2, p0, Ljava/lang/invoke/Transformers$TableSwitch;->targets:[Ljava/lang/invoke/MethodHandle;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 3037
    iget-object v2, p0, Ljava/lang/invoke/Transformers$TableSwitch;->targets:[Ljava/lang/invoke/MethodHandle;

    aget-object v2, v2, v1

    return-object v2

    .line 3039
    :cond_18
    iget-object v2, p0, Ljava/lang/invoke/Transformers$TableSwitch;->fallback:Ljava/lang/invoke/MethodHandle;

    return-object v2
.end method


# virtual methods
.method public blacklist transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 3
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3027
    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$TableSwitch;->selectMethodHandle(Ldalvik/system/EmulatedStackFrame;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 3028
    .local v0, "selected":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/Transformers$TableSwitch;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 3029
    return-void
.end method
