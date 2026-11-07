.class public Ljava/lang/NoSuchMethodException;
.super Ljava/lang/ReflectiveOperationException;
.source "NoSuchMethodException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x45ddbd9e5ec605dbL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
