.class public final enum Landroid/icu/impl/TimeZoneGenericNames$Pattern;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames$Pattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;


# instance fields
.field _defaultVal:Ljava/lang/String;

.field _key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 80
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@4
    const-string/jumbo v1, "REGION_FORMAT"

    #@7
    .line 81
    const-string/jumbo v2, "regionFormat"

    #@a
    const-string/jumbo v3, "({0})"

    #@d
    .line 80
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@10
    .line 81
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@12
    .line 83
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@14
    const-string/jumbo v1, "FALLBACK_FORMAT"

    #@17
    .line 88
    const-string/jumbo v2, "fallbackFormat"

    #@1a
    const-string/jumbo v3, "{1} ({0})"

    #@1d
    .line 83
    invoke-direct {v0, v1, v5, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@20
    .line 88
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@22
    .line 79
    const/4 v0, 0x2

    #@23
    new-array v0, v0, [Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@25
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@27
    aput-object v1, v0, v4

    #@29
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@2b
    aput-object v1, v0, v5

    #@2d
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@2f
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultVal"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 94
    iput-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    #@5
    .line 95
    iput-object p4, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    #@7
    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    const-class v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .locals 1

    #@0
    .prologue
    .line 79
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@2
    return-object v0
.end method


# virtual methods
.method defaultValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method key()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    #@2
    return-object v0
.end method
