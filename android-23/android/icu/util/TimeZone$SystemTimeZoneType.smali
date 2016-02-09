.class public final enum Landroid/icu/util/TimeZone$SystemTimeZoneType;
.super Ljava/lang/Enum;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemTimeZoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;


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
    .line 265
    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@5
    const-string/jumbo v1, "ANY"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    #@b
    .line 270
    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@d
    .line 272
    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@f
    const-string/jumbo v1, "CANONICAL"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    #@15
    .line 277
    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@17
    .line 279
    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@19
    const-string/jumbo v1, "CANONICAL_LOCATION"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 284
    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@21
    .line 264
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@24
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->$VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    const-class v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .locals 1

    #@0
    .prologue
    .line 264
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->$VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@2
    return-object v0
.end method
