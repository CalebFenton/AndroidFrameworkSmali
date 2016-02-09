.class public final enum Landroid/icu/text/TimeZoneFormat$TimeType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneFormat$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;


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
    .line 285
    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    #@5
    const-string/jumbo v1, "UNKNOWN"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    #@b
    .line 289
    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@d
    .line 290
    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    #@f
    const-string/jumbo v1, "STANDARD"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    #@15
    .line 294
    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@17
    .line 295
    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    #@19
    const-string/jumbo v1, "DAYLIGHT"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 299
    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@21
    .line 284
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$TimeType;

    #@24
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    const-class v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    #@0
    .prologue
    .line 284
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

    #@2
    return-object v0
.end method
