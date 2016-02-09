.class public final enum Landroid/telephony/TelephonyManager$MultiSimVariants;
.super Ljava/lang/Enum;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/TelephonyManager$MultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 102
    new-instance v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@6
    const-string/jumbo v1, "DSDS"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@e
    .line 103
    new-instance v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@10
    const-string/jumbo v1, "DSDA"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@18
    .line 104
    new-instance v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@1a
    const-string/jumbo v1, "TSTS"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@22
    .line 105
    new-instance v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@24
    const-string/jumbo v1, "UNKNOWN"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@2c
    .line 101
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@2f
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    const-class v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 1

    #@0
    .prologue
    .line 101
    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@2
    return-object v0
.end method
