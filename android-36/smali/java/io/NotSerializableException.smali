.class public Ljava/io/NotSerializableException;
.super Ljava/io/ObjectStreamException;
.source "NotSerializableException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x28567800e7861635L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "classname"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method
