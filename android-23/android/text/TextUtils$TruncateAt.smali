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
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/TextUtils$TruncateAt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/TextUtils$TruncateAt;

.field public static final enum END:Landroid/text/TextUtils$TruncateAt;

.field public static final enum END_SMALL:Landroid/text/TextUtils$TruncateAt;

.field public static final enum MARQUEE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum MIDDLE:Landroid/text/TextUtils$TruncateAt;

.field public static final enum START:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 1047
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    #@7
    const-string/jumbo v1, "START"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@f
    .line 1048
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    #@11
    const-string/jumbo v1, "MIDDLE"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@19
    .line 1049
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    #@1b
    const-string/jumbo v1, "END"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@23
    .line 1050
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    #@25
    const-string/jumbo v1, "MARQUEE"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@2d
    .line 1051
    new-instance v0, Landroid/text/TextUtils$TruncateAt;

    #@2f
    const-string/jumbo v1, "END_SMALL"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/text/TextUtils$TruncateAt;-><init>(Ljava/lang/String;I)V

    #@35
    .line 1054
    sput-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@37
    .line 1046
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/text/TextUtils$TruncateAt;

    #@3a
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1046
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1046
    const-class v0, Landroid/text/TextUtils$TruncateAt;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/text/TextUtils$TruncateAt;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/text/TextUtils$TruncateAt;
    .locals 1

    #@0
    .prologue
    .line 1046
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->$VALUES:[Landroid/text/TextUtils$TruncateAt;

    #@2
    return-object v0
.end method
