.class public final enum Landroid/text/TextUtils$TruncateAt;
.super Ljava/lang/Enum;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TruncateAt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/text/TextUtils$TruncateAt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist END:Landroid/text/TextUtils$TruncateAt;

.field public static final enum greylist END_SMALL:Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist MARQUEE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist MIDDLE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum whitelist START:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method private static synthetic blacklist $values()[Landroid/text/TextUtils$TruncateAt;
    .registers 5

    .line 1320
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1321
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 1322
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "MIDDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 1323
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1324
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "MARQUEE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 1328
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    const-string v1, "END_SMALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 1320
    invoke-static {}, Landroid/text/TextUtils$TruncateAt;->$values()[Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sput-object v0, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
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

    .line 1320
    const-class v0, Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public static whitelist values()[Landroid/text/TextUtils$TruncateAt;
    .registers 1

    .line 1320
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, [Landroid/text/TextUtils$TruncateAt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method
