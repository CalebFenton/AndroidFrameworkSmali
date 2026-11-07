.class public enum Landroid/util/DataUnit;
.super Ljava/lang/Enum;
.source "DataUnit.java"


# annotations
.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Landroid/util/DataUnit$1;,
        Landroid/util/DataUnit$2;,
        Landroid/util/DataUnit$3;,
        Landroid/util/DataUnit$4;,
        Landroid/util/DataUnit$5;,
        Landroid/util/DataUnit$6;,
        Landroid/util/DataUnit$7;,
        Landroid/util/DataUnit$8;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/DataUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/DataUnit;

.field public static final enum greylist-max-o GIBIBYTES:Landroid/util/DataUnit;

.field public static final enum greylist-max-o GIGABYTES:Landroid/util/DataUnit;

.field public static final enum greylist-max-o KIBIBYTES:Landroid/util/DataUnit;

.field public static final enum greylist-max-o KILOBYTES:Landroid/util/DataUnit;

.field public static final enum greylist-max-o MEBIBYTES:Landroid/util/DataUnit;

.field public static final enum greylist-max-o MEGABYTES:Landroid/util/DataUnit;

.field public static final enum blacklist TEBIBYTES:Landroid/util/DataUnit;

.field public static final enum blacklist TERABYTES:Landroid/util/DataUnit;


# direct methods
.method private static synthetic blacklist $values()[Landroid/util/DataUnit;
    .registers 8

    .line 35
    sget-object v0, Landroid/util/DataUnit;->KILOBYTES:Landroid/util/DataUnit;

    sget-object v1, Landroid/util/DataUnit;->MEGABYTES:Landroid/util/DataUnit;

    sget-object v2, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    sget-object v3, Landroid/util/DataUnit;->TERABYTES:Landroid/util/DataUnit;

    sget-object v4, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    sget-object v5, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    sget-object v6, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    sget-object v7, Landroid/util/DataUnit;->TEBIBYTES:Landroid/util/DataUnit;

    filled-new-array/range {v0 .. v7}, [Landroid/util/DataUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Landroid/util/DataUnit$1;

    const-string v1, "KILOBYTES"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$1;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->KILOBYTES:Landroid/util/DataUnit;

    .line 38
    new-instance v0, Landroid/util/DataUnit$2;

    const-string v1, "MEGABYTES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$2;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->MEGABYTES:Landroid/util/DataUnit;

    .line 39
    new-instance v0, Landroid/util/DataUnit$3;

    const-string v1, "GIGABYTES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$3;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    .line 40
    new-instance v0, Landroid/util/DataUnit$4;

    const-string v1, "TERABYTES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$4;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->TERABYTES:Landroid/util/DataUnit;

    .line 41
    new-instance v0, Landroid/util/DataUnit$5;

    const-string v1, "KIBIBYTES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$5;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    .line 42
    new-instance v0, Landroid/util/DataUnit$6;

    const-string v1, "MEBIBYTES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$6;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 43
    new-instance v0, Landroid/util/DataUnit$7;

    const-string v1, "GIBIBYTES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$7;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    .line 44
    new-instance v0, Landroid/util/DataUnit$8;

    const-string v1, "TEBIBYTES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/util/DataUnit$8;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    sput-object v0, Landroid/util/DataUnit;->TEBIBYTES:Landroid/util/DataUnit;

    .line 35
    invoke-static {}, Landroid/util/DataUnit;->$values()[Landroid/util/DataUnit;

    move-result-object v0

    sput-object v0, Landroid/util/DataUnit;->$VALUES:[Landroid/util/DataUnit;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/util/DataUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/util/DataUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Landroid/util/DataUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/DataUnit;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/util/DataUnit;
    .registers 1

    .line 35
    sget-object v0, Landroid/util/DataUnit;->$VALUES:[Landroid/util/DataUnit;

    invoke-virtual {v0}, [Landroid/util/DataUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/DataUnit;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o toBytes(J)J
    .registers 4
    .param p1, "v"    # J

    .line 47
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
