.class public Ljava/io/InvalidObjectException;
.super Ljava/io/ObjectStreamException;
.source "InvalidObjectException.java"


# static fields
.field private static final serialVersionUID:J = 0x2cde8ae9921ad3dfL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
    return-void
.end method
