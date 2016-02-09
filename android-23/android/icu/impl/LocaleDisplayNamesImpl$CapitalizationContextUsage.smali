.class final enum Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
.super Ljava/lang/Enum;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CapitalizationContextUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;


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
    .line 57
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@7
    const-string/jumbo v1, "LANGUAGE"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@f
    .line 58
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@11
    const-string/jumbo v1, "SCRIPT"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@19
    .line 59
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@1b
    const-string/jumbo v1, "TERRITORY"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@23
    .line 60
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@25
    const-string/jumbo v1, "VARIANT"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2d
    .line 61
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2f
    const-string/jumbo v1, "KEY"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@37
    .line 62
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@39
    const-string/jumbo v1, "KEYVALUE"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@42
    .line 56
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@45
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    const-class v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .locals 1

    #@0
    .prologue
    .line 56
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2
    return-object v0
.end method
