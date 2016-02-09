.class public final enum Landroid/icu/text/TimeZoneNames$NameType;
.super Ljava/lang/Enum;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneNames$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;


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
    .line 87
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@7
    const-string/jumbo v1, "LONG_GENERIC"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    #@d
    .line 92
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@f
    .line 93
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@11
    const-string/jumbo v1, "LONG_STANDARD"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    #@17
    .line 98
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@19
    .line 99
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@1b
    const-string/jumbo v1, "LONG_DAYLIGHT"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    #@21
    .line 104
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@23
    .line 105
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@25
    const-string/jumbo v1, "SHORT_GENERIC"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 110
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@2d
    .line 111
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@2f
    const-string/jumbo v1, "SHORT_STANDARD"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    #@35
    .line 116
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@37
    .line 117
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@39
    const-string/jumbo v1, "SHORT_DAYLIGHT"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    #@40
    .line 122
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@42
    .line 123
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@44
    const-string/jumbo v1, "EXEMPLAR_LOCATION"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 128
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@4d
    .line 86
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    #@50
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    const-class v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/TimeZoneNames$NameType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    #@0
    .prologue
    .line 86
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    #@2
    return-object v0
.end method
