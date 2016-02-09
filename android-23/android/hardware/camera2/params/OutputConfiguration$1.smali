.class final Landroid/hardware/camera2/params/OutputConfiguration$1;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/OutputConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/camera2/params/OutputConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 135
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v1, p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 136
    .local v1, "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    return-object v1

    #@8
    .line 137
    .end local v1    # "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    :catch_0
    move-exception v0

    #@9
    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OutputConfiguration"

    #@c
    const-string/jumbo v3, "Exception creating OutputConfiguration from parcel"

    #@f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 139
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 133
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/OutputConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 145
    new-array v0, p1, [Landroid/hardware/camera2/params/OutputConfiguration;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration$1;->newArray(I)[Landroid/hardware/camera2/params/OutputConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
