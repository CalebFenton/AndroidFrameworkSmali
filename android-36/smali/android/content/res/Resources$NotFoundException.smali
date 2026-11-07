.class public Landroid/content/res/Resources$NotFoundException;
.super Ljava/lang/RuntimeException;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotFoundException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 262
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 265
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method
