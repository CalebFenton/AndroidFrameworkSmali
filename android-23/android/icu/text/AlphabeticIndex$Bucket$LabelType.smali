.class public final enum Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
.super Ljava/lang/Enum;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex$Bucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;


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
    .line 907
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@6
    const-string/jumbo v1, "NORMAL"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    #@c
    .line 911
    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@e
    .line 912
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@10
    const-string/jumbo v1, "UNDERFLOW"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    #@16
    .line 916
    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@18
    .line 917
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@1a
    const-string/jumbo v1, "INFLOW"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    #@20
    .line 921
    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@22
    .line 922
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@24
    const-string/jumbo v1, "OVERFLOW"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 926
    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@2c
    .line 906
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@2f
    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 906
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;, "Landroid/icu/text/AlphabeticIndex<TV;>.Bucket<TV;>.LabelType;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 906
    const-class v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    #@0
    .prologue
    .line 906
    sget-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    #@2
    return-object v0
.end method
