.class Landroid/net/wifi/hotspot2/ConfigParser$MimePart;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MimePart"
.end annotation


# instance fields
.field public greylist-max-o data:[B

.field public greylist-max-o isLast:Z

.field public greylist-max-o type:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->type:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->data:[B

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;->isLast:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/hotspot2/ConfigParser-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ConfigParser$MimePart;-><init>()V

    return-void
.end method
