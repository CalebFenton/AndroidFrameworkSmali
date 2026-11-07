.class public Landroid/renderscript/RSInvalidStateException;
.super Landroid/renderscript/RSRuntimeException;
.source "RSInvalidStateException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
