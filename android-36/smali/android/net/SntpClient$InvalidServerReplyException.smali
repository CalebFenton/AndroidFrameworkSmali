.class Landroid/net/SntpClient$InvalidServerReplyException;
.super Ljava/lang/Exception;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidServerReplyException"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 100
    return-void
.end method
