.class public final enum Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenericNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;


# instance fields
.field _fallbackTypeOf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 56
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@5
    const-string/jumbo v1, "LOCATION"

    #@8
    new-array v2, v6, [Ljava/lang/String;

    #@a
    const-string/jumbo v3, "LONG"

    #@d
    aput-object v3, v2, v4

    #@f
    const-string/jumbo v3, "SHORT"

    #@12
    aput-object v3, v2, v5

    #@14
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    #@17
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@19
    .line 57
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@1b
    const-string/jumbo v1, "LONG"

    #@1e
    new-array v2, v4, [Ljava/lang/String;

    #@20
    invoke-direct {v0, v1, v5, v2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    #@23
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@25
    .line 58
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@27
    const-string/jumbo v1, "SHORT"

    #@2a
    new-array v2, v4, [Ljava/lang/String;

    #@2c
    invoke-direct {v0, v1, v6, v2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    #@2f
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@31
    .line 55
    const/4 v0, 0x3

    #@32
    new-array v0, v0, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@34
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@36
    aput-object v1, v0, v4

    #@38
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@3a
    aput-object v1, v0, v5

    #@3c
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@3e
    aput-object v1, v0, v6

    #@40
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@42
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p3, "fallbackTypeOf"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 62
    iput-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    #@5
    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    const-class v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    #@0
    .prologue
    .line 55
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@2
    return-object v0
.end method


# virtual methods
.method public isFallbackTypeOf(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)Z
    .locals 7
    .param p1, "type"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 66
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->toString()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 67
    .local v1, "typeStr":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    #@7
    array-length v5, v4

    #@8
    move v2, v3

    #@9
    :goto_0
    if-ge v2, v5, :cond_1

    #@b
    aget-object v0, v4, v2

    #@d
    .line 68
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 69
    const/4 v2, 0x1

    #@14
    return v2

    #@15
    .line 67
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 72
    .end local v0    # "t":Ljava/lang/String;
    :cond_1
    return v3
.end method
