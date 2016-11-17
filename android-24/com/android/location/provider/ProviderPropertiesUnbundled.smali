.class public final Lcom/android/location/provider/ProviderPropertiesUnbundled;
.super Ljava/lang/Object;
.source "ProviderPropertiesUnbundled.java"


# instance fields
.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/ProviderProperties;)V
    .locals 0
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@5
    .line 40
    return-void
.end method

.method public static create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;
    .locals 11
    .param p0, "requiresNetwork"    # Z
    .param p1, "requiresSatellite"    # Z
    .param p2, "requiresCell"    # Z
    .param p3, "hasMonetaryCost"    # Z
    .param p4, "supportsAltitude"    # Z
    .param p5, "supportsSpeed"    # Z
    .param p6, "supportsBearing"    # Z
    .param p7, "powerRequirement"    # I
    .param p8, "accuracy"    # I

    #@0
    .prologue
    .line 35
    new-instance v10, Lcom/android/location/provider/ProviderPropertiesUnbundled;

    #@2
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    #@4
    move v1, p0

    #@5
    move v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    move/from16 v6, p5

    #@b
    move/from16 v7, p6

    #@d
    move/from16 v8, p7

    #@f
    move/from16 v9, p8

    #@11
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    #@14
    invoke-direct {v10, v0}, Lcom/android/location/provider/ProviderPropertiesUnbundled;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    #@17
    return-object v10
.end method


# virtual methods
.method public getProviderProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/location/provider/ProviderPropertiesUnbundled;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/location/ProviderProperties;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
