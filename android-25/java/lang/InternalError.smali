.class public Ljava/lang/InternalError;
.super Ljava/lang/VirtualMachineError;
.source "InternalError.java"


# static fields
.field private static final serialVersionUID:J = -0x7dc4ccb23ff53dfdL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    #@3
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 86
    return-void
.end method
