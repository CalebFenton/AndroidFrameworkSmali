.class final enum Landroid/icu/text/TimeZoneFormat$OffsetFields;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OffsetFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneFormat$OffsetFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;


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
    .line 1705
    new-instance v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@5
    const-string/jumbo v1, "H"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@d
    new-instance v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@f
    const-string/jumbo v1, "HM"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@17
    new-instance v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@19
    const-string/jumbo v1, "HMS"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@21
    .line 1704
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@24
    sget-object v1, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1704
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1704
    const-class v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .locals 1

    #@0
    .prologue
    .line 1704
    sget-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Landroid/icu/text/TimeZoneFormat$OffsetFields;

    #@2
    return-object v0
.end method
