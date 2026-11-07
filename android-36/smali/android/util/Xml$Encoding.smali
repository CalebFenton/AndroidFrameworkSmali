.class public final enum Landroid/util/Xml$Encoding;
.super Ljava/lang/Enum;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Xml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/Xml$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/Xml$Encoding;

.field public static final enum whitelist ISO_8859_1:Landroid/util/Xml$Encoding;

.field public static final enum whitelist US_ASCII:Landroid/util/Xml$Encoding;

.field public static final enum whitelist UTF_16:Landroid/util/Xml$Encoding;

.field public static final enum whitelist UTF_8:Landroid/util/Xml$Encoding;


# instance fields
.field final greylist-max-o expatName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/util/Xml$Encoding;
    .registers 4

    .line 407
    sget-object v0, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    sget-object v2, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    sget-object v3, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    filled-new-array {v0, v1, v2, v3}, [Landroid/util/Xml$Encoding;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 409
    new-instance v0, Landroid/util/Xml$Encoding;

    const/4 v1, 0x0

    const-string v2, "US-ASCII"

    const-string v3, "US_ASCII"

    invoke-direct {v0, v3, v1, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    .line 410
    new-instance v0, Landroid/util/Xml$Encoding;

    const/4 v1, 0x1

    const-string v2, "UTF-8"

    const-string v3, "UTF_8"

    invoke-direct {v0, v3, v1, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 411
    new-instance v0, Landroid/util/Xml$Encoding;

    const/4 v1, 0x2

    const-string v2, "UTF-16"

    const-string v3, "UTF_16"

    invoke-direct {v0, v3, v1, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    .line 412
    new-instance v0, Landroid/util/Xml$Encoding;

    const/4 v1, 0x3

    const-string v2, "ISO-8859-1"

    const-string v3, "ISO_8859_1"

    invoke-direct {v0, v3, v1, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    .line 407
    invoke-static {}, Landroid/util/Xml$Encoding;->$values()[Landroid/util/Xml$Encoding;

    move-result-object v0

    sput-object v0, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "expatName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 417
    iput-object p3, p0, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 407
    const-class v0, Landroid/util/Xml$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/Xml$Encoding;

    return-object v0
.end method

.method public static whitelist values()[Landroid/util/Xml$Encoding;
    .registers 1

    .line 407
    sget-object v0, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, [Landroid/util/Xml$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Xml$Encoding;

    return-object v0
.end method
