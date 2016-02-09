.class public Ljava/lang/StackOverflowError;
.super Ljava/lang/VirtualMachineError;
.source "StackOverflowError.java"


# static fields
.field private static final serialVersionUID:J = 0x7779ef15877b2377L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    return-void
.end method
