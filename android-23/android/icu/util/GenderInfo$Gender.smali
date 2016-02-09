.class public final enum Landroid/icu/util/GenderInfo$Gender;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/GenderInfo$Gender;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/GenderInfo$Gender;

.field public static final enum FEMALE:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MALE:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum OTHER:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


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
    .line 38
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    #@5
    const-string/jumbo v1, "MALE"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    #@b
    .line 43
    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    #@d
    .line 44
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    #@f
    const-string/jumbo v1, "FEMALE"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    #@15
    .line 49
    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    #@17
    .line 50
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    #@19
    const-string/jumbo v1, "OTHER"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 55
    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@21
    .line 37
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/util/GenderInfo$Gender;

    #@24
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->$VALUES:[Landroid/icu/util/GenderInfo$Gender;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/GenderInfo$Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    const-class v0, Landroid/icu/util/GenderInfo$Gender;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/GenderInfo$Gender;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/GenderInfo$Gender;
    .locals 1

    #@0
    .prologue
    .line 37
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->$VALUES:[Landroid/icu/util/GenderInfo$Gender;

    #@2
    return-object v0
.end method
