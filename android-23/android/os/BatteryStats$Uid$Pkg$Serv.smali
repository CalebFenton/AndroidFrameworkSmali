.class public abstract Landroid/os/BatteryStats$Uid$Pkg$Serv;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Serv"
.end annotation


# instance fields
.field final synthetic this$2:Landroid/os/BatteryStats$Uid$Pkg;


# direct methods
.method public constructor <init>(Landroid/os/BatteryStats$Uid$Pkg;)V
    .locals 0
    .param p1, "this$2"    # Landroid/os/BatteryStats$Uid$Pkg;

    #@0
    .prologue
    .line 579
    iput-object p1, p0, Landroid/os/BatteryStats$Uid$Pkg$Serv;->this$2:Landroid/os/BatteryStats$Uid$Pkg;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public abstract getLaunches(I)I
.end method

.method public abstract getStartTime(JI)J
.end method

.method public abstract getStarts(I)I
.end method
