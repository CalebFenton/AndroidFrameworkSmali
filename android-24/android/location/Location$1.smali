.class final Landroid/location/Location$1;
.super Ljava/lang/ThreadLocal;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/location/Location$BearingDistanceCache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/location/Location$BearingDistanceCache;
    .locals 2

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/location/Location$BearingDistanceCache;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/location/Location$BearingDistanceCache;-><init>(Landroid/location/Location$BearingDistanceCache;)V

    #@6
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/location/Location$1;->initialValue()Landroid/location/Location$BearingDistanceCache;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
