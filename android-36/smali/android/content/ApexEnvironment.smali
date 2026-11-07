.class public Landroid/content/ApexEnvironment;
.super Ljava/lang/Object;
.source "ApexEnvironment.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist APEX_DATA:Ljava/lang/String; = "apexdata"


# instance fields
.field private final blacklist mApexModuleName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "apexModuleName"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/content/ApexEnvironment;->mApexModuleName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static whitelist getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;
    .registers 2
    .param p0, "apexModuleName"    # Ljava/lang/String;

    .line 48
    const-string v0, "apexModuleName cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/content/ApexEnvironment;

    invoke-direct {v0, p0}, Landroid/content/ApexEnvironment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCredentialProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 94
    nop

    .line 95
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "apexdata"

    iget-object v2, p0, Landroid/content/ApexEnvironment;->mApexModuleName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceProtectedDataDir()Ljava/io/File;
    .registers 4

    .line 68
    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "apexdata"

    iget-object v2, p0, Landroid/content/ApexEnvironment;->mApexModuleName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 80
    nop

    .line 81
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/os/Environment;->getDataMiscDeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "apexdata"

    iget-object v2, p0, Landroid/content/ApexEnvironment;->mApexModuleName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
