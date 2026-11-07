.class Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
.super Ljava/lang/Exception;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsingException"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 279
    return-void
.end method
