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
.field private nativePtr:J

.field final synthetic this$0:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method public constructor <init>(Llibcore/util/NativeAllocationRegistry;)V
    .locals 2
    .param p1, "this$0"    # Llibcore/util/NativeAllocationRegistry;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 185
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    #@9
    .line 184
    return-void
.end method

.method public constructor <init>(Llibcore/util/NativeAllocationRegistry;J)V
    .locals 0
    .param p1, "this$0"    # Llibcore/util/NativeAllocationRegistry;
    .param p2, "nativePtr"    # J

    #@0
    .prologue
    .line 188
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 189
    iput-wide p2, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    #@7
    .line 188
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 193
    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 194
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    #@a
    invoke-static {v0}, Llibcore/util/NativeAllocationRegistry;->-get0(Llibcore/util/NativeAllocationRegistry;)J

    #@d
    move-result-wide v0

    #@e
    iget-wide v2, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    #@10
    invoke-static {v0, v1, v2, v3}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    #@13
    .line 196
    :cond_0
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    #@15
    invoke-static {v0}, Llibcore/util/NativeAllocationRegistry;->-get1(Llibcore/util/NativeAllocationRegistry;)J

    #@18
    move-result-wide v0

    #@19
    invoke-static {v0, v1}, Llibcore/util/NativeAllocationRegistry;->-wrap0(J)V

    #@1c
    .line 192
    return-void
.end method

.method public setNativePtr(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    #@0
    .prologue
    .line 200
    iput-wide p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    #@2
    .line 199
    return-void
.end method
