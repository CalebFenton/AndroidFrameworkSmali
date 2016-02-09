.class Ljava/lang/ProcessManager$ProcessReference;
.super Ljava/lang/ref/WeakReference;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/ProcessManager$ProcessImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final processId:I


# direct methods
.method public constructor <init>(Ljava/lang/ProcessManager$ProcessImpl;Ljava/lang/ProcessManager$ProcessReferenceQueue;)V
    .locals 1
    .param p1, "referent"    # Ljava/lang/ProcessManager$ProcessImpl;
    .param p2, "referenceQueue"    # Ljava/lang/ProcessManager$ProcessReferenceQueue;

    #@0
    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 321
    invoke-static {p1}, Ljava/lang/ProcessManager$ProcessImpl;->-get0(Ljava/lang/ProcessManager$ProcessImpl;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Ljava/lang/ProcessManager$ProcessReference;->processId:I

    #@9
    .line 319
    return-void
.end method
