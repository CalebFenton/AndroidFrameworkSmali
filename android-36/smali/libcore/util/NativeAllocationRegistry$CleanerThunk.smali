.class Llibcore/util/NativeAllocationRegistry$CleanerThunk;
.super Ljava/lang/Object;
.source "NativeAllocationRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/NativeAllocationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanerThunk"
.end annotation


# instance fields
.field private greylist-max-o nativePtr:J

.field final synthetic blacklist this$0:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method public constructor blacklist <init>(Llibcore/util/NativeAllocationRegistry;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 534
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    .line 536
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 539
    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 540
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-static {v0}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$fgetfreeFunction(Llibcore/util/NativeAllocationRegistry;)J

    move-result-wide v0

    iget-wide v2, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    invoke-static {v0, v1, v2, v3}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    .line 541
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-static {v0}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$fgetsize(Llibcore/util/NativeAllocationRegistry;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$smregisterNativeFree(J)V

    .line 542
    invoke-static {}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$sfgetCOUNTER()Ljava/lang/invoke/VarHandle;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    const/4 v2, -0x1

    invoke-polymorphic {v0, v1, v2}, Ljava/lang/invoke/VarHandle;->getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;, (Llibcore/util/NativeAllocationRegistry;I)V

    .line 544
    :cond_27
    return-void
.end method

.method public greylist-max-o setNativePtr(J)V
    .registers 3
    .param p1, "nativePtr"    # J

    .line 547
    iput-wide p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    .line 548
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(freeFunction = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-static {v1}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$fgetfreeFunction(Llibcore/util/NativeAllocationRegistry;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativePtr = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    .line 553
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-static {v1}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$fgetsize(Llibcore/util/NativeAllocationRegistry;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    return-object v0
.end method
