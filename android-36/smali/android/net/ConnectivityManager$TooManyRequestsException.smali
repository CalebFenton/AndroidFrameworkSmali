.class public Landroid/net/ConnectivityManager$TooManyRequestsException;
.super Ljava/lang/RuntimeException;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TooManyRequestsException"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 4490
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
