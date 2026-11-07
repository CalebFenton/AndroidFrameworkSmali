.class public Ljava/lang/reflect/InvocationTargetException;
.super Ljava/lang/ReflectiveOperationException;
.source "InvocationTargetException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x38b1268ed671246fL


# instance fields
.field private greylist-max-o target:Ljava/lang/Throwable;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 64
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Throwable;

    .line 73
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    .line 75
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 110
    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist test-api getTargetException()Ljava/lang/Throwable;
    .registers 2

    .line 99
    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method
