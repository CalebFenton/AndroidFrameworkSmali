.class public final enum Landroid/graphics/Atlas$Type;
.super Ljava/lang/Enum;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Atlas$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Atlas$Type;

.field public static final enum SliceLongAxis:Landroid/graphics/Atlas$Type;

.field public static final enum SliceMaxArea:Landroid/graphics/Atlas$Type;

.field public static final enum SliceMinArea:Landroid/graphics/Atlas$Type;

.field public static final enum SliceShortAxis:Landroid/graphics/Atlas$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 49
    new-instance v0, Landroid/graphics/Atlas$Type;

    #@6
    const-string/jumbo v1, "SliceMinArea"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Landroid/graphics/Atlas$Type;->SliceMinArea:Landroid/graphics/Atlas$Type;

    #@e
    .line 50
    new-instance v0, Landroid/graphics/Atlas$Type;

    #@10
    const-string/jumbo v1, "SliceMaxArea"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Landroid/graphics/Atlas$Type;->SliceMaxArea:Landroid/graphics/Atlas$Type;

    #@18
    .line 51
    new-instance v0, Landroid/graphics/Atlas$Type;

    #@1a
    const-string/jumbo v1, "SliceShortAxis"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Landroid/graphics/Atlas$Type;->SliceShortAxis:Landroid/graphics/Atlas$Type;

    #@22
    .line 52
    new-instance v0, Landroid/graphics/Atlas$Type;

    #@24
    const-string/jumbo v1, "SliceLongAxis"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/graphics/Atlas$Type;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Landroid/graphics/Atlas$Type;->SliceLongAxis:Landroid/graphics/Atlas$Type;

    #@2c
    .line 48
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/graphics/Atlas$Type;

    #@2f
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMinArea:Landroid/graphics/Atlas$Type;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMaxArea:Landroid/graphics/Atlas$Type;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceShortAxis:Landroid/graphics/Atlas$Type;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceLongAxis:Landroid/graphics/Atlas$Type;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/graphics/Atlas$Type;->$VALUES:[Landroid/graphics/Atlas$Type;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    const-class v0, Landroid/graphics/Atlas$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Atlas$Type;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Atlas$Type;
    .locals 1

    #@0
    .prologue
    .line 48
    sget-object v0, Landroid/graphics/Atlas$Type;->$VALUES:[Landroid/graphics/Atlas$Type;

    #@2
    return-object v0
.end method
