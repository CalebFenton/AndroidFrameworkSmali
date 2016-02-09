.class public Ldalvik/system/AllocationLimitError;
.super Ljava/lang/VirtualMachineError;
.source "AllocationLimitError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    #@3
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    return-void
.end method
