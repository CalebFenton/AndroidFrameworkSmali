.class public final Landroid/health/connect/datatypes/Device$Builder;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mManufacturer:Ljava/lang/String;

.field private blacklist mModel:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/datatypes/Device$Builder;->mType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/Device;
    .registers 6

    .line 76
    new-instance v0, Landroid/health/connect/datatypes/Device;

    iget-object v1, p0, Landroid/health/connect/datatypes/Device$Builder;->mManufacturer:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/datatypes/Device$Builder;->mModel:Ljava/lang/String;

    iget v3, p0, Landroid/health/connect/datatypes/Device$Builder;->mType:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/Device;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/health/connect/datatypes/Device-IA;)V

    return-object v0
.end method

.method public whitelist setManufacturer(Ljava/lang/String;)Landroid/health/connect/datatypes/Device$Builder;
    .registers 2
    .param p1, "manufacturer"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Landroid/health/connect/datatypes/Device$Builder;->mManufacturer:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public whitelist setModel(Ljava/lang/String;)Landroid/health/connect/datatypes/Device$Builder;
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroid/health/connect/datatypes/Device$Builder;->mModel:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public whitelist setType(I)Landroid/health/connect/datatypes/Device$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 69
    iput p1, p0, Landroid/health/connect/datatypes/Device$Builder;->mType:I

    .line 70
    return-object p0
.end method
