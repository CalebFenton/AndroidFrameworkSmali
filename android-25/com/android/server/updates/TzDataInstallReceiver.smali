.class public Lcom/android/server/updates/TzDataInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "TzDataInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TZDataInstallReceiver"

.field private static final TZ_DATA_DIR:Ljava/io/File;

.field private static final UPDATE_CONTENT_FILE_NAME:Ljava/lang/String; = "tzdata_bundle.zip"

.field private static final UPDATE_DIR_NAME:Ljava/lang/String;

.field private static final UPDATE_METADATA_DIR_NAME:Ljava/lang/String; = "metadata/"

.field private static final UPDATE_VERSION_FILE_NAME:Ljava/lang/String; = "version"


# instance fields
.field private final installer:Llibcore/tzdata/update/TzDataBundleInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/data/misc/zoneinfo"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    #@a
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    sget-object v1, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    #@11
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, "/updates/"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->UPDATE_DIR_NAME:Ljava/lang/String;

    #@26
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 41
    sget-object v0, Lcom/android/server/updates/TzDataInstallReceiver;->UPDATE_DIR_NAME:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "tzdata_bundle.zip"

    #@5
    const-string/jumbo v2, "metadata/"

    #@8
    .line 42
    const-string/jumbo v3, "version"

    #@b
    .line 41
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 43
    new-instance v0, Llibcore/tzdata/update/TzDataBundleInstaller;

    #@10
    const-string/jumbo v1, "TZDataInstallReceiver"

    #@13
    sget-object v2, Lcom/android/server/updates/TzDataInstallReceiver;->TZ_DATA_DIR:Ljava/io/File;

    #@15
    invoke-direct {v0, v1, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;-><init>(Ljava/lang/String;Ljava/io/File;)V

    #@18
    iput-object v0, p0, Lcom/android/server/updates/TzDataInstallReceiver;->installer:Llibcore/tzdata/update/TzDataBundleInstaller;

    #@1a
    .line 40
    return-void
.end method


# virtual methods
.method protected install([BI)V
    .locals 4
    .param p1, "content"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/server/updates/TzDataInstallReceiver;->installer:Llibcore/tzdata/update/TzDataBundleInstaller;

    #@2
    invoke-virtual {v1, p1}, Llibcore/tzdata/update/TzDataBundleInstaller;->install([B)Z

    #@5
    move-result v0

    #@6
    .line 49
    .local v0, "valid":Z
    const-string/jumbo v1, "TZDataInstallReceiver"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Timezone data install valid for this device: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    #@23
    .line 47
    return-void
.end method
