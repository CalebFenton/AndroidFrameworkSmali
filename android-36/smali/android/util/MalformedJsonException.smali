.class public final Landroid/util/MalformedJsonException;
.super Ljava/io/IOException;
.source "MalformedJsonException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
