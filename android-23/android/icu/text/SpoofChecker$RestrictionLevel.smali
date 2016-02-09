.class public final enum Landroid/icu/text/SpoofChecker$RestrictionLevel;
.super Ljava/lang/Enum;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RestrictionLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/SpoofChecker$RestrictionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 154
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@7
    const-string/jumbo v1, "ASCII"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    #@d
    .line 159
    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@f
    .line 160
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@11
    const-string/jumbo v1, "SINGLE_SCRIPT_RESTRICTIVE"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    #@17
    .line 165
    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@19
    .line 166
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@1b
    const-string/jumbo v1, "HIGHLY_RESTRICTIVE"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    #@21
    .line 173
    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@23
    .line 174
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@25
    const-string/jumbo v1, "MODERATELY_RESTRICTIVE"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 179
    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2d
    .line 180
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2f
    const-string/jumbo v1, "MINIMALLY_RESTRICTIVE"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    #@35
    .line 186
    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@37
    .line 187
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@39
    const-string/jumbo v1, "UNRESTRICTIVE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    #@40
    .line 192
    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@42
    .line 153
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@45
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->$VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    const-class v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1

    #@0
    .prologue
    .line 153
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->$VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2
    return-object v0
.end method
