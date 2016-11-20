.class final Lcom/google/android/maps/InternalR$array;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "array"
.end annotation


# static fields
.field public static final maps_starting_lat_lng:I

.field public static final maps_starting_zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "maps_starting_lat_lng"

    #@3
    invoke-static {v0}, Lcom/google/android/maps/InternalR$array;->get(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Lcom/google/android/maps/InternalR$array;->maps_starting_lat_lng:I

    #@9
    .line 90
    const-string/jumbo v0, "maps_starting_zoom"

    #@c
    invoke-static {v0}, Lcom/google/android/maps/InternalR$array;->get(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Lcom/google/android/maps/InternalR$array;->maps_starting_zoom:I

    #@12
    .line 84
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static get(Ljava/lang/String;)I
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    const-class v0, Lcom/android/internal/R$array;

    #@2
    invoke-static {v0, p0}, Lcom/google/android/maps/InternalR;->-wrap0(Ljava/lang/Class;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
