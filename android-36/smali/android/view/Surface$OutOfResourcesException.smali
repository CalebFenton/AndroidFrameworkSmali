.class public Landroid/view/Surface$OutOfResourcesException;
.super Ljava/lang/RuntimeException;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfResourcesException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1339
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1340
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1342
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1343
    return-void
.end method
