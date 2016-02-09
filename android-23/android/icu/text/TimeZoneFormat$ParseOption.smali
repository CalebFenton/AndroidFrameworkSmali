.class public final enum Landroid/icu/text/TimeZoneFormat$ParseOption;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneFormat$ParseOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 307
    new-instance v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@4
    const-string/jumbo v1, "ALL_STYLES"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    #@a
    .line 313
    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@c
    .line 314
    new-instance v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@e
    const-string/jumbo v1, "TZ_DATABASE_ABBREVIATIONS"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    #@14
    .line 322
    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@16
    .line 306
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@19
    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$ParseOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 306
    const-class v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$ParseOption;
    .locals 1

    #@0
    .prologue
    .line 306
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

    #@2
    return-object v0
.end method
