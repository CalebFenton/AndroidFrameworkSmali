.class public final Landroid/content/pm/InstallationFile;
.super Ljava/lang/Object;
.source "InstallationFile.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mParcel:Landroid/content/pm/InstallationFileParcel;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;J[B[B)V
    .registers 8
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lengthBytes"    # J
    .param p5, "metadata"    # [B
    .param p6, "signature"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/content/pm/InstallationFileParcel;

    invoke-direct {v0}, Landroid/content/pm/InstallationFileParcel;-><init>()V

    iput-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    .line 43
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput p1, v0, Landroid/content/pm/InstallationFileParcel;->location:I

    .line 44
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-object p2, v0, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-wide p3, v0, Landroid/content/pm/InstallationFileParcel;->size:J

    .line 46
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-object p5, v0, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    .line 47
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-object p6, v0, Landroid/content/pm/InstallationFileParcel;->signature:[B

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getData()Landroid/content/pm/InstallationFileParcel;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    return-object v0
.end method

.method public whitelist getLengthBytes()J
    .registers 3

    .line 75
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-wide v0, v0, Landroid/content/pm/InstallationFileParcel;->size:J

    return-wide v0
.end method

.method public whitelist getLocation()I
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget v0, v0, Landroid/content/pm/InstallationFileParcel;->location:I

    return v0
.end method

.method public whitelist getMetadata()[B
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-object v0, v0, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-object v0, v0, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSignature()[B
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-object v0, v0, Landroid/content/pm/InstallationFileParcel;->signature:[B

    return-object v0
.end method
