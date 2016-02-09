.class public final enum Landroid/icu/text/Normalizer2$Mode;
.super Ljava/lang/Enum;
.source "Normalizer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/Normalizer2$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/Normalizer2$Mode;

.field public static final enum COMPOSE:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum FCD:Landroid/icu/text/Normalizer2$Mode;


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
    .line 70
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    #@6
    const-string/jumbo v1, "COMPOSE"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    #@c
    .line 78
    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    #@e
    .line 79
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    #@10
    const-string/jumbo v1, "DECOMPOSE"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    #@16
    .line 87
    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

    #@18
    .line 88
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    #@1a
    const-string/jumbo v1, "FCD"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    #@20
    .line 100
    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->FCD:Landroid/icu/text/Normalizer2$Mode;

    #@22
    .line 101
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    #@24
    const-string/jumbo v1, "COMPOSE_CONTIGUOUS"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 110
    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

    #@2c
    .line 69
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/icu/text/Normalizer2$Mode;

    #@2f
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->FCD:Landroid/icu/text/Normalizer2$Mode;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->$VALUES:[Landroid/icu/text/Normalizer2$Mode;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/Normalizer2$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    const-class v0, Landroid/icu/text/Normalizer2$Mode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/Normalizer2$Mode;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/Normalizer2$Mode;
    .locals 1

    #@0
    .prologue
    .line 69
    sget-object v0, Landroid/icu/text/Normalizer2$Mode;->$VALUES:[Landroid/icu/text/Normalizer2$Mode;

    #@2
    return-object v0
.end method
