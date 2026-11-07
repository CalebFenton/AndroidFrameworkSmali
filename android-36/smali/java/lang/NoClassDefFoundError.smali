.class public Ljava/lang/NoClassDefFoundError;
.super Ljava/lang/LinkageError;
.source "NoClassDefFoundError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x7e3afc5a8df49c6aL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 50
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method
