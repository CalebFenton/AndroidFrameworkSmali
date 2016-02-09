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
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/TextView$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TextView$BufferType;

.field public static final enum EDITABLE:Landroid/widget/TextView$BufferType;

.field public static final enum NORMAL:Landroid/widget/TextView$BufferType;

.field public static final enum SPANNABLE:Landroid/widget/TextView$BufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 8533
    new-instance v0, Landroid/widget/TextView$BufferType;

    #@5
    const-string/jumbo v1, "NORMAL"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@d
    new-instance v0, Landroid/widget/TextView$BufferType;

    #@f
    const-string/jumbo v1, "SPANNABLE"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@17
    new-instance v0, Landroid/widget/TextView$BufferType;

    #@19
    const-string/jumbo v1, "EDITABLE"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@21
    .line 8532
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/widget/TextView$BufferType;

    #@24
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 8532
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TextView$BufferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8532
    const-class v0, Landroid/widget/TextView$BufferType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/TextView$BufferType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/widget/TextView$BufferType;
    .locals 1

    #@0
    .prologue
    .line 8532
    sget-object v0, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

    #@2
    return-object v0
.end method
