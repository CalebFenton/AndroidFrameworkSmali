.class Ljava/lang/invoke/Transformers$DropArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropArguments"
.end annotation


# instance fields
.field private final greylist-max-o delegate:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o range2:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;II)V
    .registers 6
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "delegate"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "startPos"    # I
    .param p4, "numDropped"    # I

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 135
    iput-object p2, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    .line 139
    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 140
    add-int v0, p3, p4

    invoke-static {p1, v0}, Ldalvik/system/EmulatedStackFrame$Range;->from(Ljava/lang/invoke/MethodType;I)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 141
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

    .line 145
    iget-object v0, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 147
    .local v0, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 149
    iget-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget-object v2, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v2, v2, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$DropArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 152
    iget-object v1, p0, Ljava/lang/invoke/Transformers$DropArguments;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-static {v1, v0}, Ljava/lang/invoke/Transformers$DropArguments;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 153
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 154
    return-void
.end method
