.class public Ljava/lang/OutOfMemoryError;
.super Ljava/lang/VirtualMachineError;
.source "OutOfMemoryError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x7231bb708888e315L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    .line 49
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
