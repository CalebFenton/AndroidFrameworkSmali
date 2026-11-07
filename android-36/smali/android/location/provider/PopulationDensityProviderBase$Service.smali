.class final Landroid/location/provider/PopulationDensityProviderBase$Service;
.super Landroid/location/provider/IPopulationDensityProvider$Stub;
.source "PopulationDensityProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/PopulationDensityProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Service"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/provider/PopulationDensityProviderBase;


# direct methods
.method private constructor blacklist <init>(Landroid/location/provider/PopulationDensityProviderBase;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Landroid/location/provider/PopulationDensityProviderBase$Service;->this$0:Landroid/location/provider/PopulationDensityProviderBase;

    invoke-direct {p0}, Landroid/location/provider/IPopulationDensityProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/provider/PopulationDensityProviderBase;Landroid/location/provider/PopulationDensityProviderBase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/provider/PopulationDensityProviderBase$Service;-><init>(Landroid/location/provider/PopulationDensityProviderBase;)V

    return-void
.end method

.method static synthetic blacklist lambda$getCoarsenedS2Cells$1(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 135
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic blacklist lambda$getDefaultCoarseningLevel$0(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 118
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public blacklist getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V
    .registers 14
    .param p1, "latitudeDegrees"    # D
    .param p3, "longitudeDegrees"    # D
    .param p5, "numAdditionalCells"    # I
    .param p6, "callback"    # Landroid/location/provider/IS2CellIdsCallback;

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase$Service;->this$0:Landroid/location/provider/PopulationDensityProviderBase;

    new-instance v6, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2CellIdsCallback;

    invoke-direct {v6, p6}, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2CellIdsCallback;-><init>(Landroid/location/provider/IS2CellIdsCallback;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_11

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "latitudeDegrees":D
    .end local p3    # "longitudeDegrees":D
    .end local p5    # "numAdditionalCells":I
    .local v1, "latitudeDegrees":D
    .local v3, "longitudeDegrees":D
    .local v5, "numAdditionalCells":I
    :try_start_a
    invoke-virtual/range {v0 .. v6}, Landroid/location/provider/PopulationDensityProviderBase;->onGetCoarsenedS2Cells(DDILandroid/os/OutcomeReceiver;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_e

    .line 137
    goto :goto_2e

    .line 129
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "latitudeDegrees":D
    .end local v3    # "longitudeDegrees":D
    .end local v5    # "numAdditionalCells":I
    .restart local p1    # "latitudeDegrees":D
    .restart local p3    # "longitudeDegrees":D
    .restart local p5    # "numAdditionalCells":I
    :catch_11
    move-exception v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object p1, v0

    .line 131
    .end local p3    # "longitudeDegrees":D
    .end local p5    # "numAdditionalCells":I
    .restart local v1    # "latitudeDegrees":D
    .restart local v3    # "longitudeDegrees":D
    .restart local v5    # "numAdditionalCells":I
    .local p1, "e":Ljava/lang/RuntimeException;
    :goto_16
    iget-object p2, p0, Landroid/location/provider/PopulationDensityProviderBase$Service;->this$0:Landroid/location/provider/PopulationDensityProviderBase;

    iget-object p2, p2, Landroid/location/provider/PopulationDensityProviderBase;->mTag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Landroid/location/provider/PopulationDensityProviderBase$Service$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Landroid/location/provider/PopulationDensityProviderBase$Service$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    .line 133
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    .end local p1    # "e":Ljava/lang/RuntimeException;
    :goto_2e
    return-void
.end method

.method public blacklist getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/location/provider/IS2LevelCallback;

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase$Service;->this$0:Landroid/location/provider/PopulationDensityProviderBase;

    new-instance v1, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;

    invoke-direct {v1, p1}, Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;-><init>(Landroid/location/provider/IS2LevelCallback;)V

    invoke-virtual {v0, v1}, Landroid/location/provider/PopulationDensityProviderBase;->onGetDefaultCoarseningLevel(Landroid/os/OutcomeReceiver;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 120
    goto :goto_24

    .line 112
    :catch_b
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/PopulationDensityProviderBase$Service;->this$0:Landroid/location/provider/PopulationDensityProviderBase;

    iget-object v1, v1, Landroid/location/provider/PopulationDensityProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/PopulationDensityProviderBase$Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/location/provider/PopulationDensityProviderBase$Service$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method
