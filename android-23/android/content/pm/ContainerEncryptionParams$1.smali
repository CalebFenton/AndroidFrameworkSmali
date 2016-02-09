.class final Landroid/content/pm/ContainerEncryptionParams$1;
.super Ljava/lang/Object;
.source "ContainerEncryptionParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ContainerEncryptionParams;
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
        "Landroid/content/pm/ContainerEncryptionParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ContainerEncryptionParams;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 373
    :try_start_0
    new-instance v1, Landroid/content/pm/ContainerEncryptionParams;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v1, p1, v2}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    return-object v1

    #@8
    .line 374
    :catch_0
    move-exception v0

    #@9
    .line 375
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string/jumbo v1, "ContainerEncryptionParams"

    #@c
    const-string/jumbo v2, "Invalid algorithm parameters specified"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 376
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 371
    invoke-virtual {p0, p1}, Landroid/content/pm/ContainerEncryptionParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ContainerEncryptionParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ContainerEncryptionParams;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 381
    new-array v0, p1, [Landroid/content/pm/ContainerEncryptionParams;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 380
    invoke-virtual {p0, p1}, Landroid/content/pm/ContainerEncryptionParams$1;->newArray(I)[Landroid/content/pm/ContainerEncryptionParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
