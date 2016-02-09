.class public final enum Landroid/text/Layout$Alignment;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/Layout$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_CENTER:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_LEFT:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_NORMAL:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

.field public static final enum ALIGN_RIGHT:Landroid/text/Layout$Alignment;


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
    .line 2018
    new-instance v0, Landroid/text/Layout$Alignment;

    #@7
    const-string/jumbo v1, "ALIGN_NORMAL"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@f
    .line 2019
    new-instance v0, Landroid/text/Layout$Alignment;

    #@11
    const-string/jumbo v1, "ALIGN_OPPOSITE"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@19
    .line 2020
    new-instance v0, Landroid/text/Layout$Alignment;

    #@1b
    const-string/jumbo v1, "ALIGN_CENTER"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@23
    .line 2021
    new-instance v0, Landroid/text/Layout$Alignment;

    #@25
    const-string/jumbo v1, "ALIGN_LEFT"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 2022
    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@2d
    .line 2023
    new-instance v0, Landroid/text/Layout$Alignment;

    #@2f
    const-string/jumbo v1, "ALIGN_RIGHT"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/text/Layout$Alignment;-><init>(Ljava/lang/String;I)V

    #@35
    .line 2024
    sput-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@37
    .line 2017
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/text/Layout$Alignment;

    #@3a
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 2017
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2017
    const-class v0, Landroid/text/Layout$Alignment;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/text/Layout$Alignment;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/text/Layout$Alignment;
    .locals 1

    #@0
    .prologue
    .line 2017
    sget-object v0, Landroid/text/Layout$Alignment;->$VALUES:[Landroid/text/Layout$Alignment;

    #@2
    return-object v0
.end method
