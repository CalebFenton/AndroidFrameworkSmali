.class public Ljava/lang/OutOfMemoryError;
.super Ljava/lang/VirtualMachineError;
.source "OutOfMemoryError.java"


# static fields
.field private static final serialVersionUID:J = 0x7231bb708888e315L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    return-void
.end method
