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
.field public final greylist-max-o mask:I

.field public final greylist-max-o name:Ljava/lang/String;

.field public final greylist-max-o shift:I

.field public final greylist-max-o shortName:Ljava/lang/String;

.field public final greylist-max-o shortValues:[Ljava/lang/String;

.field public final greylist-max-o values:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "mask"    # I
    .param p2, "shift"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "shortName"    # Ljava/lang/String;
    .param p5, "values"    # [Ljava/lang/String;
    .param p6, "shortValues"    # [Ljava/lang/String;

    .line 2427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2428
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 2429
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 2430
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 2431
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 2432
    iput-object p5, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 2433
    iput-object p6, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 2434
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;

    .line 2417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2418
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 2419
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 2420
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 2421
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 2422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 2423
    iput-object v0, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 2424
    return-void
.end method
