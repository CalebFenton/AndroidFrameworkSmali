.class public final enum Landroid/icu/util/ULocale$Minimize;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Minimize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/ULocale$Minimize;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/ULocale$Minimize;

.field public static final enum FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2472
    new-instance v0, Landroid/icu/util/ULocale$Minimize;

    #@4
    const-string/jumbo v1, "FAVOR_SCRIPT"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$Minimize;-><init>(Ljava/lang/String;I)V

    #@a
    .line 2478
    sput-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    #@c
    .line 2479
    new-instance v0, Landroid/icu/util/ULocale$Minimize;

    #@e
    const-string/jumbo v1, "FAVOR_REGION"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale$Minimize;-><init>(Ljava/lang/String;I)V

    #@14
    .line 2485
    sput-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    #@16
    .line 2471
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/util/ULocale$Minimize;

    #@19
    sget-object v1, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/util/ULocale$Minimize;->$VALUES:[Landroid/icu/util/ULocale$Minimize;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 2471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/ULocale$Minimize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2471
    const-class v0, Landroid/icu/util/ULocale$Minimize;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/ULocale$Minimize;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/ULocale$Minimize;
    .locals 1

    #@0
    .prologue
    .line 2471
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->$VALUES:[Landroid/icu/util/ULocale$Minimize;

    #@2
    return-object v0
.end method
