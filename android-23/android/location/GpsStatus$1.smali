.class Landroid/location/GpsStatus$1;
.super Ljava/lang/Object;
.source "GpsStatus.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/GpsStatus;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Landroid/location/GpsStatus$1;->this$0:Landroid/location/GpsStatus;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    new-instance v0, Landroid/location/GpsStatus$SatelliteIterator;

    #@2
    iget-object v1, p0, Landroid/location/GpsStatus$1;->this$0:Landroid/location/GpsStatus;

    #@4
    iget-object v2, p0, Landroid/location/GpsStatus$1;->this$0:Landroid/location/GpsStatus;

    #@6
    invoke-static {v2}, Landroid/location/GpsStatus;->-get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Landroid/location/GpsStatus$SatelliteIterator;-><init>(Landroid/location/GpsStatus;Landroid/util/SparseArray;)V

    #@d
    return-object v0
.end method
