.class public final enum Landroid/icu/impl/ICUResourceBundle$OpenType;
.super Ljava/lang/Enum;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/ICUResourceBundle$OpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;


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
    .line 1049
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@5
    const-string/jumbo v1, "LOCALE_DEFAULT_ROOT"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    #@b
    .line 1057
    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@d
    .line 1058
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@f
    const-string/jumbo v1, "LOCALE_ROOT"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    #@15
    .line 1070
    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@17
    .line 1071
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@19
    const-string/jumbo v1, "DIRECT"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 1077
    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@21
    .line 1049
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@24
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1049
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle$OpenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1049
    const-class v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/ICUResourceBundle$OpenType;
    .locals 1

    #@0
    .prologue
    .line 1049
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@2
    return-object v0
.end method
