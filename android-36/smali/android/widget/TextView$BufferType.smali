.class public final enum Landroid/widget/TextView$BufferType;
.super Ljava/lang/Enum;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/widget/TextView$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/widget/TextView$BufferType;

.field public static final enum whitelist EDITABLE:Landroid/widget/TextView$BufferType;

.field public static final enum whitelist NORMAL:Landroid/widget/TextView$BufferType;

.field public static final enum whitelist SPANNABLE:Landroid/widget/TextView$BufferType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/widget/TextView$BufferType;
    .registers 3

    .line 13557
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    filled-new-array {v0, v1, v2}, [Landroid/widget/TextView$BufferType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 13558
    new-instance v0, Landroid/widget/TextView$BufferType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    new-instance v0, Landroid/widget/TextView$BufferType;

    const-string v1, "SPANNABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    new-instance v0, Landroid/widget/TextView$BufferType;

    const-string v1, "EDITABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 13557
    invoke-static {}, Landroid/widget/TextView$BufferType;->$values()[Landroid/widget/TextView$BufferType;

    move-result-object v0

    sput-object v0, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

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

    .line 13557
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/widget/TextView$BufferType;
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

    .line 13557
    const-class v0, Landroid/widget/TextView$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView$BufferType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/widget/TextView$BufferType;
    .registers 1

    .line 13557
    sget-object v0, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

    invoke-virtual {v0}, [Landroid/widget/TextView$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$BufferType;

    return-object v0
.end method
