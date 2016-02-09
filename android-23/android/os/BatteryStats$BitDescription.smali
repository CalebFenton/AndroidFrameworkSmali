.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final mask:I

.field public final name:Ljava/lang/String;

.field public final shift:I

.field public final shortName:Ljava/lang/String;

.field public final shortValues:[Ljava/lang/String;

.field public final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "shift"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "shortName"    # Ljava/lang/String;
    .param p5, "values"    # [Ljava/lang/String;
    .param p6, "shortValues"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1511
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@5
    .line 1512
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@7
    .line 1513
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@9
    .line 1514
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@b
    .line 1515
    iput-object p5, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    #@d
    .line 1516
    iput-object p6, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    #@f
    .line 1510
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1501
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    #@6
    .line 1502
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    #@9
    .line 1503
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    #@b
    .line 1504
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    #@d
    .line 1505
    iput-object v1, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    #@f
    .line 1506
    iput-object v1, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    #@11
    .line 1500
    return-void
.end method
