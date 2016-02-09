.class public final enum Landroid/graphics/Path$Op;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Path$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$Op;

.field public static final enum DIFFERENCE:Landroid/graphics/Path$Op;

.field public static final enum INTERSECT:Landroid/graphics/Path$Op;

.field public static final enum REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

.field public static final enum UNION:Landroid/graphics/Path$Op;

.field public static final enum XOR:Landroid/graphics/Path$Op;


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
    .line 108
    new-instance v0, Landroid/graphics/Path$Op;

    #@7
    const-string/jumbo v1, "DIFFERENCE"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    #@d
    .line 111
    sput-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    #@f
    .line 112
    new-instance v0, Landroid/graphics/Path$Op;

    #@11
    const-string/jumbo v1, "INTERSECT"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    #@17
    .line 115
    sput-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    #@19
    .line 116
    new-instance v0, Landroid/graphics/Path$Op;

    #@1b
    const-string/jumbo v1, "UNION"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    #@21
    .line 119
    sput-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    #@23
    .line 120
    new-instance v0, Landroid/graphics/Path$Op;

    #@25
    const-string/jumbo v1, "XOR"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 123
    sput-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    #@2d
    .line 124
    new-instance v0, Landroid/graphics/Path$Op;

    #@2f
    const-string/jumbo v1, "REVERSE_DIFFERENCE"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/graphics/Path$Op;-><init>(Ljava/lang/String;I)V

    #@35
    .line 127
    sput-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    #@37
    .line 107
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/graphics/Path$Op;

    #@3a
    sget-object v1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/graphics/Path$Op;->$VALUES:[Landroid/graphics/Path$Op;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$Op;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    const-class v0, Landroid/graphics/Path$Op;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Path$Op;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$Op;
    .locals 1

    #@0
    .prologue
    .line 107
    sget-object v0, Landroid/graphics/Path$Op;->$VALUES:[Landroid/graphics/Path$Op;

    #@2
    return-object v0
.end method
