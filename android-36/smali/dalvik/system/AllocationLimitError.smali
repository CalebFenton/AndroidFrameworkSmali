.class public Ldalvik/system/AllocationLimitError;
.super Ljava/lang/VirtualMachineError;
.source "AllocationLimitError.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    .line 30
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
