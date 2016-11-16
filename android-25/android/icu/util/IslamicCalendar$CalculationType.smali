.class public final enum Landroid/icu/util/IslamicCalendar$CalculationType;
.super Ljava/lang/Enum;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/IslamicCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalculationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/IslamicCalendar$CalculationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;


# instance fields
.field private bcpType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 882
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    #@6
    const-string/jumbo v1, "ISLAMIC"

    #@9
    .line 885
    const-string/jumbo v2, "islamic"

    #@c
    .line 882
    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@f
    .line 885
    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@11
    .line 886
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    #@13
    const-string/jumbo v1, "ISLAMIC_CIVIL"

    #@16
    .line 890
    const-string/jumbo v2, "islamic-civil"

    #@19
    .line 886
    invoke-direct {v0, v1, v4, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1c
    .line 890
    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@1e
    .line 891
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    #@20
    const-string/jumbo v1, "ISLAMIC_UMALQURA"

    #@23
    .line 894
    const-string/jumbo v2, "islamic-umalqura"

    #@26
    .line 891
    invoke-direct {v0, v1, v5, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@29
    .line 894
    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2b
    .line 895
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2d
    const-string/jumbo v1, "ISLAMIC_TBLA"

    #@30
    .line 899
    const-string/jumbo v2, "islamic-tbla"

    #@33
    .line 895
    invoke-direct {v0, v1, v6, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@36
    .line 899
    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@38
    .line 881
    const/4 v0, 0x4

    #@39
    new-array v0, v0, [Landroid/icu/util/IslamicCalendar$CalculationType;

    #@3b
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@3d
    aput-object v1, v0, v3

    #@3f
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@41
    aput-object v1, v0, v4

    #@43
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@45
    aput-object v1, v0, v5

    #@47
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@49
    aput-object v1, v0, v6

    #@4b
    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "bcpType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 903
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 904
    iput-object p3, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    #@5
    .line 903
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 881
    const-class v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1

    #@0
    .prologue
    .line 881
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2
    return-object v0
.end method


# virtual methods
.method bcpType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    #@2
    return-object v0
.end method
